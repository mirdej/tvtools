#!/usr/bin/python3
## --------------------------------------------------------------------------------------------------------

##                  HYPERDECK
##                  Blackmagic Hyperdeck Controller for SchulTV
##                  (cc) 2020 Michael Egger - me@anyma.ch
##
## --------------------------------------------------------------------------------------------------------

import pygame
from telnetlib import Telnet
import sys
import RPi.GPIO as GPIO
import board
import neopixel
import requests 
from flask import Flask
 
app = Flask(__name__)
@app.route('/start_talk')
def start_talk():
    payload = {'on': '1'}
    try:
        r = requests.get('http://'+SWITCHER_TCP_ADDRESS+'/dsk1', params=payload, timeout=0.1)
        print(r.text)
    except:    
        print ("No connection to switcher")

    tn = Telnet(PLAYER_TCP_ADDRESS, PLAYER_TCP_PORT)
    tn.write(b'goto: clip: id 1' + b'\r\n')
    tn.write(b'goto: clip: start' + b'\r\n')
    tn.write(b'play: single clip: true' + b'\r\n')
    tn.write(b'quit' + b'\r\n')

    return "Started"

@app.route('/end_talk')
def end_talk():
    payload = {'on': '1'}
    try:
        r = requests.get('http://'+SWITCHER_TCP_ADDRESS+'/dsk1', params=payload, timeout=0.1)
        print(r.text)
    except:    
        print ("No connection to switcher")

    tn = Telnet(PLAYER_TCP_ADDRESS, PLAYER_TCP_PORT)
    tn.write(b'goto: clip: id 2' + b'\r\n')
    tn.write(b'goto: clip: start' + b'\r\n')
    tn.write(b'play: single clip: true' + b'\r\n')
    tn.write(b'quit' + b'\r\n')

    return "Ending"
 
app.run(host='0.0.0.0', port= 8090)


ON_AIR = 26
PLAY = 19
END = 13
BEGIN = 6
DOWN    = 5
UP  = 0
PIX = 11
color_fill = (30,20,5)
color_highlight = (150,150,150)

buttons = [UP, DOWN, BEGIN, END, PLAY, ON_AIR]
pixel_idxs = [1,4,0,5,2,3]


last_button_state = []

pixels = neopixel.NeoPixel(board.D18, 6)
pixels.fill(color_fill)

white = (255, 255, 255) 
green = (0, 90, 0) 
bg = (0, 0, 30)
red = (90,0,0)
sel_color = ( 50, 50 , 100)
selected_clip = 0;
clip_count = 0
elapsed_time = 0
clips  = []
on_air = False

screen_width = 700
screen_border = 20
PLAYER_TCP_ADDRESS = "192.168.0.242"
#PLAYER_TCP_ADDRESS = "10.0.0.242"
PLAYER_TCP_PORT = 9993
SWITCHER_TCP_ADDRESS = "10.0.0.200"


def tc_to_secs(tc):
    #print (tc)
    try:
        fields = tc.split(":")
        secs = int(fields[0])*3600 + int(fields[1])*60 + int(fields[2])
        return secs
    except:
        return 0
        
def secs_to_tc(s):
    string = ""
    mins = s / 60;
    
    mm = str(int(mins))

    s = s % 60;
    ss = str(s)
    if s < 10:
        ss = "0"+ss
        
    string =  mm + ":" + ss
    return string
    
    
class Clip:
    def __init__(self,id = 0, name = "Untitled", tc="00:00:00:00"):
        self.id = id
        self.name = name.split(".")[0]
        self.tc = tc
        self.duration = tc_to_secs(tc)
    def post_info(self):
        print (self.name+"->"+str(self.duration))
    def draw_line(self,selected = False):
        x = self.id*48 + 300
        if (selected):
            pygame.draw.rect(screen,sel_color,(x,60,48,screen_width))
        font = pygame.font.Font('freesansbold.ttf', 26)
        t = font.render(str(self.id), True, white)         
        t = pygame.transform.rotate(t, 90)
        screen.blit(t, (x, screen_width-screen_border))
        t = font.render(self.name, True, white)         
        t = pygame.transform.rotate(t, 90)
        t_r = t.get_rect();
        t_r.bottomleft = (x, screen_width-screen_border-60)
        screen.blit(t, t_r)
        t = font.render(self.tc, True, white)         
        t = pygame.transform.rotate(t, 90)
        screen.blit(t, (x, 80))
        pygame.draw.line(screen,(60,60,60),(x,screen_border),(x,screen_width-screen_border))
    def goto_clip(self):
        status =""
        tn = Telnet(PLAYER_TCP_ADDRESS, PLAYER_TCP_PORT)
        string = "goto: clip id: "+ str(self.id) + "\r\n"
        tn.write(string.encode('ascii'))
        print(string)
        tn.write(b'quit' + b'\r\n')
        status += tn.read_all().decode('ascii')
        #print(status)
    def draw_header(self):
        rem = self.duration - elapsed_time
        header_x = screen_border + 30
        header_y = screen_border
        if (playing):
            if (rem < 20):
                    pygame.draw.rect(screen,red,(header_x,header_y,120,screen_width))
                    pixels[2] = red
            else:
                pygame.draw.rect(screen,green,(header_x,header_y,120,screen_width))
                pixels[2] = green
        else:
            pygame.draw.rect(screen,bg,(header_x,header_y,120,screen_width))
            pixels[2] = color_fill
                
        pygame.draw.rect(screen,(60,60,60),(header_x,header_y,120,screen_width), 1)
        font = pygame.font.Font('freesansbold.ttf', 36)
        t = font.render(self.name, True, white)         
        t = pygame.transform.rotate(t, 90)
        t_r = t.get_rect();
        t_r.bottomleft = (header_x+20, header_y+screen_width-8)
        screen.blit(t, t_r)
        font = pygame.font.Font('freesansbold.ttf', 120)
        t = font.render(secs_to_tc(rem), True, white)         
        t = pygame.transform.rotate(t, 90)
        t_r = t.get_rect();
        t_r.topleft = (header_x, header_y)
        screen.blit(t, t_r)
        pygame.display.update()


## --------------------------------------------------------------------------------------------------------
def add_clip(str):
    global clips,clip_idx
    clip_idx = clip_idx + 1
    items = str.split(" ")
    id = int(items[0][0:-1])
#    print(id)
    name = items[1]
    dur = items[3]
    x = Clip(id,name,dur)
    clips.append(x)
    
## --------------------------------------------------------------------------------------------------------
def read_files():
    global clips,clip_idx,clip_count
    status=""
    tn = Telnet(PLAYER_TCP_ADDRESS, PLAYER_TCP_PORT)

    tn.write(b'clips get' + b'\r\n')
    tn.write(b'quit' + b'\r\n')
    status += tn.read_all().decode('ascii')

    lines = status.split('\r\n')
    clip_idx = 0;

    for line in lines:
        if clip_count:
            if (clip_idx < clip_count):
                add_clip(line)
        if "clip count" in line:
            clip_count = int(line.split(":")[1])
        

## --------------------------------------------------------------------------------------------------------

def check_id(id):
    global selected_clip
    compa = selected_clip
    
    idx = 0
    for clip in clips:
        if (clip.id == id):
            selected_clip = idx
        idx = idx + 1

## --------------------------------------------------------------------------------------------------------

def redraw():
    global clips, selected_clip,last_drawn_select,last_redraw,time
    last_redraw = time
    screen.fill(bg)
    clips[selected_clip].draw_header()

    idx = 0
    for c in clips:
        #c.post_info()
        if (idx == selected_clip):
            c.draw_line(True)
        else:
            c.draw_line()
        idx = idx + 1
    
    pygame.display.update()
    last_drawn_select = selected_clip

## --------------------------------------------------------------------------------------------------------

def get_transport_info():
    global playing,elapsed_time,on_air
    status=""
    try:
        #r = requests.get('http://switchbox.local/dsk1')
        r = requests.get('http:/'+SWITCHER_TCP_ADDRESS+'/dsk1', timeout=0.1)
        if(r.text == "1"):
            on_air = True
            pixels[3] = red
        else:
            on_air = False
            pixels[3] = color_fill
    except:    
        print ("No connection to switcher")
    
    tn = Telnet(PLAYER_TCP_ADDRESS, PLAYER_TCP_PORT)
    tn.write(b'transport info' + b'\r\n')
    tn.write(b'quit' + b'\r\n')
    status += tn.read_all().decode('ascii')
    lines = status.split('\r\n')
 #   print(status)
    for line in lines:
        if ("status" in line):
            if ("play" in line):
                playing = True
            else:
                playing = False
        if ("display timecode:" in line):
            tc = line.split(" ")[2]
#            print(tc)
            elapsed_time = tc_to_secs(tc)
        if ("clip id:" in line):
            id = line.split(" ")[2]
            id = int(id)
            check_id(id)


## --------------------------------------------------------------------------------------------------------
def goto_start():
    status = ""
    tn = Telnet(PLAYER_TCP_ADDRESS, PLAYER_TCP_PORT)
    tn.write(b'goto: clip: start' + b'\r\n')
    tn.write(b'quit' + b'\r\n')
    status += tn.read_all().decode('ascii')
    
## --------------------------------------------------------------------------------------------------------
def goto_end():
    status = ""
    tn = Telnet(PLAYER_TCP_ADDRESS, PLAYER_TCP_PORT)
    tn.write(b'goto: clip: end' + b'\r\n')
    tn.write(b'quit' + b'\r\n')
    status += tn.read_all().decode('ascii')
    tn = Telnet(PLAYER_TCP_ADDRESS, PLAYER_TCP_PORT)
    tn.write(b'goto: timecode: -00:00:20:00' + b'\r\n')
    tn.write(b'quit' + b'\r\n')
    status += tn.read_all().decode('ascii')
    
    

## --------------------------------------------------------------------------------------------------------


def play_pause():
    global playing
    get_transport_info()
    status = ""
    tn = Telnet(PLAYER_TCP_ADDRESS, PLAYER_TCP_PORT)
    if (playing):
        tn.write(b'stop' + b'\r\n')
    else:
        tn.write(b'play: single clip: true' + b'\r\n')
    tn.write(b'quit' + b'\r\n')
    status += tn.read_all().decode('ascii')
    #print(status)


def btn_up():
    print("up")
    global selected_clip
    selected_clip = selected_clip - 1
    if (selected_clip < 0):
        selected_clip = 0
    redraw()
    clips[selected_clip].goto_clip()


def btn_down():
    print("dwn")
    global selected_clip
    selected_clip = selected_clip + 1
    if (selected_clip >= clip_count):
        selected_clip = clip_count - 1
    redraw()
    clips[selected_clip].goto_clip()

def btn_left():
    print("left")
    goto_start()
    
def btn_right():
    print("right")
    goto_end()
    
def btn_play():
    print("play")
    play_pause()
    
def btn_air():
    global on_air
    if (on_air):
        payload = {'on': '0'}
    else: 
        payload = {'on': '1'}
    try:
        r = requests.get('http://'+SWITCHER_TCP_ADDRESS+'/dsk1', params=payload, timeout=0.1)
        print(r.text)
        print("air")
    except:    
        print ("No connection to switcher")



## --------------------------------------------------------------------------------------------------------
#                                                                               INIT

print ("Init")
last_update = 0
last_redraw = 0
last_drawn_select = 0
playing = False
time = 0

GPIO.setmode(GPIO.BCM)
for btn in buttons:
    GPIO.setup(btn, GPIO.IN, pull_up_down= GPIO.PUD_UP)
    last_button_state.append(GPIO.input(btn))

print(last_button_state)

last_buttoncheck = pygame.time.get_ticks()

pygame.init()
clock = pygame.time.Clock()
screen=pygame.display.set_mode((0,0),pygame.FULLSCREEN)
pygame.mouse.set_visible(0)
clips = []
read_files()
redraw()


tn = Telnet(PLAYER_TCP_ADDRESS, PLAYER_TCP_PORT)
tn.write(b'preview: enable: false' + b'\r\n')
tn.write(b'quit' + b'\r\n')


#========================================================================================
#----------------------------------------------------------------------------------------
#                                                                               loop

while 1:   
    clock.tick(60)
    time = pygame.time.get_ticks()
    if (time - last_update > 500):
        get_transport_info()
        last_update = time
        clips[selected_clip].draw_header()
    if (time - last_redraw > 1000):
        if (selected_clip != last_drawn_select):
            redraw()
       
    if (pygame.time.get_ticks() - last_buttoncheck) > 80:
        last_buttoncheck = pygame.time.get_ticks()
        for i, btn in enumerate(buttons):
            new_state = GPIO.input(btn)
            if (last_button_state[i] != new_state) :
                last_button_state[i] = new_state
                if new_state == False:
                    pixels[pixel_idxs[i]] = color_highlight
                    if btn == UP:          btn_up()
                    if btn == DOWN:     btn_down()
                    if btn == BEGIN:     btn_left()
                    if btn == END:       btn_right()
                    if btn == PLAY:      btn_play()
                    if btn == ON_AIR:    btn_air()
                else:
                    pixels[pixel_idxs[i]] = color_fill

            
    for event in pygame.event.get():
        if event.type == pygame.KEYDOWN:
            if event.key == pygame.K_ESCAPE:
                 pygame.quit()
            if event.key == pygame.K_DOWN:
                btn_down()
            if event.key == pygame.K_UP:
                btn_up()
            if event.key == pygame.K_LEFT:
                btn_left()
            if event.key == pygame.K_RIGHT:
                btn_right()
            if event.key == pygame.K_SPACE:
                btn_play()
            if event.key == pygame.K_RETURN:
                btn_air()

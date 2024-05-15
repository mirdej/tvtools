#include "Parled.h"
#include "Easing.h"
//#include <LXESP32DMX.h>

extern uint8_t dmx_data[513];


Parled::Parled() {
    _address = 1;
    _master_level = 1.;
}

void Parled::setAddress(int a) {
    _address = a;
    if (_address > 512) _address = 512;
    if (_address < 0) _address = 0;
}

void Parled::setFadeTime(float f) {
    _fade_time = f;
    if (_fade_time > 600) _fade_time = 600;
    if (_fade_time < 0) _fade_time = 0;
}

void Parled::setMaster(float m){
    _master_level = clip(m);
}

float Parled::clip(float f) {
    if (f > 1.) f = 1.;
    if (f < 0.) f = 0.;
    return f;
}


void Parled::set_r(float v){
    _target_level_r = clip(v);
    _target_time = millis();
}

void Parled::set_g(float v){
    _target_level_g = clip(v);
    _target_time = millis();
}

void Parled::set_b(float v){
    _target_level_b = clip(v);
    _target_time = millis();
}

void Parled::startFade(float target_r,float target_g,float target_b, float time) {
    _fade_time = time;
    _target_time = millis() / 1000. + time;
    _start_time = millis() / 1000.;
    
    _start_level_r = _level_r;
    _start_level_g = _level_g;
    _start_level_b = _level_b;

    _target_level_r = clip(target_r);
    _target_level_g = clip(target_g);
    _target_level_b = clip(target_b);
}


void Parled::update(void){
    
    float now = millis() / 1000.;
    if (now < _target_time) {        
        float fract = SineEaseInOut ((now - _start_time) / (_target_time - _start_time));
       // Serial.println(fract);
        _level_r = _start_level_r + (_target_level_r - _start_level_r) * fract;
        _level_g = _start_level_g + (_target_level_g - _start_level_g) * fract;
        _level_b = _start_level_b + (_target_level_b - _start_level_b) * fract;
    } else {
        _level_r = _target_level_r;
        _level_g = _target_level_g;
        _level_b = _target_level_b;
    }    
    
    _level_r  = clip(_level_r);
    _level_g  = clip(_level_g);
    _level_b  = clip(_level_b);

    char out_level = floor(255. * _master_level * _level_r);
    dmx_data[_address] =  out_level;	
    out_level = floor(255. * _master_level * _level_g);
    dmx_data[_address + 1] =  out_level;	
    out_level = floor(255. * _master_level * _level_b);
    dmx_data[_address + 2] =  out_level;	

}

String Parled::parse(File file) {

    String s=file.readStringUntil(',');
    float f_r = clip(s.toFloat());
    s=file.readStringUntil(',');
    float f_g = clip(s.toFloat());
    s=file.readStringUntil('\n');
    float f_b = clip(s.toFloat());

    startFade(f_r,f_g,f_b,_fade_time);
    s = String(f_r)+','+String(f_g)+','+String(f_b);
    return s;
}


int Parled::dump(File f){
    f.print(_level_r,4);
    f.print(',');
    f.print(_level_g,4);
    f.print(',');
    f.print(_level_b,4);
    return 1;
}
#ifndef __PARLED_INCLUDED__
#define __PARLED_INCLUDED__

#include "Easing.h"
#include "Arduino.h"
#include <SPIFFS.h>

class Parled {
    public:
        Parled();
        void setAddress(int a);
        void setMaster(float m);
        void set_r(float v);
        void set_g(float v);
        void set_b(float v);
        void setFadeTime(float f);
        void startFade(float target_r,float target_g,float target_b, float time);
        void update(void);
        int dump(File f);
        String parse(File f);
        
    private:
        int     _address;
        float   _master_level;
        float   _target_level_r;
        float   _target_level_g;
        float   _target_level_b;
        float   _start_time;
        float   _target_time;
        float   _fade_time;

        float   _start_level_r;        
        float   _start_level_g;
        float   _start_level_b;
        
        float   _level_r;
        float   _level_g;
        float   _level_b;
        
        float clip(float f);
};

#endif
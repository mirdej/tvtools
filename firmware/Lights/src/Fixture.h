#ifndef __FIXT_INCLUDED__
#define __FIXT_INCLUDED__

#include "Easing.h"
#include "Arduino.h"
#include <SPIFFS.h>

class Fixture {
    public:
        Fixture();
        void setAddress(int a);
        void setMaster(float m);
        void setFadeTime(float f);
        void startFade(float target, float time);
        void update(void);
        int dump(File f);
        String parse(File f);
        
    private:
        int     _address;
        float   _master_level;
        float   _target_level;
        float   _start_time;
        float   _target_time;
        float   _fade_time;
        float   _start_level;
        float   _level;
};
#endif
#include "Fixture.h"
#include "Easing.h"
#include <LXESP32DMX.h>

Fixture::Fixture() {
    _address = 1;
    _master_level = 1.;
}

void Fixture::setAddress(int a) {
    _address = a;
    if (_address > 512) _address = 512;
    if (_address < 0) _address = 0;
}

void Fixture::setFadeTime(float f) {
    _fade_time = f;
    if (_fade_time > 600) _address = 600;
    if (_fade_time < 0) _fade_time = 0;
}

void Fixture::setMaster(float m){
    _master_level = m;
    if (_master_level > 1.) _master_level = 1.;
    if (_master_level < 0.) _master_level = 0.;
}
void Fixture::startFade(float target, float time) {
    _fade_time = time;
    _target_time = millis() / 1000. + time;
    _start_time = millis() / 1000.;
    _start_level = _level;
    _target_level = target;
    if (_target_level > 1.) _target_level = 1.;
    if (_target_level < 0.) _target_level = 0.;
}

void Fixture::update(void){
    // value moves from 0.0 to scale in duration [sec]
    static char old_output_level;
    
    float now = millis() / 1000.;
    if (now < _target_time) {        
        float fract = SineEaseInOut ((now - _start_time) / (_target_time - _start_time));
       // Serial.println(fract);
        _level = _start_level + (_target_level - _start_level) * fract;
    } else {
        _level = _target_level;
    }    
    if (_level > 1.) _level = 1.;
    if (_level < 0.) _level = 0.;
    
    char out_level = floor(255. * _master_level * _level);
/*Serial.print(out_level, DEC);
    Serial.print(" ");
    */
  //  if (out_level != _old_output_level) {
    
        ESP32DMX.setSlot(_address, out_level);	
        old_output_level = out_level;
   // }
}

String Fixture::parse(File file) {
      String s=file.readStringUntil('\n');
        Serial.print("I got: ");
      float f = s.toFloat();
      if (f > 1.) f = 1;
      if (f < 0) f = 0;
        Serial.println(f);
      startFade(f,_fade_time);
      return s;
}


int Fixture::dump(File f){
    return(f.print(_level,4));
}
#ifndef __ANYMA_ESP_MACROS_INCLUDED__
#define __ANYMA_ESP_MACROS_INCLUDED__

//  https://godbolt.org is very cool for testing Macro expansions  (use -E as option)

//----------------------------------------------------------------------------------------
//                                      MACROS used in AnymaESPSettings.h

#define JSON_PUT(a) doc[#a] = a;
#define JSON_GET(a) \
    if (doc[#a])        \
    {                   \
        a = doc[#a];    \
    }
#define JSON_GET_STRING(a)        \
    if (doc[#a])                  \
    {                             \
        a = doc[#a].as<String>(); \
    }

//----------------------------------------------------------------------------------------
//                                      MACROS used in AnymaESPAPI.h

#define SETTING_AS_INT_CONSTRAIN(name, min, max) \
    {                                            \
        int i = doc["params"][#name].as<int>();  \
        if (i)                                   \
        {                                        \
            i = constrain(i, min, max);          \
            settings.name = i;                   \
        }                                        \
    }

#define SETTING_AS_INT(name)                    \
    {                                           \
        int i = doc["params"][#name].as<int>(); \
        if (i)                                  \
        {                                       \
            settings.name = i;                  \
        }                                       \
    }

    #define SETTING_AS_LONG(name)                    \
    {                                           \
        long i = doc["params"][#name].as<long>(); \
        if (i)                                  \
        {                                       \
            settings.name = i;                  \
        }                                       \
    }

#define SETTING_AS_STRING(name)                            \
    if (doc["params"][#name])                              \
    {                                                      \
        settings.name = doc["params"][#name].as<String>(); \
    }

#define SETTING_AS_COLORSTRING(name)                  \
    if (doc["params"][#name])                         \
    {                                                 \
        String s = doc["params"][#name].as<String>(); \
        settings.name = sanitizeColorInput(s);        \
    }

#endif

--[[
Internationalization tool
@author ikubicki
]]
class 'i18n'

function i18n:new(langCode)
    self.phrases = phrases[langCode]
    return self
end

function i18n:get(key)
    if self.phrases[key] then
        return self.phrases[key]
    end
    return key
end

phrases = {
    pl = {
        ['refresh'] = 'Odśwież',
        ['last-update'] = 'Ostatnia aktualizacja: %s',
        ['please-wait'] = 'Proszę czekać...',
        ['humidity'] = 'Wilgotność powietrza: %s %%',
        ['sensor'] = 'Czujnik: %s',
        ['module'] = 'Moduł %s',
        ['station'] = 'Stacja %s',
        ['detected_devices'] = 'Wykryto %s czujników wilgotności',
    },
    en = {
        ['refresh'] = 'Refresh',
        ['last-update'] = 'Last update at %s',
        ['please-wait'] = 'Please wait...',
        ['humidity'] = 'Air humidity: %s %%',
        ['sensor'] = 'Sensor: %s',
        ['module'] = '%s module',
        ['station'] = '%s station',
        ['detected_devices'] = 'There are %s humidity sensors',
    },
    de = {
        ['refresh'] = 'Aktualisieren',
        ['last-update'] = 'Letztes update: %s',
        ['please-wait'] = 'Ein moment bitte...',
        ['humidity'] = 'Luftfeuchtigkeit: %s %%',
        ['sensor'] = 'Sensor: %s',
        ['module'] = '%s modul',
        ['station'] = '%s station',
        ['detected_devices'] = 'Es gibt %s luftfeuchtigkeitssensoren',
    }
}
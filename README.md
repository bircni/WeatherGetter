# WeatherGetter
[![Haskell CI](https://github.com/ToiletCoders/WeatherGetter/actions/workflows/haskell.yml/badge.svg)](https://github.com/ToiletCoders/WeatherGetter/actions/workflows/haskell.yml)  
Get the current weather condition and 7-Day forecast for your current (geoip-determined) or a custom location:

```
Weather for Ulm, Germany at Sunday 5:00 AM

Current conditions:
+ --------------------------------------------------
| Temperature:                                  14°C
| Precipitation:                                  3%
| Humidity:                                      99%
| Wind:                                        3km/h
| Description:                         Mostly cloudy

Forecast: 
+ --------------------------------------------------
| Sunday                Scattered showers - (3,15)°C
| Monday                    Partly cloudy - (6,17)°C
| Tuesday                         Showers - (8,17)°C
| Wednesday                  Thunderstorm - (9,17)°C
| Thursday                        Showers - (8,15)°C
| Friday                    Partly cloudy - (8,17)°C
| Saturday              Scattered showers - (7,18)°C
| Sunday                    Partly cloudy - (7,18)°C
```

## Location override

sometimes your location may not be determined correctly by your ip address. Therefore you may override it by entering a city name in `location-override.txt`


## Building from source

Requirements:
- Recent version of Cabal & GHC

1. Clone repository
```
git clone https://github.com/ToiletCoders/WeatherGetter && cd WeatherGetter
```

2. Switch to branch
```
git checkout [branch this will be on]
```

3. Compile and run
```
cabal build && cabal run
```

## Installation / Use

Download your file in [Releases](https://github.com/ToiletCoders/WeatherGetter/releases) and doubleclick it.

If you have any troubles please open an issue.

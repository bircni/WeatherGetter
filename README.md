# WeatherGetter

Get the current weather condition and 7-Day forecast for your current (geoip-determined) or a custom location:

```
Weather for Ulm, Germany at Sunday 5:00 AM

Current conditions:
+ --------------------------------------------------
| Temperature:                                  38°C
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

## Building from source

Requirements:
- Recent version of Cabal & GHC

1. Clone repository
```
git clone https://github.com/ToiletCoders/WeatherGetter && WeatherGetter
```

2. Switch to branch
```
git checkout [branch this will be on]
```

3. Compile and Run
```
cabal build && cabal run
```
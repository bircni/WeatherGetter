<!--
<h1 align="center">WeatherGetter</h1>

  <p align="center">
    A small Haskell Program to get the current Weather condition
    <br />
    <br />
    <br />

</div>
-->

# About The Project
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


### Built With

* [Haskell](https://www.haskell.org)
* [Msys2](https://www.msys2.org)
* [MingW](https://www.mingw-w64.org)
* [VSCode](https://code.visualstudio.com)



### Downloads

Msys2: [Download](https://www.msys2.org)  
MingW: [Download](https://sourceforge.net/projects/mingw-w64/files/mingw-w64/mingw-w64-release/)  
VSCode: [Download](https://code.visualstudio.com/Download)  
If you have chocolately install ghc & cabal
```
choco install ghc cabal
```
## Getting Started

This is an example of how you may give instructions on setting up your project locally.
To get a local copy up and running follow these simple example steps.

### Requirements

- Recent version of Cabal & GHC
### Building from source

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

### Run the program
#### MacOS:
Put the `MacOS-script.sh` in `/Users/YourUsername` and change the path in `MacOS-script.sh` to the path you cloned the repository to.  
Run the script to test if it works.  
1. Open the Terminal in the path you saved the script and run:  
```sh 
  chmod +x MacOS-script.sh 
```
2. now you can type ``` ./MacOS-script.sh ``` to run it

#### Windows:
Put the `Windows-script.bat` in `/Users/YourUsername` and change the path in `Windows-script.bat` to the path you cloned the repository to.  
Run the script to test if it works.  
Now you can type ``` ./Windows-script.bat ``` to run it.
### Location override

sometimes your location may not be determined correctly by your ip address. Therefore you may override it by entering a city name in `location-override.txt`


## Contributing

Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement".
Don't forget to give the project a star! Thanks again!

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request



## License

Distributed under the MIT License. See `LICENSE.txt` for more information.




## Contact

Check out our Website: [toiletcoders.xyz](https://toiletcoders.xyz)

Project Link: [https://github.com/toiletcoders/WeatherGetter](https://github.com/toiletcoders/WeatherGetter)


[contributors-shield]: https://img.shields.io/github/contributors/toiletcoders/WeatherGetter.svg
[contributors-url]: https://github.com/toiletcoders/WeatherGetter/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/toiletcoders/WeatherGetter.svg
[forks-url]: https://github.com/toiletcoders/WeatherGetter/network/members
[stars-shield]: https://img.shields.io/github/stars/toiletcoders/WeatherGetter.svg
[stars-url]: https://github.com/toiletcoders/WeatherGetter/stargazers
[issues-shield]: https://img.shields.io/github/issues/toiletcoders/WeatherGetter.svg
[issues-url]: https://github.com/toiletcoders/WeatherGetter/issues
[license-shield]: https://img.shields.io/github/license/toiletcoders/WeatherGetter.svg
[license-url]: https://github.com/toiletcoders/WeatherGetter/LICENSE
[product-screenshot]: images/screenshot.pn

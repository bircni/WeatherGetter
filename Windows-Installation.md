# Windows Installation

## Requirements
Msys2: [Download](https://www.msys2.org)  
MingW: [Download](https://sourceforge.net/projects/mingw-w64/files/mingw-w64/mingw-w64-release/)

## HowTo
1.  Install Msys2 and MingW
2. Clone repository
```
git clone https://github.com/ToiletCoders/WeatherGetter && cd WeatherGetter
```

3. Switch to branch
```
git checkout [branch this will be on]
```

4. Compile and run (Tip: Before compiling use ```cabal update```)
```
cabal build && cabal run
```
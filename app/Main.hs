{-# LANGUAGE OverloadedStrings #-}

module Main where

import Control.Applicative ((<|>))
import Control.Lens ((^.))
import Control.Monad ((>=>))
import Data.Aeson (FromJSON, Object, Value (String), decode, eitherDecode, withObject, (.:))
import Data.Aeson.Types (parse, parseMaybe)
import Data.ByteString.Lazy.Char8 (ByteString, pack)
import Data.Functor ((<$>), (<&>))
import Data.Map (Map)
import Data.Maybe (fromJust, fromMaybe)
import GHC.Generics (Generic)
import Network.Wreq (get, responseBody)
import System.Directory (doesFileExist)
import WeatherTypes (Weather)

override :: String
override = "location-override.txt"

getIP :: IO String
getIP = get "https://api.ipify.org/?format=json" <&> ((decode . (^. responseBody)) >=> parseMaybe (.: "ip")) <&> fromMaybe ""

getGeoIP :: String -> IO String
getGeoIP ip = get ("http://ipwho.is/" ++ ip) <&> ((decode . (^. responseBody)) >=> parseMaybe (.: "city")) <&> fromMaybe ""

getLocation :: IO String
getLocation = do
    exists <- doesFileExist override
    location <- if exists then readFile override else pure ""
    if null location then getIP >>= getGeoIP else pure location

getWeather :: String -> IO String
getWeather city = (get ("https://weatherdbi.herokuapp.com/data/weather/" ++ city) <&> (eitherDecode . (^. responseBody)) :: IO (Either String Weather)) <&> either id show

main :: IO ()
main = do
    getLocation >>= getWeather >>= putStrLn
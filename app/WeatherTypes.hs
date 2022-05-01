{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

module WeatherTypes where

import Data.Aeson (FromJSON, Value (Object), (.:))
import Data.Aeson.Types (FromJSON (parseJSON), prependFailure, typeMismatch)
import Data.Map (Map)
import GHC.Generics (Generic)

data Temp = Temp
    { c :: Int
    , f :: Int
    }
    deriving (Show, Generic)

data Wind = Wind
    { km :: Int
    , mile :: Int
    }
    deriving (Show, Generic)

data Conditions = Conditions
    { dayhour :: String
    , temp :: Temp
    , precip :: String
    , humidity :: String
    , wind :: Wind
    , iconURL :: String
    , comment :: String
    }
    deriving (Show, Generic)

data Day = Day
    { day :: String
    , _comment :: String
    , max_temp :: Temp
    , min_temp :: Temp
    , _iconURL :: String
    }
    deriving (Show)

data Weather = Weather
    { region :: String
    , currentConditions :: Conditions
    , next_days :: [Day]
    , contact_author :: Map String String
    , data_source :: String
    }
    deriving (Generic)

instance FromJSON Weather
instance FromJSON Conditions
instance FromJSON Temp
instance FromJSON Wind

instance FromJSON Day where
    parseJSON (Object o) =
        Day
            <$> o .: "day"
            <*> o .: "comment"
            <*> o .: "max_temp"
            <*> o .: "min_temp"
            <*> o .: "iconURL"
    parseJSON invalid =
        prependFailure "parsing Day Failed, " (typeMismatch "Object" invalid)

instance Show Weather where
    show (Weather region (Conditions dayhour (Temp c _) precip humidity (Wind km _) _ comment) next_days _ _) =
        "Weather for " ++ region ++ " at " ++ dayhour ++ "\n\n"
            ++ "Current conditions:"
            ++ "\n"
            ++ "+ "
            ++ replicate (paddingLeft + paddingRight) '-'
            ++ "\n"
            ++ "| "
            ++ formatLeft paddingLeft "Temperature: "
            ++ formatRight paddingRight (show c ++ "°C")
            ++ "\n"
            ++ "| "
            ++ formatLeft paddingLeft "Precipitation: "
            ++ formatRight paddingRight precip
            ++ "\n"
            ++ "| "
            ++ formatLeft paddingLeft "Humidity: "
            ++ formatRight paddingRight humidity
            ++ "\n"
            ++ "| "
            ++ formatLeft paddingLeft "Wind: "
            ++ formatRight paddingRight (show km ++ "km/h")
            ++ "\n"
            ++ "| "
            ++ formatLeft paddingLeft "Description: "
            ++ formatRight paddingRight comment
            ++ "\n\n"
            ++ "Forecast: "
            ++ "\n"
            ++ "+ "
            ++ replicate (paddingLeft + paddingRight) '-'
            ++ "\n"
            ++ concatMap
                ( \(Day day comment (Temp max _) (Temp min _) _) ->
                    "| "
                        ++ formatLeft paddingLeft day
                        ++ formatRight paddingRight (comment ++ " - " ++ show (min, max) ++ "°C")
                        ++ "\n"
                )
                next_days
      where
        formatRight n str = replicate (n - length str) ' ' ++ str
        formatLeft n str = str ++ replicate (n - length str) ' '
        paddingLeft = 20
        paddingRight = 30

{-# LANGUAGE OverloadedStrings, DeriveGeneric #-}

module Main (main) where

import qualified Package

import Snap.Core
import Snap.Http.Server
import qualified Cors


allowedOrigins :: [String]
allowedOrigins =
  [  "http://localhost:8000"
  ]


main :: IO ()
main = do
          let config = setPort 8009 defaultConfig
          let snapApp = Cors.allow POST allowedOrigins $ route Package.routes
          httpServe config snapApp


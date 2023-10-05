{-# LANGUAGE OverloadedStrings, DeriveGeneric #-}

module Main (main) where

import qualified Package

import Snap.Core
import Snap.Http.Server



main :: IO ()
main = do
  let config = setPort 8009 defaultConfig -- Replace 8080 with your desired port
  httpServe config $ route Package.routes



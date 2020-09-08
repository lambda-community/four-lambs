{-# LANGUAGE OverloadedStrings #-}
module IO.NewLineAppend where

import qualified Turtle as Sh
import Turtle ((</>))
import qualified Data.Text as T
import Data.Text (Text(..))


checkNewLine :: FilePath -> IO Bool
checkNewLine = undefined

fixNewLine :: FilePath -> IO ()
fixNewLine = undefined

findFiles :: FilePath -> String -> IO [FilePath]
findFiles = undefined

main :: IO ()
main = do
  -- read directory and extension from cli args
  let directory = undefined
  let extension = undefined
  -- call findFiles directory extension
  -- fix the files
  putStrLn "Fixed this many files"
  putStrLn "<List of files>"
  
  
  

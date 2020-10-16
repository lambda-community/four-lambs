{-# LANGUAGE OverloadedStrings #-}
module IO.NewLineAppend where

import qualified Control.Foldl as Fold
import qualified Turtle as Sh
import qualified Turtle.Pattern as Pattern
import Turtle.Pattern (Pattern)
import Turtle (FilePath)

import Turtle ((</>))
import qualified Data.Text as T
import Data.Text (Text(..))
import Prelude hiding (FilePath)

checkNewLine :: FilePath -> IO Bool
checkNewLine = undefined

fixNewLine :: FilePath -> IO ()
fixNewLine = undefined

findFiles :: FilePath -> Sh.Pattern Text -> IO [FilePath]
findFiles directory extension = Sh.fold (Sh.find (Sh.ends extension) directory) Fold.list

cliArgs :: IO (FilePath, Pattern Text)
cliArgs = do
  input <- Sh.arguments
  let directory = Sh.fromText . head $ input
      extension = Pattern.text  . head . tail $ input
      in return (directory, extension)


main :: IO ()
main = do
  -- read directory and extension from cli args
  (directory, extension) <- cliArgs
  files <- findFiles directory extension
  print files
  -- call findFiles directory extension
  -- fix the files
  putStrLn "Fixed this many files"
  putStrLn "<List of files>"

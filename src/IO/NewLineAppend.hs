{-# LANGUAGE OverloadedStrings #-}
module IO.NewLineAppend where

import qualified Control.Foldl as Fold
import qualified Turtle as Sh
import qualified Turtle.Pattern as Sh
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

main :: IO ()
main = do
  -- read directory and extension from cli args

  input <- Sh.arguments
  let directory = head input
  let extension = head $ tail input


  print [directory, extension]
--file <- fmap fromText (input "files1.txt" <|> input "files2.txt")

  files <- findFiles  (Sh.fromText directory) (Sh.text extension)
  print files
  -- call findFiles directory extension
  -- fix the files
  putStrLn "Fixed this many files"
  putStrLn "<List of files>"
  
  
  
  

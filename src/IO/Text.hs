{- This modules reads the content of the file LICENSE, and prints the line with most amount of words
-}
{-# LANGUAGE OverloadedStrings #-}
module IO.Text where

import qualified Turtle as Sh
import Turtle ((</>))
import qualified Data.Text as T
import Data.Text (Text(..))
import Data.List (maximumBy, group)
import FourLambs (quickSortOn, quickSort)

fileToRead :: Sh.FilePath
fileToRead = "LICENSE"

lineWithMostWords :: Text -> (Text, Int)
lineWithMostWords text = maximumBy (\a b -> compare (snd a) (snd b)) linesWithWordCount
  where linesWithWordCount = map (\line -> (line, length $ T.words line)) (T.lines text)

wordHistogram :: Text -> [(Text, Int)]
wordHistogram text = groupCount . wordGrouper $ text
  where wordGrouper = group . quickSort . T.words . T.toLower 
        groupCount = map (\group -> (head group, length group ))


greet :: IO ()
greet = do
    Sh.echo "Hello, lambs"
    pwd <- Sh.pwd
    putStrLn $ "Reading from " <> show pwd

readText :: Sh.FilePath -> IO (Maybe Text)
readText filename = do
  exists <- Sh.testfile filename
  if exists
     then Just <$> Sh.readTextFile fileToRead
     else return Nothing

main :: IO ()
main = do
  greet
  maybeText <- readText fileToRead
  case maybeText
    of (Just text) -> print $ wordHistogram text
       Nothing     -> do
                      pwd <- Sh.pwd
                      putStr "File not found: "
                      print $ pwd </> fileToRead



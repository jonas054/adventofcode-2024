{-# LANGUAGE OverloadedStrings #-}
import qualified Data.Text.Internal.Search as S
import qualified Data.Text.IO as IO
import qualified Data.Text as T

example = [
  "MMMSXXMASM",
  "MSAMXMSMSA",
  "AMXSXMAAMM",
  "MSAMASMSMX",
  "XMASAMXAMM",
  "XXAMMXXAMA",
  "SMSMSASXSS",
  "SAXAMASAAA",
  "MAMMMXMMMM",
  "MXMXAXMASX"
  ]

occurences name list = length (concat [S.indices name row | row <- list])

xmases list = (occurences "XMAS" list) + (occurences "SAMX" list)

margin ix max backwards = replicate (if backwards then max - ix else ix) '.'

diagonal input backwards =
  T.transpose [T.pack((margin ix (length input) backwards) ++ T.unpack(row)) |
               (ix, row) <- zip [1..(length input)] input]

main = do
  -- let input = example
  input <- fmap T.lines (IO.readFile "input")
  print (sum [(xmases input),
              (xmases (T.transpose input)),
              (xmases (diagonal input False)),
              (xmases (diagonal input True))])

import System.IO
import Control.Monad

main :: IO ()
main = do
    hSetBuffering stdout NoBuffering -- DO NOT REMOVE

    input_line <- getLine
    let n = read input_line :: Int
    let m = 6 * n * (n - 2) + 8
    
    if n > 1 then print m else print n
    return ()
module Day01 (
    signalIncreaseCount
) where

signalIncreaseCount :: [Int] -> Int
signalIncreaseCount sigs =
    case sigs of
        x : y : rest -> (if y > x then 1 else 0) + signalIncreaseCount (y : rest)
        _ -> 0

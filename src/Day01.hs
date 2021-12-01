module Day01 (
    signalIncreaseCount,
    signalIncreaseCountSliding
) where

signalIncreaseCount :: [Int] -> Int
signalIncreaseCount sigs =
    case sigs of
        x : rest@(y : _) -> (if y > x then 1 else 0) + signalIncreaseCount rest
        _ -> 0

windowSumThree :: [Int] -> [Int]
windowSumThree sigs =
    case sigs of
        x : rest@(y : z : _) -> (x + y + z) : windowSumThree rest
        _ -> []

signalIncreaseCountSliding :: [Int] -> Int
signalIncreaseCountSliding = signalIncreaseCount . windowSumThree

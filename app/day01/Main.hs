import Day01

main :: IO ()
main = do
    signals <- fmap (fmap read . filter (not . null) . lines) $ readFile "data/day01.txt"
    putStrLn $ "signal increase count: " <> show (signalIncreaseCount signals)
    putStrLn $ "sliding signal increase count: " <> show (signalIncreaseCountSliding signals)

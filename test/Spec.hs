import Test.Hspec

import qualified Spec.Day01 as Day01

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "advent-of-code 2021" $ do
    Day01.spec

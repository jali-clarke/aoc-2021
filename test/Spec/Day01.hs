module Spec.Day01 (
    spec
) where

import Test.Hspec

import Day01

spec :: Spec
spec = describe "day 01" $ do
    it "should return 7 when given the example" $
        let
            day01Example = [199, 200, 208, 210, 200, 207, 240, 269, 260, 263]
        in signalIncreaseCount day01Example `shouldBe` 7


import Test.Hspec
import Test.QuickCheck

import Quadrant
import qualified ComplexADT as CADT
import qualified ComplexTC as CTC

main :: IO ()
main = hspec $ do
  describe "CADT.Cart dist" $ do
    it "x = 3, y = 4  =>  r^2 = 25" $
      CADT.dist (CADT.Cart 3 4) `shouldBe` 25

    it "x = 1, y = -5  =>  r^2 = 26" $
      CADT.dist (CADT.Cart 1 (-5)) `shouldBe` 26

  describe "CADT.Cart quad" $ do
    it "(0, 0) => I" $
      CADT.quad (CADT.Cart 0 0) `shouldBe` I

    it "(1, 0) => I" $
      CADT.quad (CADT.Cart 1 0) `shouldBe` I

    it "(1, 1) => I" $
      CADT.quad (CADT.Cart 1 1) `shouldBe` I

    it "(0, 1) => I" $
      CADT.quad (CADT.Cart 0 1) `shouldBe` I

    it "(-1, 1) => II" $
      CADT.quad (CADT.Cart (-1) 1) `shouldBe` II

    it "(-1, 0) => II" $
      CADT.quad (CADT.Cart (-1) 0) `shouldBe` II

    it "(-1, -1) => III" $
      CADT.quad (CADT.Cart (-1) (-1)) `shouldBe` III

    it "(0, -1) => IV" $
      CADT.quad (CADT.Cart 0 (-1)) `shouldBe` IV

    it "(1, -1) => IV" $
      CADT.quad (CADT.Cart 1 (-1)) `shouldBe` IV


  describe "CADT.Polar dist" $ do
    it "squares the radius r = 5" $
      CADT.dist (CADT.Polar 5 0) `shouldBe` 25

    it "squares the radius r = -3" $
      CADT.dist (CADT.Polar (-3) 0) `shouldBe` 9


  describe "CADT.Polar quad" $ do
    it "theta = -180 => II" $
      CADT.quad (CADT.Polar 1 (-180)) `shouldBe` II

    it "theta = -1 => IV" $
      CADT.quad (CADT.Polar 1 (-1)) `shouldBe` IV

    it "theta = 0 => I" $
      CADT.quad (CADT.Polar 1 0) `shouldBe` I

    it "theta = 1 => I" $
      CADT.quad (CADT.Polar 1 1) `shouldBe` I

    it "theta = 89 => I" $
      CADT.quad (CADT.Polar 1 89) `shouldBe` I

    it "theta = 90 => I" $
      CADT.quad (CADT.Polar 1 90) `shouldBe` I

    it "theta = 91 => II" $
      CADT.quad (CADT.Polar 1 91) `shouldBe` II

    it "theta = 179 => II" $
      CADT.quad (CADT.Polar 1 179) `shouldBe` II

    it "theta = 180 => II" $
      CADT.quad (CADT.Polar 1 180) `shouldBe` II

    it "theta = 181 => III" $
      CADT.quad (CADT.Polar 1 181) `shouldBe` III

    it "theta = 269 => III" $
      CADT.quad (CADT.Polar 1 269) `shouldBe` III

    it "theta = 270 => IV" $
      CADT.quad (CADT.Polar 1 270) `shouldBe` IV

    it "theta = 271 => IV" $
      CADT.quad (CADT.Polar 1 271) `shouldBe` IV

    it "theta = 359 => IV" $
      CADT.quad (CADT.Polar 1 359) `shouldBe` IV

    it "theta = 360 => I" $
      CADT.quad (CADT.Polar 1 360) `shouldBe` I

    it "theta = 540 => I" $
      CADT.quad (CADT.Polar 1 541) `shouldBe` III


  -----------------------------------------------------------------------------

  describe "CTC.Cart dist" $ do
    it "x = 3, y = 4  =>  r^2 = 25" $
      CTC.dist (CTC.Cart 3 4) `shouldBe` 25

    it "x = 1, y = -5  =>  r^2 = 26" $
      CTC.dist (CTC.Cart 1 (-5)) `shouldBe` 26

  describe "CTC.Cart quad" $ do
    it "(0, 0) => I" $
      CTC.quad (CTC.Cart 0 0) `shouldBe` I

    it "(1, 0) => I" $
      CTC.quad (CTC.Cart 1 0) `shouldBe` I

    it "(1, 1) => I" $
      CTC.quad (CTC.Cart 1 1) `shouldBe` I

    it "(0, 1) => I" $
      CTC.quad (CTC.Cart 0 1) `shouldBe` I

    it "(-1, 1) => II" $
      CTC.quad (CTC.Cart (-1) 1) `shouldBe` II

    it "(-1, 0) => II" $
      CTC.quad (CTC.Cart (-1) 0) `shouldBe` II

    it "(-1, -1) => III" $
      CTC.quad (CTC.Cart (-1) (-1)) `shouldBe` III

    it "(0, -1) => IV" $
      CTC.quad (CTC.Cart 0 (-1)) `shouldBe` IV

    it "(1, -1) => IV" $
      CTC.quad (CTC.Cart 1 (-1)) `shouldBe` IV


  describe "CTC.Polar dist" $ do
    it "squares the radius r = 5" $
      CTC.dist (CTC.Polar 5 0) `shouldBe` 25

    it "squares the radius r = -3" $
      CTC.dist (CTC.Polar (-3) 0) `shouldBe` 9


  describe "CTC.Polar quad" $ do
    it "theta = -180 => II" $
      CTC.quad (CTC.Polar 1 (-180)) `shouldBe` II

    it "theta = -1 => IV" $
      CTC.quad (CTC.Polar 1 (-1)) `shouldBe` IV

    it "theta = 0 => I" $
      CTC.quad (CTC.Polar 1 0) `shouldBe` I

    it "theta = 1 => I" $
      CTC.quad (CTC.Polar 1 1) `shouldBe` I

    it "theta = 89 => I" $
      CTC.quad (CTC.Polar 1 89) `shouldBe` I

    it "theta = 90 => I" $
      CTC.quad (CTC.Polar 1 90) `shouldBe` I

    it "theta = 91 => II" $
      CTC.quad (CTC.Polar 1 91) `shouldBe` II

    it "theta = 179 => II" $
      CTC.quad (CTC.Polar 1 179) `shouldBe` II

    it "theta = 180 => II" $
      CTC.quad (CTC.Polar 1 180) `shouldBe` II

    it "theta = 181 => III" $
      CTC.quad (CTC.Polar 1 181) `shouldBe` III

    it "theta = 269 => III" $
      CTC.quad (CTC.Polar 1 269) `shouldBe` III

    it "theta = 270 => IV" $
      CTC.quad (CTC.Polar 1 270) `shouldBe` IV

    it "theta = 271 => IV" $
      CTC.quad (CTC.Polar 1 271) `shouldBe` IV

    it "theta = 359 => IV" $
      CTC.quad (CTC.Polar 1 359) `shouldBe` IV

    it "theta = 360 => I" $
      CTC.quad (CTC.Polar 1 360) `shouldBe` I

    it "theta = 540 => I" $
      CTC.quad (CTC.Polar 1 541) `shouldBe` III



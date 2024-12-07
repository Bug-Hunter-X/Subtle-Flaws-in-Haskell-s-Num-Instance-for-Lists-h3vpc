{-# LANGUAGE FlexibleInstances #-}

instance (Num a) => Num [a] where
  (+) = zipWith (+)
  (*) = zipWith (*)
  negate = fmap negate
  abs = fmap abs
  signum = fmap signum
  fromInteger n = replicate 10 (fromInteger n)

main :: IO ()
main = do
  print $ [1, 2, 3] + [4, 5, 6]
  print $ [1, 2, 3] * [4, 5, 6]
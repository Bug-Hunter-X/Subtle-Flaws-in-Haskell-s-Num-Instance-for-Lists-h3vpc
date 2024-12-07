{-# LANGUAGE FlexibleInstances #-}

instance (Num a) => Num [a] where
  (+) xs ys = zipWith (+) xs' ys'
    where
      xs' = xs ++ replicate (length ys - length xs) 0
      ys' = ys ++ replicate (length xs - length ys) 0
  (*) xs ys = zipWith (*) xs' ys'
    where
      xs' = xs ++ replicate (length ys - length xs) 0
      ys' = ys ++ replicate (length xs - length ys) 0
  negate = fmap negate
  abs = fmap abs
  signum = fmap signum
  fromInteger n = replicate 10 (fromInteger n)

main :: IO ()
main = do
  print $ [1, 2, 3] + [4, 5, 6,7,8]
  print $ [1, 2, 3] * [4, 5, 6]
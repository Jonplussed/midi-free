module Sound.Midi.Internal.Ops
( correlateRanges
) where

correlateRanges :: (RealFrac a, Integral b) => (a,a) -> (b,b) -> a -> b
correlateRanges from@(fromMin, fromMax) to@(toMin, toMax) val
    | val < fromMin = correlateRanges from to fromMin
    | val > fromMax = correlateRanges from to fromMax
    | otherwise = round $ (val - fromMin) / fromDiff * fromIntegral toDiff - fromIntegral toMin
  where
    fromDiff = fromMax - fromMin
    toDiff = toMax - toMin

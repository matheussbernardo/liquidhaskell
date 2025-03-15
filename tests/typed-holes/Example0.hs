{-@ LIQUID "--expect-error-containing=AAAAA" @-}
{-@ LIQUID "--warn-on-term-holes" @-}

module Example0 where
    hole = undefined

    {-@ foo :: {v : Int | v == 1} @-}
    foo :: Int
    foo = hole + 1
    -- {-@ listLength :: xs:[a] -> {v : Nat | v == len xs} @-}
    -- listLength :: [a] -> Int
    -- listLength [] = hole
    -- listLength (_:xs) = 1 + listLength xs

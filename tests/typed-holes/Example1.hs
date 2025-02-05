{-@ LIQUID "--exact-data-cons" @-}
-- Based on https://ucsd-progsys.github.io/liquidhaskell-blog/2016/10/06/structural-induction.lhs/

module Example1 where
    import Prelude hiding ((<>))
    -- import Language.Haskell.Liquid.ProofCombinators ((===), (***), QED(QED), Proof)
    
    hole = undefined

    {-@ foo  :: x:Int -> y:Int -> {v:Int | v  == x + y} @-}
    foo :: Int -> Int -> Int
    foo x y = 10 + hole

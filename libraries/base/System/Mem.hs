{-# LANGUAGE Safe #-}
{-# LANGUAGE ForeignFunctionInterface #-}

-----------------------------------------------------------------------------
-- |
-- Module      :  System.Mem
-- Copyright   :  (c) The University of Glasgow 2001
-- License     :  BSD-style (see the file libraries/base/LICENSE)
-- 
-- Maintainer  :  libraries@haskell.org
-- Stability   :  provisional
-- Portability :  portable
--
-- Memory-related system things.
--
-----------------------------------------------------------------------------

module System.Mem (
        performGC
  ) where
 
import Prelude

-- | Triggers an immediate garbage collection
foreign import ccall {-safe-} "performMajorGC" performGC :: IO ()
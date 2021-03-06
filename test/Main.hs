module Main where

-- import Control.Monad
-- import TestUtils
import           Haskell.Ide.Engine.MonadFunctions

-- import Test.Hspec.Formatters.Jenkins
import Test.Hspec.Runner
import qualified Spec

-- ---------------------------------------------------------------------

main :: IO ()
main = withFileLogging "./test-main.log" $ hspec Spec.spec

-- main :: IO ()
-- main = do
--   summary <- withFile "results.xml" WriteMode $ \h -> do
--     let c = defaultConfig
--           { configFormatter = xmlFormatter
--           , configHandle = h
--           }
--     hspecWith c Spec.spec
--   unless (summaryFailures summary == 0) $
--     exitFailure

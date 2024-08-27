import qualified Data.Array.IO as A
import qualified ByteString as BS
--import qualified ByteString.Lazy as B
--import qualified Data.ByteString as B

import Data.List
import Data.Int

loadData :: IO [(Vector Double, Vector Double)]
loadData = do
  let filename = "data.txt"
  contents <- B.readFile filename
  show contents
  return $ map (parseData . BS.unpack) $ B.lines contents


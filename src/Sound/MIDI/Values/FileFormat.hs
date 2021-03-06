module Sound.Midi.Values.FileFormat where

import Sound.Midi.Internal.Encoding.Value (FileFormat (..))

-- TODO: I'd very much like for the file format to enforce the types of tracks
-- that can be written, but I have no idea how.

singleTrack, syncMultiTrack, asyncMultiTrack :: FileFormat

singleTrack     = FileFormat 0
syncMultiTrack  = FileFormat 1
asyncMultiTrack = FileFormat 2 -- currently unsupported

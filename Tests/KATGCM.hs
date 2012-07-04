{-# LANGUAGE OverloadedStrings #-}
module KATGCM (vectors_encrypt, vectors_decrypt) where

import qualified Data.ByteString as B
import Data.ByteString.Char8 ()

-- (key, iv, aad, input, out, taglen, tag)
type KATGCM = (B.ByteString, B.ByteString, B.ByteString, B.ByteString, B.ByteString, Int, B.ByteString)

vectors_aes128_enc :: [KATGCM]
vectors_aes128_enc =
    [ -- vectors 0
        ( {-key = -}"\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"
        , {-iv = -}"\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"
        , {-aad = -}""
        , {-input = -}""
        , {-out = -}""
        , {-taglen = -}16
        , {-tag = -}"\x58\xe2\xfc\xce\xfa\x7e\x30\x61\x36\x7f\x1d\x57\xa4\xe7\x45\x5a")
    -- vectors 1
    ,   ( {-key = -}"\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"
        , {-iv = -}"\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"
        , {-aad = -}"\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01"
        , {-input = -}"\x0a\x0a\x0a\x0a\x0a\x0a\x0a\x0a\x0a\x0a\x0a\x0a\x0a\x0a\x0a\x0a\x0a\x0a\x0a\x0a\x0a\x0a\x0a\x0a\x0a\x0a\x0a\x0a\x0a\x0a\x0a\x0a"
        , {-out = -}"\x09\x82\xd0\xc4\x6a\xbc\xa9\x98\xf9\x22\xc8\xb3\x7b\xb8\xf4\x72\xfd\x9f\xa0\xa1\x43\x41\x53\x29\xfd\xf7\x83\xf5\x9e\x81\xcb\xea"
        , {-taglen = -}16
        , {-tag = -}"\x28\x50\x64\x2f\xa8\x8b\xab\x21\x2a\x67\x1a\x97\x48\x69\xa5\x6c")

    -- vectors 2
    ,   ( {-key = -}"\x01\x02\x03\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"
        , {-iv = -}"\xff\xfe\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"
        , {-aad = -}"\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01"
        , {-input = -}"\x0a\x0a\x0a\x0a\x0a\x0a\x0a\x0a\x0a\x0a\x0a\x0a\x0a\x0a\x0a\x0a\x0a\x0a\x0a\x0a\x0a\x0a\x0a\x0a\x0a\x0a\x0a\x0a\x0a\x0a\x0a\x0a"
        , {-out = -}"\x1c\xa3\xb5\x41\x39\x6f\x19\x7a\x91\x2d\x27\x15\x70\xd1\xf5\x76\xde\xf1\xbe\x84\x42\x2a\xbb\xbe\x0b\x2d\x91\x21\x82\xbf\x7f\x17"
        , {-taglen = -}16
        , {-tag = -}"\x15\x2a\x05\xbb\x7e\x13\x5d\xbe\x93\x7f\xa0\x54\x7a\x8e\x74\xb6")
    -- vectors 3
    ,   ( {-key = -}"\x01\x02\x03\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"
        , {-iv = -}"\xff\xfe\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"
        , {-aad = -}"\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01\x01"
        , {-input = -}"\x0a\x0a\x0a\x0a\x0a\x0a\x0a\x0a\x0a\x0a\x0a\x0a\x0a\x0a\x0a\x0a\x0a\x0a\x0a\x0a\x0a\x0a\x0a\x0a\x0a\x0a\x0a\x0a\x0a\x0a\x0a\x0a"
        , {-out = -}"\xda\x35\xf6\x0a\x65\xc2\xa4\x6c\xb6\x6e\xb6\xf8\x1f\x0b\x9c\x74\x53\x4c\x97\x70\x36\xf7\xdf\x05\x6d\x00\xfe\xbf\xb4\xcb\xf5\x27"
        , {-taglen = -}16
        , {-tag = -}"\xb7\x76\x7c\x3b\x9e\xf1\xe2\xcb\xc9\x11\xf1\x9a\xdc\xfa\x35\x0d")
    ,   ( {-key = -}"\x01\x02\x03\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"
        , {-iv = -}"\xff\xfe\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"
        , {-aad = -}"\x76\x76\x76\x76\x76\x76\x76\x76\x76\x76\x76\x76\x76\x76\x76\x76"
        , {-input = -}"\x0b\x0b\x0b\x0b\x0b\x0b\x0b\x0b\x0b\x0b\x0b\x0b\x0b\x0b\x0b\x0b\x0b\x0b\x0b\x0b\x0b\x0b\x0b\x0b\x0b\x0b\x0b\x0b\x0b\x0b\x0b\x0b"
        , {-out = -}"\xe4\x42\xf8\xc4\xc6\x67\x84\x86\x4a\x5a\x6e\xc7\xe0\xca\x68\xac\x16\xbc\x5b\xbf\xf7\xd5\xf3\xfa\xf3\xb2\xcb\xb0\xa2\x14\xa1\x81"
        , {-taglen = -}16
        , {-tag = -}"\x5f\x63\xb8\xeb\x1d\x6f\xa8\x7a\xeb\x39\xa5\xf6\xd7\xed\xc3\x13")
    ,   ( {-key = -}"\x01\x02\x03\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"
        , {-iv = -}"\xff\xfe\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"
        , {-aad = -}"\x76\x76\x76\x76\x76\x76\x76\x76\x76\x76\x76\x76\x76"
        , {-input = -}"\x0b\x0b\x0b\x0b\x0b\x0b\x0b\x0b\x0b\x0b\x0b\x0b\x0b\x0b\x0b\x0b\x0b\x0b\x0b\x0b\x0b\x0b\x0b\x0b\x0b\x0b\x0b\x0b\x0b\x0b\x0b"
        , {-out = -}"\xe4\x42\xf8\xc4\xc6\x67\x84\x86\x4a\x5a\x6e\xc7\xe0\xca\x68\xac\x16\xbc\x5b\xbf\xf7\xd5\xf3\xfa\xf3\xb2\xcb\xb0\xa2\x14\xa1"
        , {-taglen = -}16
        , {-tag = -}"\x94\xd1\x47\xc3\xa2\xca\x93\xe9\x66\x93\x1e\x3b\xb3\xbb\x67\x01")
    ]

vectors_encrypt =
	[ ("AES128 Enc", vectors_aes128_enc)
    ]

vectors_decrypt = []

{-# LANGUAGE CPP #-}
{-# LANGUAGE NoRebindableSyntax #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
module Paths_parserC0 (
    version,
    getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

#if defined(VERSION_base)

#if MIN_VERSION_base(4,0,0)
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#else
catchIO :: IO a -> (Exception.Exception -> IO a) -> IO a
#endif

#else
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#endif
catchIO = Exception.catch

version :: Version
version = Version [0,1,0,0] []
bindir, libdir, dynlibdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/home/francisco/.cabal/bin"
libdir     = "/home/francisco/.cabal/lib/x86_64-linux-ghc-8.6.5/parserC0-0.1.0.0-827a6YkRQii10hMC6BCXRe-C0Compiler"
dynlibdir  = "/home/francisco/.cabal/lib/x86_64-linux-ghc-8.6.5"
datadir    = "/home/francisco/.cabal/share/x86_64-linux-ghc-8.6.5/parserC0-0.1.0.0"
libexecdir = "/home/francisco/.cabal/libexec/x86_64-linux-ghc-8.6.5/parserC0-0.1.0.0"
sysconfdir = "/home/francisco/.cabal/etc"

getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "parserC0_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "parserC0_libdir") (\_ -> return libdir)
getDynLibDir = catchIO (getEnv "parserC0_dynlibdir") (\_ -> return dynlibdir)
getDataDir = catchIO (getEnv "parserC0_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "parserC0_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "parserC0_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)

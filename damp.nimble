version = "2022.8.24"
author = "xigoi"
description = "A fork of bump that uses DateVer"
license = "MIT"

requires "https://github.com/disruptek/cutelog >= 1.1.2 & < 2.0.0"
when not defined(release):
  requires "https://github.com/disruptek/balls >= 2.0.0 & < 4.0.0"

bin = @["damp"]

when (NimMajor, NimMinor) >= (1, 3):
  requires "cligen >= 1.2.2 & < 2.0.0"
else:
  requires "cligen >= 0.9.46 & < 2.0.0"

task test, "run tests for ci":
  when defined(windows):
    exec "balls.cmd"
  else:
    exec findExe"balls"

import std/os
import std/strutils
import std/parsecfg

proc getModel*(): string =
  let modelFile = "/sys/class/dmi/id/product_name"
  let vendorFile = "/sys/class/dmi/id/sys_vendor"
  if modelFile.fileExists() and vendorFile.fileExists():
    let model = modelFile.open.readLine
    let vendor = vendorFile.open.readLine
    result = vendor & " " & model
  else:
    result = "Unknown"

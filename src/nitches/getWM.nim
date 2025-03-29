import
  std/os

func getWM*(): string=
  result = getEnv("XDG_CURRENT_DESKTOP")

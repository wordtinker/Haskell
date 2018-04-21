funcZ x =
  case x + 1 == 1 of
    True -> "AWESOME" -- see data matching
    False -> "wut"

oldpal xs = if xs == reverse xs then "yes" else "no"
pal xs =
  case xs == reverse xs of
    True -> "yes"
    False -> "no"

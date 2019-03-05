# flutter_create_submission

- Some kind of rowing-machine tracking thingy
- Planning on submitting it to #FlutterCreate

## What exactly is this suppose to be

TBA

## TODO list

- clarify the scope of this project
- restructure the package to be feature-based
  - right now I don't have enough files to do that
- figure out how to have `AppBar` to adjust dynamically
  - It (probably) always has an title
  - It sometimes has [`TabBar`]
  (https://docs.flutter.io/flutter/material/TabBar-class.html)
- How to use `Navigator` + Redux to
  - A) have a perfect state
  - B) retain the ability to press back -> go to the right screen
  - problem
    - redux really likes to control everything, but in the case of
      navigation, it needs to let `Navigator` to take over
    - who exactly should call `Navigator.push/pop` in this case?

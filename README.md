This library contains getters for useful Unicode glyphs as well as plain ASCII
alternatives. It's intended to be used in command-line applications that may run
on Windows and libraries that may be used by those applications.

We recommend that you import this library with the prefix "glyph". For example:

```dart
import 'package:term_glyph/term_glyph.dart' as glyph;

/// Formats [items] into a bulleted list, with one item per line.
String bulletedList(List<String> items) =>
    items.map((item) => "${glyph.bullet} $item").join("\n");
```

## ASCII Mode

The default Windows `cmd.exe` shell is unable to display Unicode characters, so
this package is able to transparently switch its glyphs to ASCII alternatives by
setting [the `ascii` attribute][ascii]. When this attribute is `true`, all
glyphs use ASCII characters instead. It currently defaults to `false`, although
in the future it may default to `true` for applications running on the Dart VM
on Windows. For example:

[ascii]: https://www.dartdocs.org/documentation/term_glyph/latest/term_glyph/ascii.html

```dart
import 'dart:io';

import 'package:term_glyph/term_glyph.dart' as glyph;

void main() {
  glyph.ascii = Platform.isWindows;

  // Prints "Unicode => ASCII" on Windows, "Unicode ━▶ ASCII" everywhere else.
  print("Unicode ${glyph.rightArrow} ASCII");
}
```

All ASCII glyphs are guaranteed to be the same number of characters as the
corresponding Unicode glyphs, so that they line up properly when printed on a
terminal. The specific ASCII text for a given Unicode glyph may change over
time; this is not considered a breaking change.

## Symbols

<!-- DO NOT MODIFY BY HAND. USE tool/generate.dart. -->

Name | Unicode | ASCII
---- | ------- | -----
`bullet` | • | *
`tick` | ✔ | √
`crossMark` | ✖ | ×
`star` | ★ | *
`info` | ℹ | i
`warning` | ⚠ | !!
`smiley` | ㋡ | ☺
`heart` | ♥ | ♥
`leftArrow` | ← | <
`rightArrow` | → | >
`upArrow` | ↑ | ^
`downArrow` | ↓ | v
`longLeftArrow` | ◀━ | <=
`longRightArrow` | ━▶ | =>
`play` | ▶ | ►
`pointer` | ❯ | >
`pointerSmall` | › | »
`circle` | ◯ | ( )
`circleFilled` | ◉ | (*)
`circleDotted` | ◌ | ( )
`circleDouble` | ◎ | ( )
`circleCircle` | ⓞ | (○)
`circleCross` | ⓧ | (x)
`circlePipe` | Ⓘ | (|)
`square` | ▇ | █
`squareSmall` | ◻ | [ ]
`squareSmallFilled` | ◼ | [█]
`horizontalLine` | ─ | -
`verticalLine` | │ | |
`topLeftCorner` | ┌ | ,
`topRightCorner` | ┐ | ,
`bottomLeftCorner` | └ | '
`bottomRightCorner` | ┘ | '
`cross` | ┼ | +
`teeUp` | ┴ | +
`teeDown` | ┬ | +
`teeLeft` | ┤ | +
`teeRight` | ├ | +
`upEnd` | ╵ | '
`downEnd` | ╷ | ,
`leftEnd` | ╴ | -
`rightEnd` | ╶ | -
`horizontalLineBold` | ━ | =
`verticalLineBold` | ┃ | |
`topLeftCornerBold` | ┏ | ,
`topRightCornerBold` | ┓ | ,
`bottomLeftCornerBold` | ┗ | '
`bottomRightCornerBold` | ┛ | '
`crossBold` | ╋ | +
`teeUpBold` | ┻ | +
`teeDownBold` | ┳ | +
`teeLeftBold` | ┫ | +
`teeRightBold` | ┣ | +
`upEndBold` | ╹ | '
`downEndBold` | ╻ | ,
`leftEndBold` | ╸ | -
`rightEndBold` | ╺ | -
`horizontalLineDouble` | ═ | =
`verticalLineDouble` | ║ | |
`topLeftCornerDouble` | ╔ | ,
`topRightCornerDouble` | ╗ | ,
`bottomLeftCornerDouble` | ╚ | "
`bottomRightCornerDouble` | ╝ | "
`crossDouble` | ╬ | +
`teeUpDouble` | ╩ | +
`teeDownDouble` | ╦ | +
`teeLeftDouble` | ╣ | +
`teeRightDouble` | ╠ | +
`horizontalLineDoubleDash` | ╌ | -
`horizontalLineDoubleDashBold` | ╍ | -
`verticalLineDoubleDash` | ╎ | |
`verticalLineDoubleDashBold` | ╏ | |
`horizontalLineTripleDash` | ┄ | -
`horizontalLineTripleDashBold` | ┅ | -
`verticalLineTripleDash` | ┆ | |
`verticalLineTripleDashBold` | ┇ | |
`horizontalLineQuadrupleDash` | ┈ | -
`horizontalLineQuadrupleDashBold` | ┉ | -
`verticalLineQuadrupleDash` | ┊ | |
`verticalLineQuadrupleDashBold` | ┋ | |

<!-- END AUTO GENERATED. -->



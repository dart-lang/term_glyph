This library contains getters for useful Unicode glyphs as well as non-Unicode
alternatives. It's intended to be used in command-line applications that may run
on Windows and libraries that may be used by those applications.

We recommend that you import this library with the prefix "glyph". For example:

```dart
import 'package:term_glyph/term_glyph.dart' as glyph;

/// Formats [items] into a bulleted list, with one item per line.
String bulletedList(List<String> items) =>
    items.map((item) => "${glyph.bullet} $item").join("\n");
```

## Fallback Mode

The Dart VM is able to print many (but not all) Unicode characters on Windows,
so this package is able to transparently switch its glyphs to safe alternatives
by setting [the `fallback` attribute][fallback]. When this attribute is `true`,
all glyphs use safe characters or sequences instead. It currently defaults to
`false`, although in the future it may default to `true` for applications
running on te Dart VM on Windows. For example:

[fallback]: https://www.dartdocs.org/documentation/term_glyph/latest/term_glyph/fallback.html

```dart
import 'dart:io';

import 'package:term_glyph/term_glyph.dart' as glyph;

void main() {
  glyph.fallback = Platform.isWindows;

  // Prints 'Unicode => Fallback' on Windows, 'Unicode ━▶ Fallback' everywhere else.
  print('Unicode ${glyph.rightArrow} Fallback');
}
```

All fallback glyphs are *not* guaranteed to be the same number of characters as
the corresponding Unicode glyphs. The specific fallback alternatives for an
unicode glyph may change over time, this is not a breaking change. View the
table below to see if you may need to format your output in order to line up
characters when using the fallback.

## Symbols

<!-- DO NOT MODIFY BY HAND. USE tool/generate.dart. -->

Name | Unicode | Fallback
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
`verticalLine` | │ | &#124;
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
`verticalLineBold` | ┃ | &#124;
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
`verticalLineDouble` | ║ | &#124;
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
`verticalLineDoubleDash` | ╎ | &#124;
`verticalLineDoubleDashBold` | ╏ | &#124;
`horizontalLineTripleDash` | ┄ | -
`horizontalLineTripleDashBold` | ┅ | -
`verticalLineTripleDash` | ┆ | &#124;
`verticalLineTripleDashBold` | ┇ | &#124;
`horizontalLineQuadrupleDash` | ┈ | -
`horizontalLineQuadrupleDashBold` | ┉ | -
`verticalLineQuadrupleDash` | ┊ | &#124;
`verticalLineQuadrupleDashBold` | ┋ | &#124;

<!-- END AUTO GENERATED. -->





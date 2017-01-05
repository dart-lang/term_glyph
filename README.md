This library contains getters for useful Unicode symbols as well as plain ASCII
alternatives. It's intended to be used in command-line applications that may run
on Windows and libraries that may be used by those applications.

We recommend that you import this library with the prefix "symbol". For example:

```dart
import 'package:symbol/symbol.dart' as symbol;

/// Formats [items] into a bulleted list, with one item per line.
String bulletedList(List<String> items) =>
    items.map((item) => "${symbol.bullet} $item").join("\n");
```

## ASCII Mode

The default Windows `cmd.exe` shell is unable to display Unicode characters, so
this package is able to transparently switch its symbols to ASCII alternatives
by setting [the `ascii` attribute][ascii]. When this attribute is `true`, all
symbols use ASCII characters instead. It currently defaults to `false`, although
in the future it may default to `true` for applications running on the Dart VM
on Windows. For example:

[ascii]: https://www.dartdocs.org/documentation/symbol/latest/symbol/ascii.html

```dart
import 'dart:io';

import 'package:symbol/symbol.dart' as symbol;

void main() {
  symbol.ascii = Platform.isWindows;

  // Prints "Unicode => ASCII" on Windows, "Unicode ━▶ ASCII" everywhere else.
  print("Unicode ${symbol.rightArrow} ASCII");
}
```

All ASCII symbols are guaranteed to be the same number of characters as the
corresponding Unicode symbols, so that they line up properly when printed on a
terminal. The specific ASCII text for a given Unicode symbol may change over
time; this is not considered a breaking change.

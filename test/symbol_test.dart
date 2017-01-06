// Copyright (c) 2017, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:test/test.dart';

import 'package:symbol/symbol.dart' as symbol;

void main() {
  group("with ascii = false", () {
    setUpAll(() {
      symbol.ascii = false;
    });

    test("symbols return Unicode versions", () {
      expect(symbol.topLeftCorner, equals("┌"));
      expect(symbol.teeUpBold, equals("┻"));
      expect(symbol.longLeftArrow, equals("◀━"));
    });

    test("symbolOrAscii returns the first argument", () {
      expect(symbol.symbolOrAscii("A", "B"), equals("A"));
    });
  });

  group("with ascii = true", () {
    setUpAll(() {
      symbol.ascii = true;
    });

    test("symbols return ASCII versions", () {
      expect(symbol.topLeftCorner, equals(","));
      expect(symbol.teeUpBold, equals("+"));
      expect(symbol.longLeftArrow, equals("<="));
    });

    test("symbolOrAscii returns the second argument", () {
      expect(symbol.symbolOrAscii("A", "B"), equals("B"));
    });
  });
}

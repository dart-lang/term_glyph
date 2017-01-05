// Copyright (c) 2017, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

export 'src/generated.dart';

import 'src/generated.dart';

/// Returns [symbol] if Unicode symbols are allowed, and [alternative] if they
/// aren't.
String symbolOrAscii(String symbol, String alternative) =>
    ascii ? alternative : symbol;

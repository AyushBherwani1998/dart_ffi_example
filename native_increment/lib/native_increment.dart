import 'dart:ffi';
import 'dart:io';

final DynamicLibrary nativeAddLib = Platform.isAndroid
    ? DynamicLibrary.open("libnative_increment.so")
    : DynamicLibrary.process();

final int Function(int x) nativeIncrement = nativeAddLib
    .lookup<NativeFunction<Int32 Function(Int32)>>("native_increment")
    .asFunction();

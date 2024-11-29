/++
Convenience file that allows to import entire Phobos in one import.
+/
module std;

///
@safe unittest
{
    import std;

    int len;
    const r = 6.iota
              .filter!(a => a % 2) // 1 3 5
              .map!(a => a * 2) // 2 6 10
              .tee!(_ => len++)
              .substitute(6, -6) // 2 -6 10
              .sum
              .reverseArgs!format("Sum: %d");

    assert(len == 3);
    assert(r == "Sum: 6");
}

///
@safe unittest
{
    import std;
    assert(10.iota.map!(a => pow(2, a)).sum == 1023);
}

version(PHOBOS_LITE) {}
else
{
public import
 std.base64,
 std.bitmanip,
 std.checkedint,
 std.csv,
 std.digest,
 std.getopt,
 std.json,
 std.mmfile,
 std.net.curl,
 std.parallelism,
 std.stdint,
 std.socket,
 std.uuid,
 std.zip,
 std.zlib;
}

version (PHOBOS_LIGHTER) {}
else
public import
 std.datetime,
 std.file,
 std.logger,
 std.regex;

public import
 std.algorithm,
 std.array,
 std.ascii,
 std.bigint,
 std.compiler,
 std.complex,
 std.concurrency,
 std.container,
 std.conv,
 std.demangle,
 std.encoding,
 std.exception,
 std.format,
 std.functional,
 std.int128,
 std.math,
 std.mathspecial,
 std.meta,
 std.net.isemail,
 std.numeric,
 std.path,
 std.process,
 std.random,
 std.range,
 std.signals,
 std.stdio,
 std.string,
 std.sumtype,
 std.system,
 std.traits,
 std.typecons,
 std.uni,
 std.uri,
 std.utf,
 std.variant;

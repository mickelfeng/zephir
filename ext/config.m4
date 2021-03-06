PHP_ARG_ENABLE(test, whether to enable test, [ --enable-test   Enable Test framework])

if test "$PHP_TEST" = "yes"; then
	AC_DEFINE(HAVE_TEST, 1, [Whether you have Test])
	test_sources="test.c kernel/main.c kernel/memory.c kernel/exception.c kernel/hash.c kernel/debug.c kernel/backtrace.c kernel/object.c kernel/array.c kernel/string.c kernel/fcall.c kernel/alternative/fcall.c kernel/operators.c kernel/concat.c test/arithmetic.c test/assign.c test/cast.c test/constants.c test/constantsparent.c test/declare.c test/echoes.c test/exception.c test/exceptions.c test/fannkuch.c test/fcall.c test/fibonnaci.c test/flow.c test/mcall.c test/nativearray.c test/oo.c test/oo/ooconstruct.c test/oo/ooconstructparams.c test/oo/oonoconstruct.c test/properties/protectedproperties.c test/properties/publicproperties.c test/regexdna.c test/router.c test/router/exception.c test/router/route.c test/scall.c test/scallexternal.c test/scallparent.c test/spectralnorm.c "
	PHP_NEW_EXTENSION(test, $test_sources, $ext_shared)
fi

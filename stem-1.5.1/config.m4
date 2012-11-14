dnl $Id: config.m4 241153 2007-08-13 00:58:49Z ohill $
dnl config.m4 for extension stem

PHP_ARG_ENABLE(stem, whether to enable stem support,
  [  --enable-stem          Enable stem support], no)

PHP_ARG_ENABLE(stem-danish, whether to compile Danish stemmer,
  [  --enable-stem-danish     STEM: Whether to compile Danish stemmer], yes, no)
PHP_ARG_ENABLE(stem-dutch, whether to compile Dutch stemmer,
  [  --enable-stem-dutch      STEM: Whether to compile Dutch stemmer], yes, no)
PHP_ARG_ENABLE(stem-english, whether to compile English (non Porter) stemmer,
  [  --enable-stem-english    STEM: Whether to compile English (non Porter) stemmer], yes, no)
PHP_ARG_ENABLE(stem-french, whether to compile French stemmer,
  [  --enable-stem-french     STEM: Whether to compile French stemmer], yes, no)
PHP_ARG_ENABLE(stem-finnish, whether to compile Finnish stemmer,
  [  --enable-stem-finnish    STEM: Whether to compile Finnish stemmer], yes, no)
PHP_ARG_ENABLE(stem-german, whether to compile German stemmer,
  [  --enable-stem-german     STEM: Whether to compile German stemmer], yes, no)
PHP_ARG_ENABLE(stem-hungarian, whether to compile Hungarian stemmer,
  [  --enable-stem-hungarian  STEM: Whether to compile Hungarian stemmer], yes, no)
PHP_ARG_ENABLE(stem-italian, whether to compile Italian stemmer,
  [  --enable-stem-italian    STEM: Whether to compile Italian stemmer], yes, no)
PHP_ARG_ENABLE(stem-norwegian, whether to compile Norwegian stemmer,
  [  --enable-stem-norwegian  STEM: Whether to compile Norwegian stemmer], yes, no)
PHP_ARG_ENABLE(stem-portuguese, whether to compile Portuguese stemmer,
  [  --enable-stem-portuguese STEM: Whether to compile Portuguese stemmer], yes, no)
PHP_ARG_ENABLE(stem-romanian, whether to compile Romanian stemmer,
  [  --enable-stem-romanian   STEM: Whether to compile Romanian stemmer], yes, no)
PHP_ARG_ENABLE(stem-russian, whether to compile Russian stemmer,
  [  --enable-stem-russian    STEM: Whether to compile Russian stemmer], yes, no)
PHP_ARG_ENABLE(stem-russian-unicode, whether to compile Russian (UTF8) stemmer,
  [  --enable-stem-russian-unicode STEM: Whether to compile Russian (UTF8) stemmer], yes, no)
PHP_ARG_ENABLE(stem-spanish, whether to compile Spanish stemmer,
  [  --enable-stem-spanish    STEM: Whether to compile Spanish stemmer], yes, no)
PHP_ARG_ENABLE(stem-swedish, whether to compile Swedish stemmer,
  [  --enable-stem-swedish    STEM: Whether to compile Swedish stemmer], yes, no)
PHP_ARG_ENABLE(stem-turkish-unicode, whether to compile Turkish (UTF8) stemmer,
  [  --enable-stem-turkish-unicode STEM: Whether to compile Turkish (UTF8) stemmer], yes, no)


if test "$PHP_STEM_DANISH" = "yes"; then
    AC_DEFINE(ENABLE_DANISH, 1, [ ])
    extra_lang="$extra_lang danish.c"
  else
    AC_DEFINE(ENABLE_DANISH, 0, [ ])
  fi

if test "$PHP_STEM_DUTCH" = "yes"; then
    AC_DEFINE(ENABLE_DUTCH, 1, [ ])
    extra_lang="$extra_lang dutch.c"
  else
    AC_DEFINE(ENABLE_DUTCH, 0, [ ])
  fi

if test "$PHP_STEM_ENGLISH" = "yes"; then
    AC_DEFINE(ENABLE_ENGLISH, 1, [ ])
    extra_lang="$extra_lang english.c"
  else
    AC_DEFINE(ENABLE_ENGLISH, 0, [ ])
  fi

if test "$PHP_STEM_FRENCH" = "yes"; then
    AC_DEFINE(ENABLE_FRENCH, 1, [ ])
    extra_lang="$extra_lang french.c"
  else
    AC_DEFINE(ENABLE_FRENCH, 0, [ ])
  fi

if test "$PHP_STEM_FINNISH" = "yes"; then
    AC_DEFINE(ENABLE_FINNISH, 1, [ ])
    extra_lang="$extra_lang finnish.c"
  else
    AC_DEFINE(ENABLE_FINNISH, 0, [ ])
  fi

if test "$PHP_STEM_GERMAN" = "yes"; then
    AC_DEFINE(ENABLE_GERMAN, 1, [ ])
    extra_lang="$extra_lang german.c"
  else
    AC_DEFINE(ENABLE_GERMAN, 0, [ ])
  fi

if test "$PHP_STEM_HUNGARIAN" = "yes"; then
    AC_DEFINE(ENABLE_HUNGARIAN, 1, [ ])
    extra_lang="$extra_lang hungarian.c"
  else
    AC_DEFINE(ENABLE_HUNGARIAN, 0, [ ])
  fi

if test "$PHP_STEM_ITALIAN" = "yes"; then
    AC_DEFINE(ENABLE_ITALIAN, 1, [ ])
    extra_lang="$extra_lang italian.c"
  else
    AC_DEFINE(ENABLE_ITALIAN, 0, [ ])
  fi

if test "$PHP_STEM_NORWEGIAN" = "yes"; then
    AC_DEFINE(ENABLE_NORWEGIAN, 1, [ ])
    extra_lang="$extra_lang norwegian.c"
  else
    AC_DEFINE(ENABLE_NORWEGIAN, 0, [ ])
  fi

if test "$PHP_STEM_PORTUGUESE" = "yes"; then
    AC_DEFINE(ENABLE_PORTUGUESE, 1, [ ])
    extra_lang="$extra_lang portuguese.c"
  else
    AC_DEFINE(ENABLE_PORTUGUESE, 0, [ ])
  fi

if test "$PHP_STEM_ROMANIAN" = "yes"; then
    AC_DEFINE(ENABLE_ROMANIAN, 1, [ ])
    extra_lang="$extra_lang romanian.c"
  else
    AC_DEFINE(ENABLE_ROMANIAN, 0, [ ])
  fi

if test "$PHP_STEM_RUSSIAN" = "yes"; then
    AC_DEFINE(ENABLE_RUSSIAN, 1, [ ])
    extra_lang="$extra_lang russian.c"
  else
    AC_DEFINE(ENABLE_RUSSIAN, 0, [ ])
  fi

if test "$PHP_STEM_RUSSIAN_UNICODE" = "yes"; then
    AC_DEFINE(ENABLE_RUSSIAN_UNICODE, 1, [ ])
    extra_lang="$extra_lang russian_unicode.c"
  else
    AC_DEFINE(ENABLE_RUSSIAN_UNICODE, 0, [ ])
  fi

if test "$PHP_STEM_SPANISH" = "yes"; then
    AC_DEFINE(ENABLE_SPANISH, 1, [ ])
    extra_lang="$extra_lang spanish.c"
  else
    AC_DEFINE(ENABLE_SPANISH, 0, [ ])
  fi

if test "$PHP_STEM_SWEDISH" = "yes"; then
    AC_DEFINE(ENABLE_SWEDISH, 1, [ ])
    extra_lang="$extra_lang swedish.c"
  else
    AC_DEFINE(ENABLE_SWEDISH, 0, [ ])
  fi

if test "$PHP_STEM_TURKISH_UNICODE" = "yes"; then
    AC_DEFINE(ENABLE_TURKISH_UNICODE, 1, [ ])
    extra_lang="$extra_lang turkish_unicode.c"
  else
    AC_DEFINE(ENABLE_TURKISH_UNICODE, 0, [ ])
  fi

if test "$PHP_STEM" != "no"; then
    PHP_NEW_EXTENSION(stem, stem.c api.c utilities.c porter.c $extra_lang, $ext_shared)
fi

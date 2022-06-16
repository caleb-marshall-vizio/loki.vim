if exists("b:current_syntax")
  finish
endif

let b:current_syntax = "lokitest"

syntax match comment "\v#.*$"

syntax match scenario "^Scenario.*$"

syntax keyword command
      \ Message
      \ Expect
      \ ExpectError
      \ ExpectGoogleAnalytics
      \ ExpectNothing
      \ ExpectMetric
      \ ExpectTalkBack
      \ ExpectTune
      \ ExpectShowMenu
      \ ExpectMtkTvValue
      \ ExpectLokiRegistryValue
      \ ExpectVideoSource
      \ Screenshot
      \ Navigate
      \ Wait
      \ MatchTestValues
      \ ExpectTestValue
      \ ExpectNoTestValue
      \ SimulateLock

syntax keyword direction Up Down Left Right Back CC Home Enter

syntax keyword bool true false

syn match number '\d\+'
syn match number '[-+]\d\+'

syn match number '\d\+\.\d*'
syn match number '[-+]\d\+\.\d*'
syn match number '[-+]\=\d[[:digit:]]*[eE][\-+]\=\d\+'
syn match number '\d[[:digit:]]*[eE][\-+]\=\d\+'
syn match number '[-+]\=\d[[:digit:]]*\.\d*[eE][\-+]\=\d\+'
syn match number '\d[[:digit:]]*\.\d*[eE][\-+]\=\d\+'

syntax keyword version __LOKI_VERSION__
syntax region string start=/\v"/ skip=/\v\\./ end=/\v"/ contains=version

highlight link string String
highlight link comment Comment
highlight link command Keyword
highlight link scenario PreProc
highlight link direction Constant
highlight link version Constant
highlight link bool Constant
highlight link number Constant

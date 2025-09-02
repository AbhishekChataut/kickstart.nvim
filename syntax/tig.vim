syntax keyword tigerKeyword function var let in end type if then else while do for to break nil
syntax match tigerNumber "\<[0-9]\+\>"
syntax match tigerOperator ":="
syntax region tigerString start=+"+ skip=+"\\"+ end=+"+
syntax match tigerOperator "[-+*/<>]=\?"
syntax match tigerDelimiter "[(){}\[\]]"
syntax keyword tigerBuiltin print ord chr getchar flush
syntax keyword tigerBuiltinType array record int string
syntax match tigerTypeName "\v<(type|:|of)\s+\zs[a-zA-Z_][a-zA-Z0-9_]*"
syntax region tigerComment start="/\*" end="\*/" contains=tigerComment



highlight link tigerComment Comment
highlight link tigerTypeName Type
highlight link tigerBuiltinType Type
highlight link tigerBuiltin Function
highlight link tigerDelimiter Delimiter
highlight link tigerOperator Operator
highlight link tigerKeyword Keyword
highlight link tigerNumber Number
highlight link tigerString String

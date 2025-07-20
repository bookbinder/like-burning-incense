\version "2.18.2"

toneStruct = "ID"
toneKeysig = \key a \minor

sopranoIntone = { f'8 g'[ a'] }
soprano = { a'\breve bes'8 a' g' a'4 \bar "|" a'\breve g'8 f' g' g'[ f' e'] d'4 \bar "||" }
sopranoFlex = { a'\breve \parenthesize g'4 \soprano }


altoIntone = { r8 d'4~ }
alto = { d'\breve*19/16~ d'4 c'\breve*19/16 d'4 r8 a4 }
altoFlex = { d'\breve*18/16~ \alto }

tenorIntone = { r8 f4~ }
tenor = { f\breve*19/16~ f4 a\breve*19/16~ a4. f4 }
tenorFlex = { f\breve \parenthesize g4 \tenor }

bassIntone = { r8 <\parenthesize d, d>4~ }
bass = { <\parenthesize d, d>\breve*19/16~ <\parenthesize d, d>4 <\parenthesize f, f>\breve*19/16 d4.~ d4 }
bassFlex = { <\parenthesize d, d>\breve*18/16~ \bass }

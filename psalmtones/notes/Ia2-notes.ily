\version "2.18.2"

toneStruct = "Ia2"
toneKeysig = \key a \minor

sopranoIntone = { f'8 g'[ a'] }
soprano = { a'\breve bes'8 a' g' a'4 \bar "|" a'\breve g'8 f' g' g'4( a'4) \bar "||" }
sopranoFlex = { a'\breve \parenthesize g'4 \soprano }


altoIntone = { r8 d'4~ }
alto = { d'\breve*19/16~ d'4 c'\breve*19/16 f'2 }
altoFlex = { d'\breve*18/16~ \alto }

tenorIntone = { r8 f4~ }
tenor = { f\breve*19/16~ f4 a\breve*19/16~ a2 }
tenorFlex = { f\breve \parenthesize g4 \tenor }

bassIntone = { r8 <\parenthesize d, d>4~ }
bass = { <\parenthesize d, d>\breve*19/16~ <\parenthesize d, d>4 <\parenthesize f, f>\breve*19/16 d2 }
bassFlex = { <\parenthesize d, d>\breve*18/16~ \bass }

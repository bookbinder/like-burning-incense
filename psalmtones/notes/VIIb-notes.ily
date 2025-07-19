\version "2.18.2"

toneStruct = "VIIb"
toneKeysig = \key e \minor

sopranoIntone = { g'8[ fis'] g'[ a']  }
soprano = { a'\breve c''8 b' a' b'4 \bar "|" a'\breve b'8 a' g' fis'4 \bar "||" }
sopranoFlex = { a'\breve \parenthesize g'4 \soprano }


altoIntone = { d'2~ }
alto = { d'\breve c'4. d'4~ d'\breve*19/16~ d'4 }
altoFlex = { d'\breve*18/16~ \alto }

tenorIntone = { g2 }
tenor = { fis\breve g4.~ g4 fis\breve*19/16 a4 }
tenorFlex = { fis\breve \parenthesize e4 \tenor }

bassIntone = { b,2 }
bass = { d\breve e4. g,4 d\breve*19/16~ d4 }
bassFlex = { d\breve*18/16~ \bass }

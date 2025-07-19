\version "2.18.2"

toneStruct = "VIIa"
toneKeysig = \key e \minor

sopranoIntone = { g'8[ fis'] g'[ a']  }
soprano = { a'\breve c''8 b' a' b'4 \bar "|" a'\breve b'8 a' g' fis'4( e') \bar "||" }
sopranoFlex = { a'\breve \parenthesize g'4 \soprano }


altoIntone = { d'2~ }
alto = { d'\breve c'4. d'4~ d'\breve*19/16 b2 }
altoFlex = { d'\breve*18/16~ \alto }

tenorIntone = { g2 }
tenor = { fis\breve g4.~ g4 fis\breve*19/16 g2 }
tenorFlex = { fis\breve \parenthesize e4 \tenor }

bassIntone = { b,2 }
bass = { d\breve e4. g,4 d\breve*19/16 e2 }
bassFlex = { d\breve*18/16~ \bass }

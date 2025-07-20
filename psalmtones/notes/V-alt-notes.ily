\version "2.18.2"

toneStruct = "V"
toneKeysig = \key a \major

sopranoIntone = { d'8 fis' }
soprano = { a'\breve \parenthesize b'8 b' a'4 \bar "|" a'\breve b'8 gis' a' fis' fis'4 \bar "||" }
sopranoFlex = { a'\breve \parenthesize fis'4 \soprano }


altoIntone = { d'4~ }
alto = { d'\breve*18/16~ d'4 cis'\breve*18/16 e'4 cis'4 }
altoFlex = { d'\breve*18/16~ \alto }

tenorIntone = { fis4 }
tenor = { fis\breve*18/16 a4~ a\breve*18/16 b4 a4 }
tenorFlex = { fis\breve*18/16~ \tenor }

bassIntone = { d4~ }
bass = { d\breve*18/16 fis4~ fis\breve*20/16~ fis4 }
bassFlex = { d\breve*18/16~ \bass }

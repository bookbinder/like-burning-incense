\version "2.18.2"

toneStruct = "VIIIC"
toneKeysig = \key a \major

sopranoIntone = { e'8 fis'8 }
soprano = { a'\breve b'8 a'4 \bar "|" a'\breve gis'8 a' fis' e'4( fis'4) \bar "||" }
sopranoFlex = { a'\breve \parenthesize fis'4 \soprano }

altoIntone = { cis'4~ }
alto = { cis'\breve*17/16~ cis'4 e'\breve*17/16 cis'4~ cis'2}
altoFlex = { cis'\breve*18/16~ \alto}

tenorIntone = { e4~ }
tenor = { e\breve*17/16~ e4 a\breve*17/16 b4~ b4 a4 }
tenorFlex = { e\breve \parenthesize fis4 \tenor }

bassIntone = { a,4~ }
bass = { a,\breve*17/16~ a,4 cis\breve*17/16~ cis4 fis2 }
bassFlex = { a,\breve*18/16~ \bass }

\version "2.18.2"

toneStruct = "33"
toneKeysig = \key g \major


sopranoOneFlex = { \afterGrace a'\breve^"A†" fis'4 \bar "'" \bar ""  a'\breve g'8 a'4 \bar "|" g'\breve a'8 d'4 \bar "||" }
sopranoOne = { a'\breve^"A" g'8 a'4 \bar "|" g'\breve a'8 d'4 \bar "||" }
sopranoShort = { \override Stem.stencil = ##f
                 \afterGrace a'\breve*1/2 \parenthesize fis'4_"+"
                 \revert Stem.stencil
                 g'8 a'4 \bar "|" \allowBreak g'\breve*1/2 a'8 d'4 \bar "||" }
sopranoTwoFlex = { \afterGrace a'\breve^"B†" fis'4 \bar "'" \bar ""  a'\breve g'8 a'4 \bar "|" g'\breve a'8 d'4 \bar "||" }
sopranoTwo = { a'\breve^"B" g'8 a'4 \bar "|" g'\breve a'8 d'4 \bar "||" }

altoOneFlex = { \afterGrace fis'\breve fis'4 fis'\breve s8 d'4 b\breve s8 d'4 }
altoOne = { fis'\breve s8 d'4 b\breve s8 d'4 }
altoTwoFlex = { \afterGrace d'\breve d'4 d'\breve s8 c'4 d'\breve s8 a4}
altoTwo = { d'\breve s8 c'4 d'\breve s8 a4 }

tenorOneFlex = { \afterGrace a\breve b4 \bar "'" a\breve s8 fis4 \bar "|" g\breve s8 a4 \bar "||" }
tenorOne = { a\breve s8 fis4 \bar "|" g\breve s8 a4 \bar "||" }
tenorTwoFlex = { \afterGrace fis\breve b4 \bar "'" fis\breve s8 g4 \bar "|" g\breve s8 fis4 \bar "||" }
tenorTwo = { fis\breve s8 g4 \bar "|" g\breve s8 fis4 \bar "||" }

bassOneFlex = { \afterGrace d\breve~ d4~ \bar "'" d\breve s8 d4 e\breve s8 fis4 }
bassOne = { d\breve s8 d4 e\breve s8 fis4 }
bassTwoFlex = { \afterGrace d\breve~ d4~ d\breve s8 e4 b,\breve s8 d4 }
bassTwo = { d\breve s8 e4 b,\breve s8 d4 }



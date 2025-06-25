\version "2.18.2"

toneStruct = "43"
toneKeysig = \key f \major


sopranoOneFlex = { \afterGrace a'\breve^"A†" g'4 \bar "'" a'\breve g'8 a'8 f'4 \bar "|" g'\breve bes'8 a'4 \bar "||"}
sopranoOne = {a'\breve^"A" g'8 a'8 f'4 \bar "|" g'\breve bes'8 a'4 \bar "||"}
sopranoShort = { \override Stem.stencil = ##f
                 \afterGrace a'\breve*1/2 \parenthesize g'4_"+"
                 \revert Stem.stencil
                 g'8 a' f'4 \bar "|" \allowBreak g'\breve*1/2 bes'8 a'4 \bar "||"  }
sopranoTwoFlex = { \afterGrace a'\breve^"B†" g'4 \bar "'" a'\breve g'8 a'8 f'4 \bar "|" g'\breve bes'8 a'4 \bar "||"}
sopranoTwo = {a'\breve^"B" g'8 a'8 f'4 \bar "|" g'\breve bes'8 a'4 \bar "||"}

altoOneFlex = {\afterGrace c'\breve d'4 c'\breve*18/16~ c'4 d'\breve*17/16 f'4}
altoOne = {c'\breve*18/16~ c'4 d'\breve*17/16 f'4}
altoTwoFlex = {\afterGrace e'\breve d'4 e'\breve*18/16 d'4~ d'\breve*17/16 f'4}
altoTwo = {e'\breve*18/16 d'4~ d'\breve*17/16 f'4}

tenorOneFlex = {\afterGrace c'\breve bes4 c'\breve*18/16~ c'4 bes\breve*17/16 c'4}
tenorOne = {c'\breve*18/16~ c'4 bes\breve*17/16 c'4}
tenorTwoFlex = {\afterGrace a\breve bes4 a\breve*18/16~ a4 bes\breve*17/16 c'4}
tenorTwo = {a\breve*18/16~ a4 bes\breve*17/16 c'4}

bassOneFlex = {\afterGrace f\breve g4 f\breve*18/16 a4 g\breve*17/16 f4}
bassOne = {f\breve*18/16 a4 g\breve*17/16 f4}
bassTwoFlex = {\afterGrace c\breve g4 c\breve*18/16 d4 bes,\breve*17/16 f4}
bassTwo = {c\breve*18/16 d4 bes,\breve*17/16 f4}



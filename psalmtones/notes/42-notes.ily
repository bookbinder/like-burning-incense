\version "2.18.2"

toneStruct = "43"
toneKeysig = \key f \major


sopranoOneFlex = { \afterGrace a'\breve*1/4^"A†" g'4 \breathe \bar "" a'\breve*1/4 g'8 f' g'4 \bar "|" g'\breve*1/4 a'8 d'4 \bar "||" }
sopranoOne = { a'\breve*1/4^"A" g'8 f' g'4 \bar "|" g'\breve*1/4 a'8 d'4 \bar "||" }
sopranoShort = { \override Stem.stencil = ##f
                 \afterGrace a'\breve*1/2 \parenthesize g'4_"+"
                 \revert Stem.stencil
                 g'8 f'8 g'4 \bar "|" \allowBreak g'\breve*1/2 a'8 d'4 \bar "||"  }
sopranoTwoFlex = { \afterGrace a'\breve*1/4^"B†" g'4 \breathe \bar "" a'\breve*1/4 g'8 f' g'4 \bar "|" g'\breve*1/4 a'8 d'4 \bar "||"  }
sopranoTwo = { a'\breve*1/4^"B" g'8 f' g'4 \bar "|" g'\breve*1/4 a'8 d'4 \bar "||"  }

altoOneFlex = { \afterGrace c'\breve*1/4~ c'4~ \breathe c'\breve*3/8( d'4)  c'\breve*5/16  a4 }
altoOne = {c'\breve*3/8( d'4)  c'\breve*5/16  a4 }
altoTwoFlex = { \afterGrace d'\breve*1/4~ d'4~ \breathe d'\breve*3/8( c'4) d'\breve*5/16  a4  }
altoTwo = {d'\breve*3/8( c'4) d'\breve*5/16  a4  }

tenorOneFlex = { \afterGrace f\breve*1/4 g4 \breathe f\breve*3/8 bes4 \bar "|" e\breve*5/16 f4 \bar "||" }
tenorOne = {f\breve*3/8 bes4 \bar "|" e\breve*5/16 f4 \bar "||" }
tenorTwoFlex = { \afterGrace f\breve*1/4 g4 \breathe f\breve*3/8 e4 \bar "|" f\breve*5/16~  f4 \bar "||" }
tenorTwo = {f\breve*3/8 e4 \bar "|" f\breve*5/16~  f4 \bar "||" }

bassOneFlex = { \afterGrace f\breve*1/4 e4 \breathe f\breve*3/8 bes,4  a,\breve*5/16 d4 }
bassOne = {f\breve*3/8 bes,4  a,\breve*5/16 d4 }
bassTwoFlex = { \afterGrace d\breve*1/4~ d4~ \breathe d\breve*3/8 e4 bes,\breve*5/16  d4 }
bassTwo = {d\breve*3/8 e4 bes,\breve*5/16  d4 }



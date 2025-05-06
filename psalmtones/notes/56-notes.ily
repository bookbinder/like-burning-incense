\version "2.18.2"

toneStruct = "43"
toneKeysig = \key f \major


sopranoOneFlex = {  a'\breve^"A†" g'4 \breathe \bar "" a'\breve g'8 f' g'4 \bar "|" g'\breve f'8 d'4 \bar "||" }
sopranoOne = { a'\breve^"A" g'8 f' g'4 \bar "|" g'\breve f'8 d'4 \bar "||"  }
sopranoShort = { \override Stem.stencil = ##f
                 \afterGrace a'\breve*1/2 \parenthesize g'4_"+"
                 \revert Stem.stencil
                 g'8 f' g'4 \bar "|" \allowBreak g'\breve*1/2 f'8 d'4 \bar "||"  }
sopranoTwoFlex = {  a'\breve^"B†" g'4 \breathe \bar "" a'\breve g'8 f' g'4 \bar "|" g'\breve f'8 d'4 \bar "||"  }
sopranoTwo = { a'\breve^"B" g'8 f' g'4 \bar "|" g'\breve f'8 d'4 \bar "||"   }

altoOneFlex = {  c'\breve~ c'4~ c'\breve s4 d'4  c'\breve s8 a4 }
altoOne = { c'\breve s4 d'4  c'\breve s8 a4   }
altoTwoFlex = {  d'\breve~ d'4~ d'\breve s4 c'4 d'\breve s8 a4  }
altoTwo = {  d'\breve s4 c'4 d'\breve s8 a4  }

tenorOneFlex = {  f\breve g4 \breathe f\breve s4 bes4 \bar "|" e\breve s8 f4 \bar "||" }
tenorOne = {  f\breve s4 bes4 \bar "|" e\breve s8 f4 \bar "||" }
tenorTwoFlex = {  f\breve g4 \breathe f\breve s4 e4 \bar "|" f\breve~ s8 f4 \bar "||" }
tenorTwo = { f\breve s4 e4 \bar "|" f\breve~ s8 f4 \bar "||" }

bassOneFlex = {  f\breve e4 f\breve s4 bes,4  a,\breve s8 d4 }
bassOne = { f\breve s4 bes,4  a,\breve s8 d4  }
bassTwoFlex = {  d\breve~ d4~ d\breve s4 e4 bes,\breve s8 d4 }
bassTwo = { d\breve s4 e4 bes,\breve s8 d4 }
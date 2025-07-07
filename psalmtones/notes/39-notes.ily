\version "2.18.2"

toneStruct = "43"
toneKeysig = \key a \minor

sopranoOneFlex = { \afterGrace a'\breve^"A†" g'4 \bar "'" \bar "" a'\breve g'8 f' g'4 \bar "|" g'\breve f'8 e'4 \bar "||"  }
sopranoOne = { a'\breve^"A" g'8 f' g'4 \bar "|" g'\breve f'8 e'4 \bar "||" }
sopranoShort = { \override Stem.stencil = ##f
                 \afterGrace a'\breve*1/2 \parenthesize g'4_"+"
                 \revert Stem.stencil
                 g'8 f'8 g'4 \bar "|" \allowBreak g'\breve*1/2 f'8 e'4 \bar "||"  }
sopranoTwoFlex = { \afterGrace a'\breve^"B†" g'4 \bar "'" \bar "" a'\breve g'8 f' g'4 \bar "|" g'\breve f'8 e'4 \bar "||"   }
sopranoTwo = {  a'\breve^"B" g'8 f' g'4 \bar "|" g'\breve f'8 e'4 \bar "||" }

altoOneFlex = { \afterGrace f'\breve c'4 f'\breve s4 c'4 d'\breve s8 e'4 }
altoOne = { f'\breve s4 c'4 d'\breve s8 e'4  }
altoTwoFlex = { \afterGrace c'\breve c'4 c'\breve~ s4 c'4 a\breve s8 c'4  }
altoTwo = { c'\breve~ s4 c'4 a\breve s8 c'4  }

tenorOneFlex = { \afterGrace a\breve g4 \bar "" a\breve s4 g4 \bar "|" f\breve s8 a4 \bar "||" }
tenorOne = { a\breve s4 g4 \bar "|" f\breve s8 a4 \bar "||"  }
tenorTwoFlex = { \afterGrace f\breve e4 \bar "" f\breve s4 e4 \bar "|" f\breve s8 a4 \bar "||" }
tenorTwo = { f\breve s4 e4 \bar "|" f\breve s8 a4 \bar "||" }

bassOneFlex = { \afterGrace d\breve e4 d\breve s4 e4 d\breve s8 c4 }
bassOne = {  d\breve s4 e4 d\breve s8 c4 }
bassTwoFlex = { s\breve s\breve s4 e4 d\breve s8 a,4 }
bassTwo = { s\breve s4 e4 d\breve s8 a,4 }



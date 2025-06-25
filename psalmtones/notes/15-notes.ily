\version "2.18.2"

toneStruct = "34"
toneKeysig = \key f \major


sopranoOneFlex = { \afterGrace a'\breve^"A†" g'4 \bar "'" a'\breve g'8 a'4 \bar "|" a'\breve g'8 f' g'4 \bar "||" }
sopranoOne = { a'\breve^"A" g'8 a'4 \bar "|" a'\breve g'8 f' g'4 \bar "||" }
sopranoShort = { \override Stem.stencil = ##f
                 \afterGrace a'\breve*1/2 \parenthesize g'4_"+"
                 \revert Stem.stencil
                 g'8 a'4 \bar "|" \allowBreak a'\breve*1/2 g'8 f' g'4 \bar "||"  }
sopranoTwoFlex = { \afterGrace a'\breve^"B†" g'4 \bar "'" a'\breve g'8 a'4 \bar "|" a'\breve g'8 f' g'4 \bar "||" }
sopranoTwo = {  a'\breve^"B" g'8 a'4 \bar "|" a'\breve g'8 f' g'4 \bar "||" }

altoOneFlex = { \afterGrace f'\breve f'4 f'\breve s8 d'4 f'\breve s4 e'4 }
altoOne = { f'\breve s8 d'4 f'\breve s4 e'4  }
altoTwoFlex = { \afterGrace f'\breve d'4 f'\breve s8 d'4 c'\breve~ s4 c'4  }
altoTwo = { f'\breve s8 d'4 c'\breve~ s4 c'4  }

tenorOneFlex = { \afterGrace c'\breve bes4 \bar "'" c'\breve s8 a4~ \bar "|" a\breve s4 c'4 \bar "||" }
tenorOne = { c'\breve s8 a4~ \bar "|" a\breve s4 c'4 \bar "||"  }
tenorTwoFlex = { \afterGrace a\breve bes4 a\breve s8 f4~ \bar "|" f\breve s4 e4 \bar "||" }
tenorTwo = { a\breve s8 f4~ \bar "|" f\breve s4 e4 \bar "||" }

bassOneFlex = { \afterGrace f\breve~ f4~ f\breve~ s8 f4 d\breve s4 c4 }
bassOne = { f\breve~ s8 f4 d\breve s4 c4  }
bassTwoFlex = { \afterGrace d\breve~ d4~ d\breve~ s8 d4 a,\breve s4 c4 }
bassTwo = { d\breve~ s8 d4 a,\breve s4 c4 }



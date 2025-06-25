\version "2.18.2"

toneStruct = "42"
toneKeysig = \key d \minor


sopranoOneFlex = { \afterGrace a'\breve^"A†" g'4 \bar "'" a'\breve g'8 f' g'4 \bar "|" f'\breve d'4 \bar "||" }
sopranoOne = { a'\breve^"A" g'8 f' g'4 \bar "|" f'\breve d'4 \bar "||" }
sopranoShort = { \override Stem.stencil = ##f
                 \afterGrace a'\breve*1/2 \parenthesize g'4_"+"
                 \revert Stem.stencil
                 g'8 f' g'4 \bar "|" \allowBreak f'\breve*1/2 d'4 \bar "||"  }
sopranoTwoFlex = { \afterGrace a'\breve^"B†" g'4 \bar "'" a'\breve g'8 f' g'4 \bar "|" f'\breve d'4 \bar "||" }
sopranoTwo = { a'\breve^"B" g'8 f' g'4 \bar "|" f'\breve d'4 \bar "||" }

altoOneFlex = { \afterGrace f'\breve d'4 f'\breve s4 d'4 bes\breve a4 }
altoOne = { f'\breve s4 d'4 bes\breve a4  }
altoTwoFlex = { \afterGrace d'\breve~ d'4~ d'\breve~ s4 d'4 bes\breve a4 }
altoTwo = { d'\breve~ s4 d'4 bes\breve a4 }

tenorOneFlex = { \afterGrace a\breve bes4 \bar "'" a\breve s4 g4~ \bar "|" g\breve f4 \bar "||" }
tenorOne = { a\breve s4 g4~ \bar "|" g\breve f4 \bar "||" }
tenorTwoFlex = { \afterGrace a\breve bes4 \bar "'" a\breve s4 bes4 \bar "|" g\breve f4 \bar "||" }
tenorTwo = { a\breve s4 bes4 \bar "|" g\breve f4 \bar "||" }

bassOneFlex = { \afterGrace d\breve g4 d\breve s4 bes,4 g,\breve d4 }
bassOne = { d\breve s4 bes,4 g,\breve d4 }
bassTwoFlex = { \afterGrace f\breve~ f4~ f\breve s4 bes,4 d\breve~ d4 }
bassTwo = { f\breve s4 bes,4 d\breve~ d4  }



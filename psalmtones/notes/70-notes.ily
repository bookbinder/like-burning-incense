\version "2.18.2"

toneStruct = "43"
toneKeysig = \key f \major


sopranoOneFlex = { \mark \markup { "Doesn't sound good. Use another tone." } \afterGrace a'\breve^"A†" g'4 \bar "'" a'\breve g'8 f' g'4 \bar "|" g'\breve a'8 f'4  \bar "||" }
sopranoOne = { a'\breve^"A" g'8 f' g'4 \bar "|" g'\breve a'8 f'4  \bar "||" }
sopranoShort = { \override Stem.stencil = ##f
                 \afterGrace a'\breve*1/2 \parenthesize g'4_"+"
                 \revert Stem.stencil
                 g'8 f' g'4 \bar "|" \allowBreak g'\breve*1/2 a'8 f'4 \bar "||"  }
sopranoTwoFlex = { \afterGrace a'\breve^"B†" g'4 \bar "'" a'\breve g'8 f' g'4 \bar "|" g'\breve a'8 f'4  \bar "||" }
sopranoTwo = { a'\breve^"B" g'8 f' g'4 \bar "|" g'\breve a'8 f'4  \bar "||" }

altoOneFlex = { \afterGrace c'\breve d'4 c'\breve s4 d'4~ d'\breve s8 c'4  }
altoOne = { c'\breve s4 d'4~ d'\breve s8 c'4 }
altoTwoFlex = { \afterGrace e'\breve d'4 e'\breve s4 bes4 d'\breve s8 c'4 }
altoTwo = { e'\breve s4 bes4 d'\breve s8 c'4  }

tenorOneFlex = { \afterGrace c'\breve bes4 \bar "'" c'\breve s4 bes4~ \bar "|" bes\breve s8 a4 \bar "||" }
tenorOne = { c'\breve s4 bes4~ \bar "|" bes\breve s8 a4 \bar "||" }
tenorTwoFlex = { \afterGrace a\breve bes4 \bar "'" a\breve s4 f4 \bar "|" bes\breve s8 a4 \bar "||" }
tenorTwo = { a\breve s4 f4 \bar "|" bes\breve s8 a4 \bar "||" }

bassOneFlex = { \afterGrace f\breve g4 f\breve s4 g4 f\breve~ s8 f4 }
bassOne = { f\breve s4 g4 f\breve~ s8 f4 }
bassTwoFlex = { \afterGrace c\breve d4 c\breve s4 d4 bes,\breve s8 f4 }
bassTwo = { c\breve s4 d4 bes,\breve s8 f4 }



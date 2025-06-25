\version "2.18.2"

toneStruct = "33"
toneKeysig = \key aes \major


sopranoOneFlex = { \afterGrace aes'\breve^"DON'T USE THIS. USE 26 INSTEAD." f'4 \bar "'" aes'\breve bes'8 aes'4 \bar "|" f'\breve g'8 ees'4 \bar "||"  }
sopranoOne = { aes'\breve^"A" bes'8 aes'4 \bar "|" f'\breve g'8 ees'4 \bar "||" }
sopranoShort = { \override Stem.stencil = ##f
                 \afterGrace aes'\breve*1/2 \parenthesize f'4_"+"
                 \revert Stem.stencil
                 bes'8 aes'4 \bar "|" \allowBreak f'\breve*1/2 g'8 ees'4 \bar "||"  }
sopranoTwoFlex = { \afterGrace aes'\breve^"B†" f'4 \bar "'" aes'\breve bes'8 aes'4 \bar "|" f'\breve g'8 ees'4 \bar "||" }
sopranoTwo = { aes'\breve^"B" bes'8 aes'4 \bar "|" f'\breve g'8 ees'4 \bar "||" }

altoOneFlex = { f'\breve f'\breve s8 ees'4  des'\breve s8 bes4}
altoOne = { f'\breve s8 ees'4  des'\breve s8 bes4 }
altoTwoFlex = { \afterGrace c'\breve~ c'4~ c'\breve~ s8 c'4   des'\breve s8 bes4 }
altoTwo = { c'\breve~ s8 c'4   des'\breve s8 bes4 }

tenorOneFlex = { \afterGrace des'\breve~ des'4~ \bar "'" des'\breve s8 c'4 \bar "|" bes\breve~ s8 bes4 \bar "||" }
tenorOne = { des'\breve s8 c'4 \bar "|" bes\breve~ s8 bes4 \bar "||" }
tenorTwoFlex = { \afterGrace aes\breve bes4 \bar "'" aes\breve~ s8 aes4~ \bar "|" aes\breve s8 g4 \bar "||" }
tenorTwo = { aes\breve~ s8 aes4~ \bar "|" aes\breve s8 g4 \bar "||" }

bassOneFlex = { \afterGrace s\breve bes4  s\breve s8 c'4  s\breve s8 g4  }
bassOne = { s\breve s8 c'4  s\breve s8 g4 }
bassTwoFlex = { \afterGrace f\breve~ f4 f\breve s8 ees4  des\breve s8 ees4 }
bassTwo = { f\breve s8 ees4  des\breve s8 ees4 }



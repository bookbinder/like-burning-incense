\version "2.18.2"

toneStruct = "42"
toneKeysig = \key aes \major


sopranoOneFlex = { \afterGrace aes'\breve^"A†" f'4 \bar "'" aes'\breve f'8 aes' g'4 \bar "|" f'\breve ees'4 \bar "||"  }
sopranoOne = { aes'\breve^"A" f'8 aes' g'4 \bar "|" f'\breve ees'4 \bar "||" }
sopranoShort = { \override Stem.stencil = ##f
                 \afterGrace aes'\breve*1/2 \parenthesize f'4_"+"
                 \revert Stem.stencil
                 f'8 aes' g'4 \bar "|" \allowBreak f'\breve*1/2 ees'4 \bar "||"  }
sopranoTwoFlex = { \afterGrace aes'\breve^"B†" f'4 \bar "'" aes'\breve f'8 aes' g'4 \bar "|" f'\breve ees'4 \bar "||" }
sopranoTwo = { aes'\breve^"B" f'8 aes' g'4 \bar "|" f'\breve ees'4 \bar "||" }

altoOneFlex = { \afterGrace c'\breve~ c'4~ c'\breve s4 ees'4 bes\breve~ bes4 }
altoOne = {c'\breve s4 ees'4 bes\breve~ bes4  }
altoTwoFlex = { \afterGrace c'\breve~ c'4~ c'\breve s4 ees'4 bes\breve~ bes4 }
altoTwo = { c'\breve s4 ees'4 bes\breve~ bes4 }

tenorOneFlex = { \afterGrace ees\breve f4 \bar "'" ees\breve~ s4 ees4 \bar "|" f\breve g4 \bar "||"}
tenorOne = { ees\breve~ s4 ees4 \bar "|" f\breve g4 \bar "||" }
tenorTwoFlex = { \afterGrace aes\breve~ aes4~ \bar "'" aes\breve s4 c'4 \bar "|" aes\breve g4 \bar "||" }
tenorTwo = { aes\breve s4 c'4 \bar "|" aes\breve g4 \bar "||" }

bassOneFlex = { \afterGrace aes,\breve~ aes,4~ aes,\breve s4 c4 des\breve ees4 }
bassOne = { aes,\breve s4 c4 des\breve ees4 }
bassTwoFlex = { \afterGrace f\breve~ f4~ f\breve s4 c4 des\breve ees4 }
bassTwo = { f\breve s4 c4 des\breve ees4  }



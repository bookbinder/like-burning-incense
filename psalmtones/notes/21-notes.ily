\version "2.18.2"

toneStruct = "33"
toneKeysig = \key aes \major


sopranoOneFlex = { \afterGrace aes'\breve^"A†" f'4 \bar "'" \bar "" aes'\breve bes'8 aes' 4 \bar "|" aes'\breve f'8 ees'4 \bar "||"  }
sopranoOne = { aes'\breve^"A" bes'8 aes' 4 \bar "|" aes'\breve f'8 ees'4 \bar "||" }
sopranoShort = { \override Stem.stencil = ##f
                 \afterGrace aes'\breve*1/2 \parenthesize f'4_"+"
                 \revert Stem.stencil
                 bes'8 aes'4 \bar "|" \allowBreak aes'\breve*1/2 f'8 ees'4 \bar "||"  }
sopranoTwoFlex = { \afterGrace aes'\breve^"B†" f'4 \bar "'"  \bar "" aes'\breve bes'8 aes' 4 \bar "|" aes'\breve f'8 ees'4 \bar "||" }
sopranoTwo = { aes'\breve^"B" bes'8 aes' 4 \bar "|" aes'\breve f'8 ees'4 \bar "||" }

altoOneFlex = { \afterGrace ees'\breve des'4 ees'\breve~ s8 ees'4  des'\breve s8 bes4}
altoOne = { ees'\breve~ s8 ees'4  des'\breve s8 bes4 }
altoTwoFlex = { \afterGrace c'\breve des'4 c'\breve s8 f'4 des'\breve s8 bes4 }
altoTwo = { c'\breve s8 f'4 des'\breve s8 bes4 }

tenorOneFlex = { \afterGrace <aes c'>\breve bes4 \tieDown \bar "'" <aes~ c'>\breve \tieUp s8 aes4 \bar "|" f\breve s8 g4 \bar "||"  }
tenorOne = { \tieDown <aes~ c'>\breve s8 \tieUp aes4 \bar "|" f\breve s8 g4 \bar "||" }
tenorTwoFlex = { \afterGrace aes\breve bes4 \bar "'" aes\breve~ s8 aes4 \bar "|" aes\breve s8 g4 \bar "||" }
tenorTwo = { aes\breve s8 aes4~ \bar "|" aes\breve s8 g4 \bar "||" }

bassOneFlex = { s\breve s\breve s8 c4 des\breve s8 ees4 }
bassOne = { s\breve s8 c4 des\breve s8 ees4 }
bassTwoFlex = { \afterGrace f\breve~ f4~ f\breve s8 des4 bes,\breve s8 ees4 }
bassTwo = { f\breve s8 des4 bes,\breve s8 ees4 }



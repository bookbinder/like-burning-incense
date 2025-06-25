\version "2.18.2"

toneStruct = "43"
toneKeysig = \key aes \major


sopranoOneFlex = { \afterGrace aes'\breve^"A†" f'4 \bar "'" aes'\breve f'8 aes' bes'4 \bar "|" aes'\breve f'8 ees'4 \bar "||"  }
sopranoOne = { aes'\breve^"A" f'8 aes' bes'4 \bar "|" aes'\breve f'8 ees'4 \bar "||" }
sopranoShort = { \override Stem.stencil = ##f
                 \afterGrace aes'\breve*1/2 \parenthesize f'4_"+"
                 \revert Stem.stencil
                 f'8 aes'8 bes'4 \bar "|" \allowBreak aes'\breve*1/2 f'8 ees'4 \bar "||"  }
sopranoTwoFlex = { \afterGrace aes'\breve^"B†" f'4 \bar "'" aes'\breve f'8 aes' bes'4 \bar "|" aes'\breve f'8 ees'4 \bar "||" }
sopranoTwo = { aes'\breve^"B" f'8 aes' bes'4 \bar "|" aes'\breve f'8 ees'4 \bar "||" }

altoOneFlex = { \afterGrace ees'\breve des'4 ees'\breve ~ s4 ees'4 ~ ees'\breve s8 bes4 }
altoOne = { ees'\breve ~ s4 ees'4 ~ ees'\breve s8 bes4  }
altoTwoFlex = { \afterGrace c'\breve des'4  c'\breve s4 des'4~ des'\breve s8 bes4 }
altoTwo = { c'\breve s4 des'4~ des'\breve s8 bes4 }

tenorOneFlex = { \afterGrace c'\breve bes4 \bar "'" c'\breve s4 g4 \bar "|" aes\breve s8 g4 \bar "||" }
tenorOne = { c'\breve s4 ees4 \bar "|" aes\breve s8 g4 \bar "||" }
tenorTwoFlex = { \afterGrace f\breve bes4 \bar "'" f\breve~ s4 f4 \bar "|" aes\breve s8 g4 \bar "||"}
tenorTwo = { f\breve~ s4 f4 \bar "|" aes\breve s8 g4 \bar "||" }

bassOneFlex = { aes\breve aes\breve s4 ees4 c\breve s8 ees4 }
bassOne = { aes\breve s4 ees4 c\breve s8 ees4 }
bassTwoFlex = { \afterGrace f\breve~ f4~ f\breve s4 des4 bes,\breve s8 ees4 }
bassTwo = { f\breve s4 des4 bes,\breve s8 ees4 }



\version "2.18.2"

toneStruct = "44"
toneKeysig = \key f \minor


sopranoOneFlex = { \afterGrace aes'\breve^"A†" f'4 \bar "'"  aes'\breve f'8 aes' bes'4 \bar "|" aes'\breve g'8 ees' f'4 \bar "||" }
sopranoOne = { aes'\breve^"A" f'8 aes' bes'4 \bar "|" aes'\breve g'8 ees' f'4 \bar "||" }
sopranoShort = { \override Stem.stencil = ##f
                 \afterGrace aes'\breve*1/2 \parenthesize f'4_"+"
                 \revert Stem.stencil
                 f'8 aes' bes'4 \bar "|" \allowBreak aes'\breve*1/2 g'8 ees' f'4 \bar "||"  }
sopranoTwoFlex = { \afterGrace aes'\breve^"B†" f'4 \bar "'"  aes'\breve f'8 aes' bes'4 \bar "|" aes'\breve g'8 ees' f'4 \bar "||" }
sopranoTwo = { aes'\breve^"B" f'8 aes' bes'4 \bar "|" aes'\breve g'8 ees' f'4 \bar "||" }

altoOneFlex = { \afterGrace c'\breve des'4 c'\breve s4 des'4 ees'\breve s4 c'4 }
altoOne = { c'\breve s4 des'4 ees'\breve s4 c'4 }
altoTwoFlex = { \afterGrace c'\breve des'4 c'\breve s4 f'4 des'\breve s4 c'4 }
altoTwo = { c'\breve s4 f'4 des'\breve s4 c'4 }

tenorOneFlex = { \afterGrace f\breve bes4 \bar "'" f\breve~ s4 f4 \bar "|" aes\breve~ s4 aes4 \bar "||" }
tenorOne = { f\breve~ s4 f4 \bar "|" aes\breve~ s4 aes4 \bar "||" }
tenorTwoFlex = { \afterGrace f\breve bes4 \bar "'" f\breve s4 bes4~ \bar "|" bes\breve s4 aes4 \bar "||" }
tenorTwo = { f\breve s4 bes4~ \bar "|" bes\breve s4 aes4 \bar "||" }

bassOneFlex = { \afterGrace f\breve~ f4~ f\breve s4 des4 c\breve s4 f4 }
bassOne = { f\breve s4 des4 c\breve s4 f4 }
bassTwoFlex = { \afterGrace f\breve~ f4~ f\breve s4 des4 f\breve~ s4 f4 }
bassTwo = { f\breve s4 des4 f\breve~ s4 f4 }



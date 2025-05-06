\version "2.18.2"

toneStruct = "33"
toneKeysig = \key des \major


sopranoOneFlex = { \afterGrace aes'\breve^"A†" f'4 \breathe  aes'\breve bes'8 aes'4 \bar "|" f'\breve ees'8 f'4 \bar "||" }
sopranoOne = { aes'\breve^"A" bes'8 aes'4 \bar "|" f'\breve ees'8 f'4 \bar "||" }
sopranoShort = { \override Stem.stencil = ##f
                 \afterGrace aes'\breve*1/2 \parenthesize f'4_"+"
                 \revert Stem.stencil
                 bes'8 aes'4 \bar "|" \allowBreak f'\breve*1/2 ees'8 ees'4 \bar "||"  }
sopranoTwoFlex = { \afterGrace aes'\breve^"B†" f'4 \breathe  aes'\breve bes'8 aes'4 \bar "|" f'\breve ees'8 f'4 \bar "||" }
sopranoTwo = { aes'\breve^"B" bes'8 aes'4 \bar "|" f'\breve ees'8 f'4 \bar "||" }

altoOneFlex = { \afterGrace des'\breve~ des'4 des'\breve s8 f'4 bes\breve s8 aes4 }
altoOne = { des'\breve s8 f'4 bes\breve s8 aes4 }
altoTwoFlex = { \afterGrace ees'\breve s4 ees'\breve s8 f'4 des'\breve s8 des'4 }
altoTwo = { ees'\breve s8 f'4 des'\breve s8 des'4 }

tenorOneFlex = { \afterGrace f\breve bes4 \breathe f\breve s8 aes4 \bar "|" ges\breve s8 f4 \bar "||" }
tenorOne = { f\breve s8 aes4 \bar "|" ges\breve s8 f4 \bar "||" }
tenorTwoFlex = { \afterGrace c'\breve des'4 \breathe c'\breve~ s8 c'4 \bar "|" bes\breve s8 aes4 \bar "||" }
tenorTwo = { c'\breve~ s8 c'4 \bar "|" bes\breve s8 aes4 \bar "||" }

bassOneFlex = { \afterGrace des\breve~ des4~ des\breve~ s8 des4~ des\breve s8 des4}
bassOne = { des\breve~ s8 des4~ des\breve s8 des4 }
bassTwoFlex = { \afterGrace aes\breve bes4 aes\breve s8 f4 ges\breve s8 des4 }
bassTwo = { aes\breve s8 f4 ges\breve s8 des4 }



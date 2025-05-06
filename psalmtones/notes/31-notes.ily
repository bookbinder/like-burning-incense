\version "2.18.2"

toneStruct = "43"
toneKeysig = \key ges \major


sopranoOneFlex = { \afterGrace aes'\breve^"A†" f'4 \breathe  aes'\breve f'8 ges' aes'4 \bar "|" ges'\breve aes'8 des'4 \bar "||" }
sopranoOne = { aes'\breve^"A" f'8 ges' aes'4 \bar "|" ges'\breve aes'8 des'4 \bar "||" }
sopranoShort = { \override Stem.stencil = ##f
                 \afterGrace aes'\breve*1/2 \parenthesize f'4_"+"
                 \revert Stem.stencil
                 f'8 ges' aes'4 \bar "|" \allowBreak ges'\breve*1/2 aes'8 des'4 \bar "||"  }
sopranoTwoFlex = { \afterGrace aes'\breve^"B†" f'4 \breathe  aes'\breve f'8 ges' aes'4 \bar "|" ges'\breve aes'8 des'4 \bar "||" }
sopranoTwo = { aes'\breve^"B" f'8 ges' aes'4 \bar "|" ges'\breve ees'8 aes'4 \bar "||" }

altoOneFlex = { \afterGrace f'\breve des'4 f'\breve s4 des'4 bes\breve s8 des'4 }
altoOne = { f'\breve s4 des'4 bes\breve s8 des'4 }
altoTwoFlex = { \afterGrace des'\breve~ des'4~ des'\breve s4 ces'4 des'\breve s8 aes4 }
altoTwo = { des'\breve s4 ces'4 des'\breve s8 aes4 }

tenorOneFlex = { \afterGrace aes\breve bes4 \breathe aes\breve s4 f4 \bar "|" ges\breve s8 aes4 \bar "||" }
tenorOne = { aes\breve s4 f4 \bar "|" ges\breve s8 aes4 \bar "||" }
tenorTwoFlex = { \afterGrace f\breve bes4 \breathe f\breve s4 ges4~ \bar "|" ges\breve s8 f4 \bar "||" }
tenorTwo = { f\breve s4 ges4~ \bar "|" ges\breve s8 f4 \bar "||" }

bassOneFlex = { \afterGrace des\breve~ des4~ des\breve~ s4 des4 ees\breve s8 f4 }
bassOne = { des\breve~ s4 des4 ees\breve s8 f4 }
bassTwoFlex = { \afterGrace des\breve~ des4~ des\breve s4 ees4 bes,\breve s8 des4 }
bassTwo = { des\breve s4 ees4 bes,\breve s8 des4 }



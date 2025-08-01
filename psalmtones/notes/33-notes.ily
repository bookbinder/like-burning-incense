\version "2.18.2"

toneStruct = "33"
toneKeysig = \key des \major


sopranoOneFlex = { \afterGrace aes'\breve^"A†" f'4 \bar "'"  aes'\breve f'8 des'4 \bar "|" bes'\breve c''8 aes'4 \bar "||" }
sopranoOne = { aes'\breve^"A" f'8 des'4 \bar "|" bes'\breve c''8 aes'4 \bar "||" }
sopranoShort = { \override Stem.stencil = ##f
                 \afterGrace aes'\breve*1/2 \parenthesize f'4_"+"
                 \revert Stem.stencil
                 f'8 des'4 \bar "|" \allowBreak bes'\breve*1/2 c''8 ees'4 \bar "||"  }
sopranoTwoFlex = { \afterGrace aes'\breve^"B†" f'4 \bar "'"  aes'\breve f'8 des'4 \bar "|" bes'\breve c''8 aes'4 \bar "||" }
sopranoTwo = { aes'\breve^"B" f'8 des'4 \bar "|" bes'\breve c''8 aes'4 \bar "||" }

altoOneFlex = { \afterGrace des'\breve~ des'4 des'\breve s8 bes4 des'\breve s8 c'4  }
altoOne = { des'\breve s8 bes4 des'\breve s8 c'4 }
altoTwoFlex = { \afterGrace ees'\breve des'4 ees'\breve s8 aes4 des'\breve s8 ~ des'4 }
altoTwo = { ees'\breve s8 aes4 des'\breve s8 ~ des'4 }

tenorOneFlex = { \afterGrace f\breve bes4 \bar "'" f\breve~ s8  f4 \bar "|" ees\breve~ s8 ees4 \bar "||" }
tenorOne = { f\breve~ s8  f4 \bar "|" ees\breve~ s8 ees4 \bar "||" }
tenorTwoFlex = { \afterGrace aes\breve bes4 \bar "'" aes\breve s8 f4 \bar "||" ges\breve s8 f4 \bar "||" }
tenorTwo = { aes\breve s8 f4 \bar "||" ges\breve s8 f4 \bar "||" }

bassOneFlex = { \afterGrace des\breve~ des4~ des\breve s8 bes,4 ges,\breve s8 aes,4 }
bassOne = { des\breve s8 bes,4 ges,\breve s8 aes,4 }
bassTwoFlex = { \afterGrace c\breve des4 c\breve s8 des4~ des\breve~ s8 des4 }
bassTwo = { c\breve s8 des4~ des\breve~ s8 des4 }



\version "2.18.2"

toneStruct = "32"
toneKeysig = \key ges \major


sopranoOneFlex = { \afterGrace aes'\breve^"A†" f'4 \bar "'"  aes'\breve ces''8 bes'4 \bar "|" aes'\breve f'4 \bar "||" }
sopranoOne = { aes'\breve^"A" ces''8 bes'4 \bar "|" aes'\breve f'4 \bar "||" }
sopranoShort = { \override Stem.stencil = ##f
                 \afterGrace aes'\breve*1/2 \parenthesize f'4_"+"
                 \revert Stem.stencil
                 ces''8 bes'4 \bar "|" \allowBreak aes'\breve*1/2 f'4 \bar "||"  }
sopranoTwoFlex = { \afterGrace aes'\breve^"B†" f'4 \bar "'"  aes'\breve ces''8 bes'4 \bar "|" aes'\breve f'4 \bar "||" }
sopranoTwo = { aes'\breve^"B" ces''8 bes'4 \bar "|" aes'\breve f'4 \bar "||" }

altoOneFlex = { \afterGrace ees'\breve des'4 ees'\breve s8 des'4~ des'\breve~ des'4 }
altoOne = { ees'\breve s8 des'4~ des'\breve~ des'4 }
altoTwoFlex = { \afterGrace ees'\breve des'4 ees'\breve s8 des'4~ des'\breve~ des'4 }
altoTwo = { ees'\breve s8 des'4~ des'\breve~ des'4 }

tenorOneFlex = { \afterGrace aes\breve bes4 \bar "'" aes\breve s8 bes4 \bar "|" ges\breve aes4 \bar "||" }
tenorOne = { aes\breve s8 bes4 \bar "|" ges\breve aes4 \bar "||" }
tenorTwoFlex = { \afterGrace ges\breve bes4 \bar "'" ges\breve~ s8 ges4 \bar "|" f\breve aes4 \bar "||" }
tenorTwo = { ges\breve~ s8 ges4 \bar "|" f\breve aes4 \bar "||" }

bassOneFlex = { \afterGrace ces\breve des4 ces\breve s8 ges4 des\breve ~ des4 }
bassOne = { ces\breve s8 ges4 des\breve ~ des4 }
bassTwoFlex = { \afterGrace ces\breve des4 ces\breve s8 ges,4 des\breve~ des4 }
bassTwo = { ces\breve s8 ges,4 des\breve~ des4 }



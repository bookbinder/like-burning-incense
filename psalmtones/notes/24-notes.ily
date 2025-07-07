\version "2.18.2"

toneStruct = "33"
toneKeysig = \key des \major


sopranoOneFlex = { \afterGrace aes'\breve^"A†" f'4 \bar "'" aes'\breve bes'8 aes'4 \bar "|" aes'\breve f'8 des'4 \bar "||" }
sopranoOne = { aes'\breve^"A" bes'8 aes'4 \bar "|" aes'\breve f'8 des'4 \bar "||" }
sopranoShort = { \override Stem.stencil = ##f
                 \afterGrace aes'\breve*1/2 \parenthesize f'4_"+"
                 \revert Stem.stencil
                 bes'8 aes'4 \bar "|" \allowBreak aes'\breve*1/2 f'8 des'4 \bar "||"  }
sopranoTwoFlex = { \afterGrace aes'\breve^"B†" f'4 \bar "'" aes'\breve bes'8 aes'4 \bar "|" aes'\breve f'8 des'4 \bar "||" }
sopranoTwo = { aes'\breve^"B" bes'8 aes'4 \bar "|" aes'\breve f'8 des'4 \bar "||" }

altoOneFlex = { \afterGrace des'\breve~ des'4~ des'\breve s8 ees'4 c'\breve s8 aes4 }
altoOne = { des'\breve s8 ees'4 c'\breve s8 aes4 }
altoTwoFlex = { \afterGrace c'\breve des'4 c'\breve s8 des'4 c'\breve^"?" s8 aes4 }
altoTwo = { c'\breve s8 des'4 c'\breve^"?" s8 aes4 }

tenorOneFlex = { \afterGrace f\breve bes4 \bar "'" f\breve s8 aes4~ \bar "|" aes\breve s8 f4 \bar "||" }
tenorOne = { f\breve s8 aes4~ \bar "|" aes\breve s8 f4 \bar "||" }
tenorTwoFlex = { \afterGrace ees\breve des4 \bar "'" ees\breve s8 des4 \bar "|" f\breve s8 f4 \bar "||" }
tenorTwo = { ees\breve s8 des4 \bar "|" f\breve s8 f4 \bar "||" }

bassOneFlex = { \afterGrace des\breve~ des4~ des\breve s8 c4 ees\breve^"?" s8 des4  }
bassOne = { des\breve s8 c4 ees\breve^"?" s8 des4 }
bassTwoFlex = { \afterGrace aes,\breve bes,4 aes,\breve s8 f,4 f,\breve s8 des4}
bassTwo = { aes,\breve s8 f,4 f,\breve s8 des4 }



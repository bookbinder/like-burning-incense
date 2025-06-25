\version "2.18.2"

toneStruct = "33"
toneKeysig = \key aes \major


sopranoOneFlex = { \afterGrace aes'\breve f'4 \bar "'" aes'\breve bes'8 aes'4 \bar "|" f'\breve g'8 ees'4 \bar "||" }
sopranoOne = { aes'\breve^"A" bes'8 aes'4 \bar "|" f'\breve g'8 ees'4 \bar "||" }
sopranoShort = { \override Stem.stencil = ##f
                 \afterGrace aes'\breve*1/2 \parenthesize f'4_"+"
                 \revert Stem.stencil
                 bes'8 aes'4 \bar "|" \allowBreak f'\breve*1/2 g'8 ees'4 \bar "||"  }
sopranoTwoFlex = { \afterGrace aes'\breve^"B†" f'4 \bar "'" aes'\breve bes'8 aes'4 \bar "|" f'\breve g'8 ees'4 \bar "||" }
sopranoTwo = { aes'\breve^"B" bes'8 aes'4 \bar "|" f'\breve g'8 ees'4 \bar "||" }

altoOneFlex = { \afterGrace c'\breve c'4 c'\breve s8 ees'4   des'\breve s8 bes4 }
altoOne = { c'\breve s8 ees'4   des'\breve s8 bes4 }
altoTwoFlex = { \afterGrace ees'\breve des'4 ees'\breve s8 c'4  des'\breve s8 bes4 }
altoTwo = { ees'\breve s8 c'4  des'\breve s8 bes4 }

tenorOneFlex = { \afterGrace ees\breve f4 \bar "'" ees\breve s8 aes4~ \bar "|" aes\breve s8 g4 }
tenorOne = { ees\breve s8 aes4~ \bar "|" aes\breve s8 g4 }
tenorTwoFlex = { \afterGrace aes\breve bes4 \bar "'" aes\breve~ s8 aes4~ \bar "|" aes\breve s8 g4 \bar "||" }
tenorTwo = { aes\breve~ s8 aes4~ \bar "|" aes\breve s8 g4 \bar "||" }

bassOneFlex = { \afterGrace aes,\breve~ aes,4~ aes,\breve s8 c4  des\breve s8 ees4 }
bassOne = { aes,\breve s8 c4  des\breve s8 ees4 }
bassTwoFlex = { \afterGrace c\breve f4 c\breve s8 f4  bes,\breve s8 ees4 }
bassTwo = { c\breve s8 f4  bes,\breve s8 ees4 }



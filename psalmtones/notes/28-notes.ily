\version "2.18.2"

toneStruct = "43"
toneKeysig = \key aes \major


sopranoOneFlex = { \afterGrace aes'\breve^"A†" f'4 \breathe aes'\breve g'8 aes' f'4 \bar "|" ees'\breve f'8 des'4 \bar "||"  }
sopranoOne = { aes'\breve^"A" g'8 aes' f'4 \bar "|" ees'\breve f'8 des'4 \bar "||" }
sopranoShort = { \override Stem.stencil = ##f
                 \afterGrace aes'\breve*1/2 \parenthesize f'4_"+"
                 \revert Stem.stencil
                 g'8 aes' f'4 \bar "|" \allowBreak ees'\breve*1/2 f'8 des'4 \bar "||"  }
sopranoTwoFlex = { \afterGrace aes'\breve^"B†" f'4 \breathe aes'\breve g'8 aes' f'4 \bar "|" ees'\breve f'8 des'4 \bar "||" }
sopranoTwo = { aes'\breve^"B" g'8 aes' f'4 \bar "|" ees'\breve f'8 des'4 \bar "||" }

altoOneFlex = { \afterGrace ees'\breve des'4 ees'\breve s4 des'4 s\breve s8 aes4 }
altoOne = { ees'\breve s4 des'4 s\breve s8 aes4 }
altoTwoFlex = { \afterGrace c'\breve des'4 c'\breve s4 des'4 c'\breve s8 aes4 }
altoTwo = { c'\breve s4 des'4 c'\breve s8 aes4 }

tenorOneFlex = { \afterGrace aes\breve bes4 \breathe aes\breve s4 bes4 \bar "|" aes\breve s8 f4 \bar "||" }
tenorOne = { aes\breve s4 bes4 \bar "|" aes\breve s8 f4 \bar "||" }
tenorTwoFlex = { \afterGrace aes\breve bes4 \breathe aes\breve~ s4 aes4~ \bar "|" aes\breve s8 f4 \bar "||" }
tenorTwo = { aes\breve~ s4 aes4~ \bar "|" aes\breve s8 f4 \bar "||" }

bassOneFlex = { \afterGrace c\breve des4 c\breve s4 des4 c\breve s8 des4 }
bassOne = { c\breve s4 des4 c\breve s8 des4 }
bassTwoFlex = { \afterGrace f\breve~ f4~ f\breve s4 des4 aes,\breve s8 des4 }
bassTwo = { f\breve s4 des4 aes,\breve s8 des4 }



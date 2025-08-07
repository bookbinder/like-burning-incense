\version "2.18.2"

toneStruct = "34"
toneKeysig = \key f \minor


sopranoOneFlex = { \afterGrace aes'\breve^"A†" f'4 \bar "'" aes'\breve bes'8 aes'4 \bar "|" f'\breve ees'8 f' des'4 \bar "||" }
sopranoOne = { aes'\breve bes'8 aes'4 \bar "|" f'\breve ees'8 f' des'4 \bar "||" }
sopranoShort = { \override Stem.stencil = ##f
                 \afterGrace aes'\breve*1/2 \parenthesize f'4_"+"
                 \revert Stem.stencil
                 bes'8 aes'4 \bar "|" \allowBreak f'\breve*1/2 ees'8 f'8 des'4 \bar "||" }
sopranoTwoFlex = { \afterGrace aes'\breve^"A†" f'4 \bar "'" aes'\breve bes'8 aes'4 \bar "|" f'\breve ees'8 f' des'4 \bar "||" }
sopranoTwo = { aes'\breve bes'8 aes'4 \bar "|" f'\breve ees'8 f' des'4 \bar "||" }

altoOneFlex = { f'\breve f'\breve s8 ees'4 | c'\breve s4 s4 } 
altoOne = { f'\breve s8 ees'4 | c'\breve s4 s4 } 
altoTwoFlex = {  f'\breve f'\breve s8 ees'4 | c'\breve s4 s4 } 
altoTwo = { f'\breve s8 ees'4 | c'\breve s4 s4 } 

tenorOneFlex = { \afterGrace des'\breve~ des'4 des'\breve s8 c'4 aes\breve~ s4 aes4 }
tenorOne = { des'\breve s8 c'4 aes\breve~ s4 aes4 }
tenorTwoFlex = { \afterGrace des'\breve~ des'4 des'\breve s8 c'4 aes\breve~ s4 aes4 }
tenorTwo = { des'\breve s8 c'4 aes\breve~ s4 aes4 }

bassOneFlex = { \afterGrace s\breve bes4 s\breve s8 c'4 s\breve s4 f4 }
bassOne = { s\breve s8 c'4 s\breve s4 f4 }
bassTwoFlex = { \afterGrace s\breve bes4 s\breve s8 c'4 s\breve s4 f4 }
bassTwo = { s\breve s8 c'4 s\breve s4 f4 }



\version "2.18.2"

toneStruct = "33"
toneKeysig = \key f \major


sopranoOneFlex = {  a'\breve^"A†" g'4 \bar "'" a'\breve bes'8 g'4 \bar "|" g'\breve a'8 f'4 \bar "||" }
sopranoOne = { a'\breve^"A" bes'8 g'4 \bar "|" g'\breve a'8 f'4 \bar "||" }
sopranoShort = { \override Stem.stencil = ##f
                 \afterGrace a'\breve*1/2 \parenthesize g'4_"+"
                 \revert Stem.stencil
                 bes'8 g'4 \bar "|" \allowBreak g'\breve*1/2 a'8 f'4 \bar "||"  }
sopranoTwoFlex = {  a'\breve^"B†" g'4 \bar "'" a'\breve bes'8 g'4 \bar "|" g'\breve a'8 f'4 \bar "||" }
sopranoTwo = { a'\breve^"B" bes'8 g'4 \bar "|" g'\breve a'8 f'4 \bar "||"  }

altoOneFlex = {  f'\breve d'4 f'\breve s8 d'4 c'\breve~ s8 c'4 }
altoOne = {  f'\breve s8 d'4 c'\breve~ s8 c'4 }
altoTwoFlex = {  e'\breve d'4 e'\breve s8 c'4 e'\breve s8 c'4  }
altoTwo = { e'\breve s8 c'4 e'\breve s8 c'4  }

tenorOneFlex = {  c'\breve bes4 \bar "'" c'\breve s8 bes4 \bar "|" c'\breve s8 a4 \bar "||" }
tenorOne = { c'\breve s8 bes4 \bar "|" c'\breve s8 a4 \bar "||"  }
tenorTwoFlex = {  a\breve bes4 \bar "'" a\breve s8 g4 \bar "|" bes\breve s8 a4 \bar "||" }
tenorTwo = { a\breve s8 g4 \bar "|" bes\breve s8 a4 \bar "||"}

bassOneFlex = {  f\breve g4 f\breve s8 g4 e\breve s8 f4 }
bassOne = { f\breve s8 g4 e\breve s8 f4  }
bassTwoFlex = {  c\breve g4 c\breve s8 e4 bes,\breve s8 f4 }
bassTwo = { c\breve s8 e4 bes,\breve s8 f4 }



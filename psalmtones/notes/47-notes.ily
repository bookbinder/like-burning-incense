\version "2.18.2"

toneStruct = "33"
toneKeysig = \key d \minor


sopranoOneFlex = { \afterGrace f'\breve^"A†" d'4 \breathe \bar "" f'\breve a'8 g'4 \bar "|" g'\breve f'8 d'4 \bar "||" }
sopranoOne = { f'\breve^"A" a'8 g'4 \bar "|" g'\breve f'8 d'4 \bar "||" }
sopranoShort = { \override Stem.stencil = ##f
                 \afterGrace f'\breve*1/2 \parenthesize d'4_"+"
                 \revert Stem.stencil
                 a'8 g'4 \bar "|" \allowBreak g'\breve*1/2 f'8 d'4 \bar "||"  }
sopranoTwoFlex = { \afterGrace f'\breve^"B†" d'4 \breathe \bar "" f'\breve a'8 g'4 \bar "|" g'\breve f'8 d'4 \bar "||" }
sopranoTwo = { f'\breve^"B" a'8 g'4 \bar "|" g'\breve f'8 d'4 \bar "||" }

altoOneFlex = { \afterGrace a\breve bes4 a\breve s8 c'4 d'\breve s8 a4 }
altoOne = { a\breve s8 c'4 d'\breve s8 a4 }
altoTwoFlex = { \afterGrace c'\breve bes4 c'\breve s8 d'4 c'\breve s8 a4 }
altoTwo = { c'\breve s8 d'4 c'\breve s8 a4 }

tenorOneFlex = { \afterGrace f\breve g4 \breathe f\breve s8 g4 \bar "|" bes\breve s8 f4 \bar "||" }
tenorOne = { f\breve s8 g4 \bar "|" bes\breve s8 f4 \bar "||" }
tenorTwoFlex = { \afterGrace f\breve g4 \breathe f\breve s8 bes4 \bar "|" e\breve s8 f4 \bar "||" }
tenorTwo = { f\breve s8 bes4 \bar "|" e\breve s8 f4 \bar "||" }

bassOneFlex = { \afterGrace d\breve~ d4 d\breve s8 e4 bes,\breve s8 d4 }
bassOne = { d\breve s8 e4 bes,\breve s8 d4  }
bassTwoFlex = { \afterGrace a,\breve bes,4 a,\breve s8 bes,4 c\breve s8 d4 }
bassTwo = { a,\breve s8 bes,4 c\breve s8 d4 }



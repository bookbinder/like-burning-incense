\version "2.18.2"

toneStruct = "44"
toneKeysig = \key c \major


sopranoOneFlex = { \afterGrace g'\breve^"A†" e'4 \bar "'" g'\breve f'8 e' d'4 \bar "|" a'\breve g'8 f'8 g'4 \bar "||"  }
sopranoOne = { g'\breve^"A" f'8 e' d'4 \bar "|" a'\breve g'8 f' g'4 \bar "||" }
sopranoShort = { \override Stem.stencil = ##f
                 \afterGrace g'\breve*1/2 \parenthesize e'4_"+"
                 \revert Stem.stencil
                 f'8 e' d'4 \bar "|" \allowBreak a'\breve*1/2 g'8 f' g'4 \bar "||"  }
sopranoTwoFlex = { \afterGrace g'\breve^"B†" e'4 \bar "'" g'\breve f'8 e' d'4 \bar "|" a'\breve g'8 f'8 g'4 \bar "||"  }
sopranoTwo = { g'\breve^"B" f'8 e' d'4 \bar "|" a'\breve g'8 f'8 g'4 \bar "||"  }

altoOneFlex = { \afterGrace c'\breve c'4 c'\breve s2 f'\breve s4 d'4  }
altoOne = { c'\breve s2 f'\breve s4 d'4  }
altoTwoFlex = { c'\breve c'\breve s4 a4 c'\breve s4 b4 }
altoTwo = { c'\breve s4 a4 c'\breve s4 b4  }

tenorOneFlex = { \afterGrace g\breve a4 g\breve s4 a4 \bar "|" c'\breve s4 b4 \bar "||" }
tenorOne = { g\breve s4 a4 \bar "|" c'\breve s4 b4 \bar "||"  }
tenorTwoFlex = { \afterGrace e\breve a4 e\breve s4 f4~ \bar "|" f\breve s4 d4 \bar "||" }
tenorTwo = {  e\breve s4 f4~ \bar "|" f\breve s4 d4 \bar "||" }

bassOneFlex = { \afterGrace e\breve e4 e\breve s4 f4 d\breve s4 g4 }
bassOne = { e\breve s4 f4 d\breve s4 g4  }
bassTwoFlex = { \afterGrace c\breve c4 c\breve s4 d4 f,\breve s4 g,4 }
bassTwo = {c\breve s4 d4 f,\breve s4 g,4 }



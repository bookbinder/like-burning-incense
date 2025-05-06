\version "2.18.2"

toneStruct = "43"
toneKeysig = \key a \minor


sopranoOneFlex = { \afterGrace g'\breve^"A†" e'4 \breathe g'\breve e'8 g' a'4 \bar "|" a'\breve g'8 e'4 \bar "||" }
sopranoOne = { g'\breve^"A" e'8 g' a'4 \bar "|" a'\breve g'8 e'4 \bar "||" }
sopranoShort = { \override Stem.stencil = ##f
                 \afterGrace g'\breve*1/2 \parenthesize e'4_"+"
                 \revert Stem.stencil
                 e'8 g' a'4 \bar "|" \allowBreak a'\breve*1/2 g'8 e'4 \bar "||"  }
sopranoTwoFlex = { \afterGrace g'\breve^"B†" e'4 \breathe g'\breve e'8 g' a'4 \bar "|" a'\breve g'8 e'4 \bar "||" }
sopranoTwo = { g'\breve^"B" e'8 g' a'4 \bar "|" a'\breve g'8 e'4 \bar "||"  }

altoOneFlex = { \afterGrace c'\breve c'4 c'\breve s4 e'4 d'\breve s8 c'4 }
altoOne = { c'\breve s4 e'4 d'\breve s8 c'4  }
altoTwoFlex = { \afterGrace e'\breve c'4 e'\breve s4 f'4 d'\breve s8 c'4  }
altoTwo = { e'\breve s4 f'4 d'\breve s8 c'4  }

tenorOneFlex = { \afterGrace e\breve a4 e\breve s4 a4 \bar "|" a\breve s8 a4 \bar "||" }
tenorOne = { e\breve s4 a4 \bar "|" a\breve s8 a4 \bar "||"  }
tenorTwoFlex = { \afterGrace b\breve a4 b\breve s4 d'4 \bar "|" a\breve s8 a4 \bar "||" }
tenorTwo = { b\breve s4 d'4 \bar "|" a\breve s8 a4 \bar "||" }

bassOneFlex = { \afterGrace s\breve e4 s\breve s4 c4 f\breve s8 a4 }
bassOne = { s\breve s4 c4 f\breve s8 a4  }
bassTwoFlex = { \afterGrace e\breve e4 s4 e\breve d4 f\breve s8 a,4 }
bassTwo = { e\breve s4 d4 f\breve s8 a,4 }



\version "2.18.2"

toneStruct = "23"
toneKeysig = \key a \minor


sopranoOneFlex = { \afterGrace g'\breve^"A†" e'4 \breathe g'\breve a'4 \bar "|" a'\breve g'8 e'4 \bar "||" }
sopranoOne = { g'\breve^"A" a'4 \bar "|" a'\breve g'8 e'4 \bar "||" }
sopranoShort = { \override Stem.stencil = ##f
                 \afterGrace g'\breve*1/2 \parenthesize e'4_"+"
                 \revert Stem.stencil
                 a'4 \bar "|" \allowBreak a'\breve*1/2 g'8 e'4 \bar "||"  }
sopranoTwoFlex = { \afterGrace g'\breve^"B†" e'4 \breathe g'\breve a'4 \bar "|" a'\breve g'8 e'4 \bar "||" }
sopranoTwo = { g'\breve^"B" a'4 \bar "|" a'\breve g'8 e'4 \bar "||"  }

altoOneFlex = { \afterGrace c'\breve c'4 c'\breve e'4 d'\breve s8 c'4 }
altoOne = { c'\breve e'4 d'\breve s8 c'4  }
altoTwoFlex = { \afterGrace e'\breve c'4 e'\breve f'4 d'\breve s8 c'4  }
altoTwo = { e'\breve f'4 d'\breve s8 c'4  }

tenorOneFlex = { \afterGrace e\breve a4 e\breve a4 \bar "|" a\breve s8 a4 \bar "||" }
tenorOne = { e\breve a4 \bar "|" a\breve s8 a4 \bar "||"  }
tenorTwoFlex = { \afterGrace b\breve a4 b\breve d'4 \bar "|" a\breve s8 a4 \bar "||" }
tenorTwo = { b\breve d'4 \bar "|" a\breve s8 a4 \bar "||" }

bassOneFlex = { \afterGrace s\breve e4 s\breve c4 f\breve s8 a4 }
bassOne = { s\breve c4 f\breve s8 a4  }
bassTwoFlex = { \afterGrace e\breve e4 e\breve d4 f\breve s8 a,4 }
bassTwo = { e\breve d4 f\breve s8 a,4 }



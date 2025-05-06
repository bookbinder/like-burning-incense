\version "2.18.2"

toneStruct = "43"
toneKeysig = \key a \minor


sopranoOneFlex = { \afterGrace a'\breve^"A†" g'4 \breathe a'\breve g'8 a' b'4 \bar "|" a'\breve g'8 e'4 \bar "||"}
sopranoOne = { a'\breve^"A" g'8 a' b'4 \bar "|" a'\breve g'8 e'4 \bar "||"  }
sopranoShort = { \override Stem.stencil = ##f
                 \afterGrace a'\breve*1/2 \parenthesize g'4_"+"
                 \revert Stem.stencil
                 g'8 a' b'8 \bar "|" \allowBreak a'\breve*1/2 g'8 e'4 \bar "||"  }
sopranoTwoFlex = { \afterGrace a'\breve^"B†" g'4 \breathe a'\breve g'8 a' b'4 \bar "|" a'\breve g'8 e'4  \bar "||"}
sopranoTwo = { a'\breve^"B" g'8 a' b'4 \bar "|" a'\breve g'8 e'4  \bar "||"  }

altoOneFlex = { \afterGrace e'\breve e'4 e'\breve s4 b4 d'\breve s8 e'4 }
altoOne = { e'\breve s4 b4 d'\breve s8 e'4  }
altoTwoFlex = { \afterGrace f'\breve b4 f'\breve s4 d'4~ d'\breve s8 c'4  }
altoTwo = { f'\breve s4 d'4~ d'\breve s8 c'4   }

tenorOneFlex = { \afterGrace c'\breve b4 c'\breve s4 g4 \bar "|" d'\breve s8 c'4 \bar "||" }
tenorOne = { c'\breve s4 g4 \bar "|" d'\breve s8 c'4 \bar "||"  }
tenorTwoFlex = { \afterGrace f\breve e4 f\breve s4 g4 \bar "|" f\breve s8 a4 \bar "||" }
tenorTwo = { f\breve s4 g4 \bar "|" f\breve s8 a4 \bar "||" }

bassOneFlex = { \afterGrace a\breve e4 a\breve s4 e4 f\breve s8 a4 }
bassOne = { a\breve s4 e4 f\breve s8 a4   }
bassTwoFlex = { d\breve d\breve s4 g,4 d\breve s8 a,4  }
bassTwo = {  d\breve s4 g,4 d\breve s8 a,4 }



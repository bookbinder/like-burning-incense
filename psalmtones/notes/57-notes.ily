\version "2.18.2"

toneStruct = "33"
toneKeysig = \key c \major


sopranoOneFlex = { \afterGrace g'\breve^"A†" e'4 \breathe \bar "" g'\breve a'8 g'4 \bar "|" a'\breve g'8 e'4 \bar "||" }
sopranoOne = { g'\breve^"A" a'8 g'4 \bar "|" a'\breve g'8 e'4 \bar "||"  }
sopranoShort = { \override Stem.stencil = ##f
                 \afterGrace g'\breve*1/2 \parenthesize e'4_"+"
                 \revert Stem.stencil
                 a'8 g'4 \bar "|" \allowBreak a'\breve*1/2 g'8 e'4 \bar "||"  }
sopranoTwoFlex = { \afterGrace g'\breve^"B†" e'4 \breathe \bar "" g'\breve a'8 g'4 \bar "|" a'\breve g'8 e'4 \bar "||"  }
sopranoTwo = { g'\breve^"B" a'8 g'4 \bar "|" a'\breve g'8 e'4 \bar "||"  }

altoOneFlex = {  }
altoOne = {   }
altoTwoFlex = {  }
altoTwo = {   }

tenorOneFlex = {  }
tenorOne = {  }
tenorTwoFlex = { }
tenorTwo = { }

bassOneFlex = { }
bassOne = {  }
bassTwoFlex = { }
bassTwo = {  }



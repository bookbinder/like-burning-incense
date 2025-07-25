\version "2.18.2"

toneStruct = "43"
toneKeysig = \key c \major


sopranoOneFlex = {  g'\breve^"A†" e'4 \bar "'" g'\breve f'8 e' d'4 \bar "|" f'\breve a'8 g'4 \bar "||"  }
sopranoOne = { g'\breve^"A" f'8 e' d'4 \bar "|" g'\breve a'8 g'4 \bar "||" }
sopranoShort = { \override Stem.stencil = ##f
                 \afterGrace g'\breve*1/2 \parenthesize e'4_"+"
                 \revert Stem.stencil
                 f'8 e' d'4 \bar "|" \allowBreak g'\breve*1/2 a'8 g'4 \bar "||"  }
sopranoTwoFlex = {  g'\breve^"B†" e'4 \bar "'" g'\breve f'8 e' d'4 \bar "|" f'\breve a'8 g'4 \bar "||"  }
sopranoTwo = { g'\breve^"B" f'8 e' d'4 \bar "|" f'\breve a'8 g'4 \bar "||"  }

altoOneFlex = {  c'\breve c'4 c'\breve s2 d'\breve~ s8 d'4  }
altoOne = { c'\breve s2 d'\breve~ s8 d'4    }
altoTwoFlex = { c'\breve s4 c'\breve s4 a4 d'\breve s8 b4 }
altoTwo = { c'\breve s4 a4 d'\breve s8 b4  }

tenorOneFlex = {  g\breve a4 g\breve s4 a4 \bar "|" a\breve s8 b4 \bar "||" }
tenorOne = { g\breve s4 a4 \bar "|" a\breve s8 b4 \bar "||"  }
tenorTwoFlex = {  e\breve a4 e\breve s4 f4~ \bar "|" d\breve~ s8 d4 \bar "||" }
tenorTwo = {  e\breve s4 f4~ \bar "|" d\breve~ s8 d4 \bar "||" }

bassOneFlex = {  e\breve e4 e\breve s4 f4 d\breve s8 g4 }
bassOne = { e\breve s4 f4 d\breve s8 g4  }
bassTwoFlex = {  c\breve c4 c\breve s4 d4 a,\breve s8 g,4 }
bassTwo = {c\breve s4 d4 a,\breve s8 g,4   }



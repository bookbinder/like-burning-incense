\version "2.18.2"

toneStruct = "43"
toneKeysig = \key c \major


sopranoOneFlex = { \afterGrace g'\breve^"A†" e'4 \bar "'" g'\breve f'8 g' a'4 \bar "|" a'\breve b'8 g'4 \bar "||"  }
sopranoOne = { g'\breve^"A" f'8 g' a'4 \bar "|" a'\breve b'8 g'4 \bar "||" }
sopranoShort = { \override Stem.stencil = ##f
                 \afterGrace g'\breve*1/2 \parenthesize e'4_"+"
                 \revert Stem.stencil
                 f'8 g' a'4 \bar "|" \allowBreak a'\breve*1/2 b'8 g'4 \bar "||"  }
sopranoTwoFlex = { \afterGrace g'\breve^"B†" e'4 \bar "'" g'\breve f'8 g' a'4 \bar "|" a'\breve b'8 g'4 \bar "||"  }
sopranoTwo = { g'\breve^"B" f'8 g' a'4 \bar "|" a'\breve b'8 g'4 \bar "||"  }

altoOneFlex = { e'\breve e'\breve r4 e'4 f'\breve s8 d'4 }
altoOne = { e'\breve r4 e'4 f'\breve s8 d'4  }
altoTwoFlex = { e'\breve e'\breve s4 c'4 f'\breve s8 d'4  }
altoTwo = {  e'\breve s4 c'4 f'\breve s8 d'4  }

tenorOneFlex = { \afterGrace c'\breve c'4 c'\breve~ s4 c'4 \bar "|" d'\breve s8 b4 \bar "||" }
tenorOne = { c'\breve~ s4 c'4 \bar "|" d'\breve s8 b4 \bar "||"  }
tenorTwoFlex = { \afterGrace c'\breve a4 c'\breve~ s4 \parenthesize c'4~ \bar "|" c'\breve s8 b4 \bar "||" }
tenorTwo = { c'\breve~ s4 \parenthesize c'4~ \bar "|" c'\breve s8 b4 \bar "||" }

bassOneFlex = { \afterGrace s\breve a4 s\breve s4 a4 f\breve s8 g4 }
bassOne = { s\breve s4 a4 f\breve s8 g4  }
bassTwoFlex = { \afterGrace c\breve c4 c\breve s4 f4 d\breve s8 g4 }
bassTwo = { c\breve s4 f4 d\breve s8 g4 }



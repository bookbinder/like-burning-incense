\version "2.18.2"

toneStruct = "44"
toneKeysig = \key f \major


sopranoOneFlex = { \afterGrace a'\breve^"A†" g'4 \bar "'" a'\breve g'8 f'8 g'4 \bar "|" g'\breve f'8 g'8 a'4 \bar "||"  }
sopranoOne = { a'\breve^"A" g'8 f'8 g'4 \bar "|" g'\breve f'8 g'8 a'4 \bar "||" }
sopranoShort = { \override Stem.stencil = ##f
                 \afterGrace a'\breve*1/2 \parenthesize g'4_"+"
                 \revert Stem.stencil
                 g'8 f'8 g'4 \bar "|" \allowBreak g'\breve*1/2 f'8 g'8 a'4 \bar "||"  }
sopranoTwoFlex = { \afterGrace a'\breve^"B†" g'4 \bar "'" a'\breve g'8 f'8 g'4 \bar "|" g'\breve f'8 g'8 a'4 \bar "||" }
sopranoTwo = { a'\breve^"B" g'8 f'8 g'4 \bar "|" g'\breve f'8 g'8 a'4 \bar "||"  }

altoOneFlex = { \afterGrace f'\breve d'4 f'\breve s4 d'4 c'\breve s4 f'4 }
altoOne = { f'\breve s4 d'4 c'\breve s4 f'4  }
altoTwoFlex = {  \afterGrace e'\breve d'4 e'\breve s4 d'4 c'\breve~ s4 c'4 }
altoTwo = { e'\breve s4 d'4 c'\breve~ s4 c'4  }

tenorOneFlex = { \afterGrace c'\breve bes4 \bar "'" c'\breve s4 bes4 \bar "|" c'\breve~ s4 c'4 \bar "||" }
tenorOne = { c'\breve s4 bes4 \bar "|" c'\breve~ s4 c'4 \bar "||"  }
tenorTwoFlex = { \afterGrace a\breve bes4 \bar "'" a\breve s4 bes4 \bar "|" e\breve s4 f4 \bar "||" }
tenorTwo = { a\breve s4 bes4 \bar "|" e\breve s4 f4 \bar "||" }

bassOneFlex = { \afterGrace f\breve g4 f\breve s4 g4 e\breve s4 f4 }
bassOne = { f\breve s4 g4 e\breve s4 f4  }
bassTwoFlex = { \afterGrace c\breve g4 c\breve s4 bes,4 c\breve s4 f,4 }
bassTwo = { c\breve s4 bes,4 c\breve s4 f,4 }



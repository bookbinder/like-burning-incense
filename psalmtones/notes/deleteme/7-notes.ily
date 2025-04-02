\version "2.18.2"

divisioMinima = {
    \bar ""
    \once \override BreathingSign.stencil = #ly:breathing-sign::divisio-minima
    \once \override BreathingSign.Y-offset = #0
    \breathe
}

dm = {
    \bar ""
    \once \override BreathingSign.stencil = #ly:breathing-sign::divisio-maior
    \once \override BreathingSign.Y-offset = #0
    \breathe
}
divisioMaxima = {
    \bar ""
    \once \override BreathingSign.stencil = #ly:breathing-sign::divisio-maxima
    \once \override BreathingSign.Y-offset = #0
    \breathe
}

fi = { \bar "||" }
ll = { \once \override LyricText.self-alignment-X = #LEFT }
sm = { \set melismaBusyProperties = #'() }
usm = { \unset melismaBusyProperties }

global = {
    \key c \major
    \cadenzaOn
    \set tieWaitForNote = ##t
    \autoBeamOff
    %\hide Staff.Stem
}

sopranoOneFlex = { \afterGrace g'\breve^"A†" e'4 \breathe g'\breve f'8 e' d'4 \bar "|" a'\breve b'8 g'4 \bar "||"  }
sopranoOne = { g'\breve^"A" f'8 e' d'4 \bar "|" a'\breve b'8 g'4 \bar "||" }
sopranoShort = { \override Stem.stencil = ##f
                 \afterGrace g'\breve \parenthesize e'4
                 \revert Stem.stencil
                 f'8 e' d'4 \bar "|" a'\breve b'8 g'4 \bar "||"  }
sopranoTwoFlex = { \afterGrace g'\breve^"B†" e'4 \breathe g'\breve f'8 e' d'4 \bar "|" a'\breve b'8 g'4 \bar "||"  }
sopranoTwo = { g'\breve^"B" f'8 e' d'4 \bar "|" a'\breve b'8 g'4 \bar "||"  }

altoOneFlex = { \afterGrace c'\breve c'4 c'\breve s2 f'\breve s8 d'4  }
altoOne = { c'\breve s2 f'\breve s8 d'4    }
altoTwoFlex = { c'\breve c'\breve s4 a4 c'\breve s8 b4 }
altoTwo = { c'\breve s4 a4 c'\breve s8 b4  }

tenorOneFlex = { \afterGrace g\breve a4 g\breve s4 a4 \bar "|" c'\breve s8 b4 \bar "||" }
tenorOne = { g\breve s4 a4 \bar "|" c'\breve s8 b4 \bar "||"  }
tenorTwoFlex = { \afterGrace e\breve a4 e\breve s4 f4~ \bar "|" f\breve s8 d4 \bar "||" }
tenorTwo = {  e\breve s4 f4~ \bar "|" f\breve s8 d4 \bar "||" }

bassOneFlex = { \afterGrace e\breve e4 e\breve s4 f4 d\breve s8 g4 }
bassOne = { e\breve s4 f4 d\breve s8 g4  }
bassTwoFlex = { \afterGrace c\breve c4 c\breve s4 d4 f,\breve s8 g,4 }
bassTwo = {c\breve s4 d4 f,\breve s8 g,4   }



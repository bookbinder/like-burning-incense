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
    \key d \minor
    \cadenzaOn
    \set tieWaitForNote = ##t
    \autoBeamOff
    %\hide Staff.Stem
}

sopranoOneFlex = { \afterGrace a'\breve^"A†" g'4 \breathe a'\breve g'8 f' g'4 \bar "|" g'\breve f'8 d'4 \bar "||"  }
sopranoOne = { a'\breve^"A" g'8 f' g'4 \bar "|" g'\breve f'8 d'4 \bar "||"  }
sopranoTwoFlex = { \afterGrace a'\breve^"B†" g'4 \breathe a'\breve g'8 f' g'4 \bar "|" g'\breve f'8 d'4 \bar "||"   }
sopranoTwo = { a'\breve^"B" g'8 f' g'4 \bar "|" g'\breve f'8 d'4 \bar "||"  }

altoOneFlex = { \afterGrace c'\breve~ c'4 c'\breve s4 d'4 c'\breve s8 a4 }
altoOne = { c'\breve s4 d'4 c'\breve s8 a4  }
altoTwoFlex = { \afterGrace d'\breve~ d'4~ d'\breve s4 c'4 d'\breve s8 a4  }
altoTwo = { d'\breve s4 c'4 d'\breve s8 a4  }

tenorOneFlex = { \afterGrace f\breve g4 \breathe f\breve~ s4 f4 \bar "|" g\breve s8 f4 \bar "||"  }
tenorOne = { f\breve~ s4 f4 \bar "|" g\breve s8 f4 \bar "||"  }
tenorTwoFlex = { \afterGrace f\breve g4 \breathe f\breve s4 e4 \bar "|" f\breve~ s8 f4 \bar "||" }
tenorTwo = { f\breve s4 e4 \bar "|" f\breve~ s8 f4 \bar "||" }

bassOneFlex = { \afterGrace f\breve e4 f\breve s4 bes,4 a,\breve s8 d4 }
bassOne = { f\breve s4 bes,4 a,\breve s8 d4  }
bassTwoFlex = { \afterGrace d\breve~ d4~ d\breve s4 e4 bes,\breve s8 d4 }
bassTwo = { d\breve s4 e4 bes,\breve s8 d4  }



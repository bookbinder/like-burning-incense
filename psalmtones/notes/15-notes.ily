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
    \key f \major
    \cadenzaOn
    \set tieWaitForNote = ##t
    \autoBeamOff
    %\hide Staff.Stem
}

sopranoOneFlex = { \afterGrace a'\breve^"A†" g'4 \breathe a'\breve g'8 a'4 \bar "|" a'\breve g'8 f' g'4 \bar "||" }
sopranoOne = { a'\breve^"A" g'8 a'4 \bar "|" a'\breve g'8 f' g'4 \bar "||" }
sopranoTwoFlex = { \afterGrace a'\breve^"B†" g'4 \breathe a'\breve g'8 a'4 \bar "|" a'\breve g'8 f' g'4 \bar "||" }
sopranoTwo = {  a'\breve^"B" g'8 a'4 \bar "|" a'\breve g'8 f' g'4 \bar "||" }

altoOneFlex = { \afterGrace f'\breve f'4 f'\breve s8 d'4 f'\breve s4 e'4 }
altoOne = { f'\breve s8 d'4 f'\breve s4 e'4  }
altoTwoFlex = { \afterGrace f'\breve d'4 f'\breve s8 d'4 c'\breve~ s4 c'4  }
altoTwo = { f'\breve s8 d'4 c'\breve~ s4 c'4  }

tenorOneFlex = { \afterGrace c'\breve bes4 \breathe c'\breve s8 a4~ \bar "|" a\breve s4 c'4 \bar "||" }
tenorOne = { c'\breve s8 a4~ \bar "|" a\breve s4 c'4 \bar "||"  }
tenorTwoFlex = { \afterGrace a\breve bes4 a\breve s8 f4~ \bar "|" f\breve s4 e4 \bar "||" }
tenorTwo = { a\breve s8 f4~ \bar "|" f\breve s4 e4 \bar "||" }

bassOneFlex = { \afterGrace f\breve~ f4~ f\breve~ s8 f4 d\breve s4 c4 }
bassOne = { f\breve~ s8 f4 d\breve s4 c4  }
bassTwoFlex = { \afterGrace d\breve~ d4~ d\breve~ s8 d4 a,\breve s4 c4 }
bassTwo = { d\breve~ s8 d4 a,\breve s4 c4 }



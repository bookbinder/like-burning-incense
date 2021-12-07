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

sopranoOneFlex = { \afterGrace a'\breve^"A†" g'4 \breathe a'\breve f'8 g'4 \bar "|" f'\breve e'8 d'4 \bar "||" }
sopranoOne = { a'\breve^"A" f'8 g'4 \bar "|" f'\breve e'8 d'4 \bar "||" }
sopranoTwoFlex = { \afterGrace a'\breve^"B†" g'4 \breathe a'\breve f'8 g'4 \bar "|" f'\breve e'8 d'4 \bar "||"  }
sopranoTwo = { a'\breve^"B" f'8 g'4 \bar "|" f'\breve e'8 d'4 \bar "||" }

altoOneFlex = { \afterGrace f'\breve d'4 f'\breve s8 d'4 bes\breve s8 a4 }
altoOne = { f'\breve s8 d'4 bes\breve s8 a4 }
altoTwoFlex = { \afterGrace d'\breve~ d'4~ d'\breve~ s8 d'4 bes\breve s8 a4}
altoTwo = { d'\breve~ s8 d'4 bes\breve s8 a4 }

tenorOneFlex = { \afterGrace a\breve bes4 \breathe a\breve s8 g4~ \bar "|" g\breve s8 f4 \bar "||" }
tenorOne = { a\breve s8 g4~ \bar "|" g\breve s8 f4 \bar "||" }
tenorTwoFlex = { \afterGrace a\breve bes4 \breathe a\breve s8 bes4 \bar "|" g\breve s8 f4 \bar "||" }
tenorTwo = { a\breve s8 bes4 \bar "|" g\breve s8 f4 \bar "||" }

bassOneFlex = { \afterGrace d\breve~ d4~ d\breve s8 bes,4 g,\breve s8 d4 }
bassOne = { d\breve s8 bes,4 g,\breve s8 d4 }
bassTwoFlex = { \afterGrace f\breve g4 f\breve s8 bes,4 d\breve~ s8 d4 }
bassTwo = { f\breve s8 bes,4 d\breve~ s8 d4 }



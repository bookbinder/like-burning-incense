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
    \key g \major
    \cadenzaOn
    \set tieWaitForNote = ##t
    \autoBeamOff
    %\hide Staff.Stem
}

sopranoOneFlex = {
    r8 g8 a[ b] a4 a \bar "|" g\breve fis8 a\breve b4 \bar "||"
    g8 g e d4 \bar "|" g\breve fis8 a\breve b4 \bar "||"
    r8 b8 b[ a] a g e g[ a] a[ g] g4 \bar "|."
}
sopranoOne = {}
sopranoTwoFlex = {}
sopranoTwo = {}

altoOneFlex = {}
altoOne = {}
altoTwoFlex = {}
altoTwo = {}

tenorOneFlex = {}
tenorOne = {}
tenorTwoFlex = {}
tenorTwo = {}

bassOneFlex = {}
bassOne = {}
bassTwoFlex = {}
bassTwo = {}

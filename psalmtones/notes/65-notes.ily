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
    \key aes \major
    \cadenzaOn
    \set tieWaitForNote = ##t
    \autoBeamOff
    %\hide Staff.Stem
}

sopranoOneFlex = {\afterGrace aes'\breve^"A†" f'4 \breathe aes'\breve f'8 aes' g'4 \bar "|" g'\breve f'8 ees'4 \bar "||"}
sopranoOne = {aes'\breve f'8 aes' g'4 \bar "|" g'\breve f'8 ees'4 \bar "||"}
sopranoTwoFlex = {\afterGrace aes'\breve^"B†" f'4 \breathe aes'\breve f'8 aes' g'4 \bar "|" g'\breve f'8 ees'4 \bar "||"}
sopranoTwo = {aes'\breve f'8 aes' g'4 \bar "|" g'\breve f'8 ees'4 \bar "||"}

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



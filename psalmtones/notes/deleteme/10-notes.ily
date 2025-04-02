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

sopranoOneFlex = { \afterGrace a'\breve^"A†" g'4 \breathe a'\breve g'8 f'4 \bar "|" g'\breve bes'8 a'4 \bar "||"}
sopranoOne = {a'\breve^"A" g'8 f'4 \bar "|" g'\breve bes'8 a'4 \bar "||"}
sopranoShort = { \override Stem.stencil = ##f
                 \afterGrace a'\breve \parenthesize g'4
                 \revert Stem.stencil
                 g'8 f'4 \bar "|" g'\breve bes'8 a'4 \bar "||"  }
sopranoTwoFlex = { \afterGrace a'\breve^"B†" g'4 \breathe a'\breve g'8 f'4 \bar "|" g'\breve bes'8 a'4 \bar "||"}
sopranoTwo = {a'\breve^"B" g'8 f'4 \bar "|" g'\breve bes'8 a'4 \bar "||"}

altoOneFlex = {\afterGrace c'\breve d'4 c'\breve*17/16~ c'4 d'\breve*17/16 f'4}
altoOne = {c'\breve*17/16~ c'4 d'\breve*17/16 f'4}
altoTwoFlex = {\afterGrace e'\breve d'4 e'\breve*17/16 d'4~ d'\breve*17/16 f'4}
altoTwo = {e'\breve*17/16 d'4~ d'\breve*17/16 f'4}

tenorOneFlex = {\afterGrace c'\breve bes4 c'\breve*17/16~ c'4 bes\breve*17/16 c'4}
tenorOne = {c'\breve*17/16~ c'4 bes\breve*17/16 c'4}
tenorTwoFlex = {\afterGrace a\breve bes4 a\breve*17/16~ a4 bes\breve*17/16 c'4}
tenorTwo = {a\breve*17/16~ a4 bes\breve*17/16 c'4}

bassOneFlex = {\afterGrace f\breve g4 f\breve*17/16 a4 g\breve*17/16 f4}
bassOne = {f\breve*17/16 a4 g\breve*17/16 f4}
bassTwoFlex = {\afterGrace c\breve g4 c\breve*17/16 d4 bes,\breve*17/16 f4}
bassTwo = {c\breve*17/16 d4 bes,\breve*17/16 f4}



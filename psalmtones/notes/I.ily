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

sopranoOneFlex = {f'8 g' \afterGrace a'\breve g'8 \breathe
                  a'\breve bes'8 a' g' a'4 \bar "|"
                  a'\breve g'8 f' g'[ a'] \parenthesize g'8 g'4 \bar "||"}

altoOneFlex = {s4 \afterGrace d'\breve~ d'8~ 
               d'\breve~ d'4. e'4
               d'\breve*18/16~ d'4. e'4}

tenorOneFlex = {s4 \afterGrace f\breve g8
                f\breve~ f4. a4
                f\breve*18/16 bes4. c'4}

bassOneFlex = {s4 \afterGrace d\breve~ d8~
               d\breve~ d4. c4
               bes,\breve*18/16 g4. c4}

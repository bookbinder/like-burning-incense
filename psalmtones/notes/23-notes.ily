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

sopranoOneFlex = { \afterGrace aes'\breve^"A†" f'4 \breathe aes'\breve f'8 aes' g'4 \bar "|" f'\breve ees'4 \bar "||"  }
sopranoOne = { aes'\breve^"A" f'8 aes' g'4 \bar "|" f'\breve ees'4 \bar "||" }
sopranoTwoFlex = { \afterGrace aes'\breve^"B†" f'4 \breathe aes'\breve f'8 aes' g'4 \bar "|" f'\breve ees'4 \bar "||" }
sopranoTwo = { aes'\breve^"B" f'8 aes' g'4 \bar "|" f'\breve ees'4 \bar "||" }

altoOneFlex = { \afterGrace c'\breve~ c'4~ c'\breve s4 ees'4 bes\breve~ bes4 }
altoOne = {c'\breve s4 ees'4 bes\breve~ bes4  }
altoTwoFlex = { \afterGrace c'\breve~ c'4~ c'\breve s4 ees'4 bes\breve~ bes4 }
altoTwo = { c'\breve s4 ees'4 bes\breve~ bes4 }

tenorOneFlex = { \afterGrace ees\breve f4 \breathe ees\breve~ s4 ees4 \bar "|" f\breve g4 \bar "||"}
tenorOne = { ees\breve~ s4 ees4 \bar "|" f\breve g4 \bar "||" }
tenorTwoFlex = { \afterGrace aes\breve~ aes4~ \breathe aes\breve s4 c'4 \bar "|" aes\breve g4 \bar "||" }
tenorTwo = { aes\breve s4 c'4 \bar "|" aes\breve g4 \bar "||" }

bassOneFlex = { \afterGrace aes,\breve~ aes,4~ aes,\breve s4 c4 des\breve ees4 }
bassOne = { aes,\breve s4 c4 des\breve ees4 }
bassTwoFlex = { \afterGrace f\breve~ f4~ f\breve s4 c4 des\breve ees4 }
bassTwo = { f\breve s4 c4 des\breve ees4  }



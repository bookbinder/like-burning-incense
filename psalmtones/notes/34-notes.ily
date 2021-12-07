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
    \key des \major
    \cadenzaOn
    \set tieWaitForNote = ##t
    \autoBeamOff
    %\hide Staff.Stem
}

sopranoOneFlex = { \afterGrace aes'\breve^"A†" f'4 \breathe  aes'\breve bes'8 aes'4 \bar "|" f'\breve ees'8 des'4 \bar "||" }
sopranoOne = { aes'\breve^"A" bes'8 aes'4 \bar "|" f'\breve ees'8 des'4 \bar "||" }
sopranoTwoFlex = { \afterGrace aes'\breve^"B†" f'4 \breathe  aes'\breve bes'8 aes'4 \bar "|" f'\breve ees'8 des'4 \bar "||" }
sopranoTwo = { aes'\breve^"B" bes'8 aes'4 \bar "|" f'\breve ees'8 des'4 \bar "||" }

altoOneFlex = { \afterGrace des'\breve~ des'4~ des'\breve s8 f'4 bes\breve s8 aes4 }
altoOne = { des'\breve s8 f'4 bes\breve s8 aes4 }
altoTwoFlex = { \afterGrace des'\breve~ des'4 des'\breve s8 ees'4 c'\breve s8 aes4 }
altoTwo = { des'\breve s8 ees'4 c'\breve s8 aes4 }

tenorOneFlex = { \afterGrace f\breve bes4 \breathe f\breve s8 aes4 \bar "|" ges\breve s8 f4 \bar "||" }
tenorOne = { f\breve s8 aes4 \bar "|" ges\breve s8 f4 \bar "||" }
tenorTwoFlex = { \afterGrace f\breve bes4 \breathe f\breve s8 aes4~ \bar "|" aes\breve s8 f4 \bar "||" }
tenorTwo = { f\breve s8 aes4~ \bar "|" aes\breve s8 f4 \bar "||" }

bassOneFlex = { \afterGrace des\breve~ des4~ des\breve~ s8 des4~ des\breve~ s8 des4 }
bassOne = { des\breve~ s8 des4~ des\breve~ s8 des4 }
bassTwoFlex = { \afterGrace des\breve~ des4~ des\breve s8 c4 aes,\breve s8 des4 }
bassTwo = { des\breve s8 c4 aes,\breve s8 des4 }



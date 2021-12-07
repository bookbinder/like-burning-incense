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
    \key f \minor
    \cadenzaOn
    \set tieWaitForNote = ##t
    \autoBeamOff
    %\hide Staff.Stem
}

sopranoOneFlex = { \afterGrace aes'\breve^"A†" f'4 \breathe aes'\breve bes'8 aes'4 \bar "|" g'\breve ees'8 f'4  \bar "||" }
sopranoOne = { aes'\breve^"A" bes'8 aes'4 \bar "|" g'\breve ees'8 f'4 }
sopranoTwoFlex = { \afterGrace aes'\breve^"B†" f'4 \breathe aes'\breve bes'8 aes'4 \bar "|" g'\breve ees'8 f'4  \bar "||" }
sopranoTwo = { aes'\breve^"B" bes'8 aes'4 \bar "|" g'\breve ees'8 f'4 \bar "||"}

altoOneFlex = { \afterGrace c'\breve des'4 c'\breve s8 des'4 des'\breve s8 c'4 }
altoOne = { c'\breve s8 des'4 des'\breve s8 c'4 }
altoTwoFlex = { \afterGrace f'\breve des'4 f'\breve s8 ees'4~ ees'\breve  s8 c'4}
altoTwo = { f'\breve s8 ees'4~ ees'\breve  s8 c'4 }

tenorOneFlex = { \afterGrace aes\breve bes4 \breathe aes\breve s8 s4 \bar "|" bes\breve s8 aes4 \bar "||" }
tenorOne = { aes\breve s8 s4 \bar "|" bes\breve s8 aes4 \bar "||" }
tenorTwoFlex = { \afterGrace aes\breve bes4 \breathe aes\breve ~ s8 aes4 \bar "|" bes\breve s8 aes4 \bar "||" }
tenorTwo = { aes\breve ~ s8 aes4 \bar "|" bes\breve s8 aes4 \bar "||" }

bassOneFlex = { \afterGrace f\breve ~ f4~ f\breve~ s8 s4 f\breve~ s8 f4  }
bassOne = { f\breve~ s8 s4 f\breve~ s8 f4 }
bassTwoFlex = { \afterGrace des\breve~ des4~ des\breve s8 c4~ c\breve s8 f4 }
bassTwo = { des\breve s8 c4~ c\breve s8 f4 }



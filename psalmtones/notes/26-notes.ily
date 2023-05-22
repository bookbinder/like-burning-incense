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

sopranoOneFlex = { \afterGrace aes'\breve f'4 \breathe aes'\breve bes'8 aes'4 \bar "|" f'\breve g'8 ees'4 \bar "||" }
sopranoOne = { aes'\breve^"A" bes'8 aes'4 \bar "|" f'\breve g'8 ees'4 \bar "||" }
sopranoTwoFlex = { \afterGrace aes'\breve^"B†" f'4 \breathe aes'\breve bes'8 aes'4 \bar "|" f'\breve g'8 ees'4 \bar "||" }
sopranoTwo = { aes'\breve^"B" bes'8 aes'4 \bar "|" f'\breve g'8 ees'4 \bar "||" }

altoOneFlex = { \afterGrace c'\breve c'4 c'\breve s8 ees'4   des'\breve s8 bes4 }
altoOne = { c'\breve s8 ees'4   des'\breve s8 bes4 }
altoTwoFlex = { \afterGrace ees'\breve des'4 ees'\breve s8 c'4  des'\breve s8 bes4 }
altoTwo = { ees'\breve s8 c'4  des'\breve s8 bes4 }

tenorOneFlex = { \afterGrace ees\breve f4 \breathe ees\breve s8 aes4~ \bar "|" aes\breve s8 g4 }
tenorOne = { ees\breve s8 aes4~ \bar "|" aes\breve s8 g4 }
tenorTwoFlex = { \afterGrace aes\breve bes4 \breathe aes\breve~ s8 aes4~ \bar "|" aes\breve s8 g4 \bar "||" }
tenorTwo = { aes\breve~ s8 aes4~ \bar "|" aes\breve s8 g4 \bar "||" }

bassOneFlex = { \afterGrace aes,\breve~ aes,4~ aes,\breve s8 c4  des\breve s8 ees4 }
bassOne = { aes,\breve s8 c4  des\breve s8 ees4 }
bassTwoFlex = { \afterGrace c\breve f4 c\breve s8 f4  bes,\breve s8 ees4 }
bassTwo = { c\breve s8 f4  bes,\breve s8 ees4 }



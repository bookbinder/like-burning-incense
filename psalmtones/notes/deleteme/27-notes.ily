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

sopranoOneFlex = { \afterGrace aes'\breve^"DON'T USE THIS. USE 26 INSTEAD." f'4 \breathe aes'\breve bes'8 aes'4 \bar "|" f'\breve g'8 ees'4 \bar "||"  }
sopranoOne = { aes'\breve^"A" bes'8 aes'4 \bar "|" f'\breve g'8 ees'4 \bar "||" }
sopranoShort = { \override Stem.stencil = ##f
                 \afterGrace aes'\breve \parenthesize f'4
                 \revert Stem.stencil
                 bes'8 aes'4 \bar "|" f'\breve g'8 ees'4 \bar "||"  }
sopranoTwoFlex = { \afterGrace aes'\breve^"B†" f'4 \breathe aes'\breve bes'8 aes'4 \bar "|" f'\breve g'8 ees'4 \bar "||" }
sopranoTwo = { aes'\breve^"B" bes'8 aes'4 \bar "|" f'\breve g'8 ees'4 \bar "||" }

altoOneFlex = { f'\breve f'\breve s8 ees'4  des'\breve s8 bes4}
altoOne = { f'\breve s8 ees'4  des'\breve s8 bes4 }
altoTwoFlex = { \afterGrace c'\breve~ c'4~ c'\breve~ s8 c'4   des'\breve s8 bes4 }
altoTwo = { c'\breve~ s8 c'4   des'\breve s8 bes4 }

tenorOneFlex = { \afterGrace des'\breve~ des'4~ \breathe des'\breve s8 c'4 \bar "|" bes\breve~ s8 bes4 \bar "||" }
tenorOne = { des'\breve s8 c'4 \bar "|" bes\breve~ s8 bes4 \bar "||" }
tenorTwoFlex = { \afterGrace aes\breve bes4 \breathe aes\breve~ s8 aes4~ \bar "|" aes\breve s8 g4 \bar "||" }
tenorTwo = { aes\breve~ s8 aes4~ \bar "|" aes\breve s8 g4 \bar "||" }

bassOneFlex = { \afterGrace s\breve bes4  s\breve s8 c'4  s\breve s8 g4  }
bassOne = { s\breve s8 c'4  s\breve s8 g4 }
bassTwoFlex = { \afterGrace f\breve~ f4 f\breve s8 ees4  des\breve s8 ees4 }
bassTwo = { f\breve s8 ees4  des\breve s8 ees4 }



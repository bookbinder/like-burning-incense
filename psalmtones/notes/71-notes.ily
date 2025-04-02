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

sopranoOneFlex = { \afterGrace aes'\breve^"A†" f'4 \breathe  aes'\breve c''8 bes'4 \bar "|" aes'\breve f'4 \bar "||" }
sopranoOne = { aes'\breve^"A" c''8 bes'4 \bar "|" aes'\breve f'4 \bar "||" }
sopranoShort = { \override Stem.stencil = ##f
                 \afterGrace aes'\breve*1/2 \parenthesize f'4_"+"
                 \revert Stem.stencil
                 c''8 bes'4 \bar "|" \allowBreak aes'\breve*1/2 f'4 \bar "||"  }
sopranoTwoFlex = { \afterGrace aes'\breve^"B†" f'4 \breathe  aes'\breve c''8 bes'4 \bar "|" aes'\breve f'4 \bar "||" }
sopranoTwo = { aes'\breve^"B" c''8 bes'4 \bar "|" aes'\breve f'4 \bar "||" }

altoOneFlex = { \afterGrace c'\breve des'4 c'\breve s8 des'4 ees'\breve c'4 }
altoOne = { c'\breve s8 des'4 ees'\breve c'4 }
altoTwoFlex = { \afterGrace c'\breve des'4 c'\breve s8 f'4 des'\breve c'4 }
altoTwo = { c'\breve s8 f'4 des'\breve c'4 }

tenorOneFlex = { \afterGrace f\breve bes4 \breathe f\breve~ s8 f4 \bar "|" aes\breve~ aes4 \bar "||" }
tenorOne = { f\breve~ s8 f4 \bar "|" aes\breve~ aes4 \bar "||" }
tenorTwoFlex = { \afterGrace f\breve bes4 \breathe f\breve s8 bes4~ \bar "|" bes\breve aes4 \bar "||" }
tenorTwo = { f\breve s8 bes4~ \bar "|" bes\breve aes4 \bar "||" }

bassOneFlex = { \afterGrace f\breve~ f4~ f\breve s8 des4 c\breve f4 }
bassOne = { f\breve s8 des4 c\breve f4 }
bassTwoFlex = { \afterGrace f\breve~ f4~ f\breve s8 des4 f\breve~ f4 }
bassTwo = { f\breve s8 des4 f\breve~ f4 }



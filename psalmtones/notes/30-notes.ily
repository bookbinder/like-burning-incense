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
    \key ges \major
    \cadenzaOn
    \set tieWaitForNote = ##t
    \autoBeamOff
    %\hide Staff.Stem
}

sopranoOneFlex = { \afterGrace aes'\breve^"A†" f'4 \breathe  aes'\breve ces''8 bes'4 \bar "|" aes'\breve f'4 \bar "||" }
sopranoOne = { aes'\breve^"A" ces''8 bes'4 \bar "|" aes'\breve f'4 \bar "||" }
sopranoShort = { \override Stem.stencil = ##f
                 \afterGrace aes'\breve*1/2 \parenthesize f'4_"+"
                 \revert Stem.stencil
                 ces''8 bes'4 \bar "|" \allowBreak aes'\breve*1/2 f'4 \bar "||"  }
sopranoTwoFlex = { \afterGrace aes'\breve^"B†" f'4 \breathe  aes'\breve ces''8 bes'4 \bar "|" aes'\breve f'4 \bar "||" }
sopranoTwo = { aes'\breve^"B" ces''8 bes'4 \bar "|" aes'\breve f'4 \bar "||" }

altoOneFlex = { \afterGrace ees'\breve des'4 ees'\breve s8 des'4~ des'\breve~ des'4 }
altoOne = { ees'\breve s8 des'4~ des'\breve~ des'4 }
altoTwoFlex = { \afterGrace ees'\breve des'4 ees'\breve s8 des'4~ des'\breve~ des'4 }
altoTwo = { ees'\breve s8 des'4~ des'\breve~ des'4 }

tenorOneFlex = { \afterGrace aes\breve bes4 \breathe aes\breve s8 bes4 \bar "|" ges\breve aes4 \bar "||" }
tenorOne = { aes\breve s8 bes4 \bar "|" ges\breve aes4 \bar "||" }
tenorTwoFlex = { \afterGrace ges\breve bes4 \breathe ges\breve~ s8 ges4 \bar "|" f\breve aes4 \bar "||" }
tenorTwo = { ges\breve~ s8 ges4 \bar "|" f\breve aes4 \bar "||" }

bassOneFlex = { \afterGrace ces\breve des4 ces\breve s8 ges4 des\breve ~ des4 }
bassOne = { ces\breve s8 ges4 des\breve ~ des4 }
bassTwoFlex = { \afterGrace ces\breve des4 ces\breve s8 ges,4 des\breve~ des4 }
bassTwo = { ces\breve s8 ges,4 des\breve~ des4 }



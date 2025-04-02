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

sopranoOneFlex = { \afterGrace aes'\breve^"A†" f'4 \breathe  aes'\breve bes'8 aes'4 \bar "|" ges'\breve ees'8 des'4 \bar "||" }
sopranoOne = { aes'\breve^"A" bes'8 aes'4 \bar "|" ges'\breve ees'8 des'4 \bar "||" }
sopranoShort = { \override Stem.stencil = ##f
                 \afterGrace aes'\breve*1/2 \parenthesize f'4_"+"
                 \revert Stem.stencil
                 bes'8 aes'4 \bar "|" \allowBreak ges'\breve*1/2 ees'8 des'4 \bar "||"  }
sopranoTwoFlex = { \afterGrace aes'\breve^"B†" f'4 \breathe  aes'\breve bes'8 aes'4 \bar "|" ges'\breve ees'8 des'4 \bar "||" }
sopranoTwo = { aes'\breve^"B" bes'8 aes'4 \bar "|" ges'\breve ees'8 des'4 \bar "||" }

altoOneFlex = { \afterGrace f'\breve~ f'4~ f'\breve s8 des'4 bes\breve s8 des'4 }
altoOne = { f'\breve s8 des'4 bes\breve s8 des'4 }
altoTwoFlex = { \afterGrace des'\breve~ des'4~ des'\breve s8 ces'4 des'\breve s8 aes4 }
altoTwo = { des'\breve s8 ces'4 des'\breve s8 aes4 }

tenorOneFlex = { \afterGrace aes\breve bes4 \breathe aes\breve s8 f4 \bar "|" ges\breve s8 aes4 \bar "||" }
tenorOne = { aes\breve s8 f4 \bar "|" ges\breve s8 aes4 \bar "||" }
tenorTwoFlex = { \afterGrace f\breve bes4 \breathe f\breve s8 ges4~ \bar "|" ges\breve s8 f4 \bar "||" }
tenorTwo = { f\breve s8 ges4~ \bar "|" ges\breve s8 f4 \bar "||" }

bassOneFlex = { \afterGrace des\breve~ des4~ des\breve~ s8 des4 ees\breve s8 f4 }
bassOne = { des\breve~ s8 des4 ees\breve s8 f4 }
bassTwoFlex = { \afterGrace des\breve~ des4~ des\breve s8 ees4 bes,\breve s8 des4 }
bassTwo = { des\breve s8 ees4 bes,\breve s8 des4 }



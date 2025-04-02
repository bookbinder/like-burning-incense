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

sopranoOneFlex = {  aes'\breve^"A†" f'4 \breathe  aes'\breve bes'8 aes'4 \bar "|" f'\breve ees'8 des'4 \bar "||" }
sopranoOne = { aes'\breve^"A" bes'8 aes'4 \bar "|" f'\breve ees'8 des'4 \bar "||" }
sopranoShort = { \override Stem.stencil = ##f
                 \afterGrace aes'\breve*1/2 \parenthesize f'4_"+"
                 \revert Stem.stencil
                 bes'8 aes'4 \bar "|" \allowBreak f'\breve*1/2 ees'8 des'4 \bar "||"  }
sopranoTwoFlex = {  aes'\breve^"B†" f'4 \breathe  aes'\breve bes'8 aes'4 \bar "|" f'\breve ees'8 des'4 \bar "||" }
sopranoTwo = { aes'\breve^"B" bes'8 aes'4 \bar "|" f'\breve ees'8 des'4 \bar "||" }

altoOneFlex = {  des'\breve~ des'4~ des'\breve s8 f'4 bes\breve s8 aes4 }
altoOne = { des'\breve s8 f'4 bes\breve s8 aes4 }
altoTwoFlex = {  des'\breve~ des'4 des'\breve s8 ees'4 c'\breve s8 aes4 }
altoTwo = { des'\breve s8 ees'4 c'\breve s8 aes4 }

tenorOneFlex = {  f\breve bes4 \breathe f\breve s8 aes4 \bar "|" ges\breve s8 f4 \bar "||" }
tenorOne = { f\breve s8 aes4 \bar "|" ges\breve s8 f4 \bar "||" }
tenorTwoFlex = {  f\breve bes4 \breathe f\breve s8 aes4~ \bar "|" aes\breve s8 f4 \bar "||" }
tenorTwo = { f\breve s8 aes4~ \bar "|" aes\breve s8 f4 \bar "||" }

bassOneFlex = {  des\breve~ des4~ des\breve~ s8 des4~ des\breve~ s8 des4 }
bassOne = { des\breve~ s8 des4~ des\breve~ s8 des4 }
bassTwoFlex = {  des\breve~ des4~ des\breve s8 c4 aes,\breve s8 des4 }
bassTwo = { des\breve s8 c4 aes,\breve s8 des4 }



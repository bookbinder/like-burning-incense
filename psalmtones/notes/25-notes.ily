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

sopranoOneFlex = {   }
sopranoOne = { aes'\breve^"A" g'8 f' aes'4 \bar "|" f'\breve ees'8 f'4 \bar "||" }
sopranoShort = { \override Stem.stencil = ##f
                 \afterGrace aes'\breve*1/2 \parenthesize g'4_"+"
                 \revert Stem.stencil
                 g'8 f' aes'4 \bar "|" \allowBreak f'\breve*1/2 ees'8 f'4 \bar "||"  }
sopranoTwoFlex = {  }
sopranoTwo = { aes'\breve^"B" g'8 f' aes'4 \bar "|" f'\breve ees'8 f'4 \bar "||" }

altoOneFlex = {  }
altoOne = { c'\breve s4 ees'4 \parenthesize bes\breve s8 des'4 }_"+"
altoTwoFlex = {  }
altoTwo = { f'\breve s4 c'4 bes\breve s8 des'4 }

tenorOneFlex = {  }
tenorOne = { aes\breve~ s4 aes4 \bar "|" bes\breve s8 aes4 \bar "||" }
tenorTwoFlex = {  }
tenorTwo = { bes\breve s4 aes4 \bar "|" f\breve s8 aes4 \bar "||" }

bassOneFlex = {  }
bassOne = { f\breve s4 c4 \bar "|" des\breve~ s8 des4 des\breve s4 f4 des\breve~ s8 des4 }
bassTwoFlex = {  }
bassTwo = {  }



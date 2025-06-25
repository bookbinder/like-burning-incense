\version "2.18.2"

divisioMinima = {
    \bar ""
    \once \override BreathingSign.stencil = #ly:breathing-sign::divisio-minima
    \once \override BreathingSign.Y-offset = #0
    \bar "'"
}

dm = {
    \bar ""
    \once \override BreathingSign.stencil = #ly:breathing-sign::divisio-maior
    \once \override BreathingSign.Y-offset = #0
    \bar "'"
}
divisioMaxima = {
    \bar ""
    \once \override BreathingSign.stencil = #ly:breathing-sign::divisio-maxima
    \once \override BreathingSign.Y-offset = #0
    \bar "'"
}

fi = { \bar "||" }
ll = { \once \override LyricText.self-alignment-X = #LEFT }
sm = { \set melismaBusyProperties = #'() }
usm = { \unset melismaBusyProperties }

toneStruct = "33"

global = {
    \key f \minor
    \cadenzaOn
    \set tieWaitForNote = ##t
    \autoBeamOff
    %\hide Staff.Stem
}

sopranoOneFlex = { \afterGrace aes'\breve^"A†" f'4 \bar "'" aes'\breve bes'8 aes'4 \bar "|" aes'\breve g'8 ees'8 f'4  \bar "||" }
sopranoOne = { aes'\breve^"A" bes'8 aes'4 \bar "|" aes'\breve g'8 ees'8 f'4  \bar "||" }
sopranoShort = { \override Stem.stencil = ##f
                 \afterGrace aes'\breve*1/2 \parenthesize f'4_"+"
                 \revert Stem.stencil
                 bes'8 aes'4 \bar "|" \allowBreak aes'\breve*1/2 g'8 ees'8 f'4 \bar "||"  }
sopranoTwoFlex = { \afterGrace aes'\breve^"B†" f'4 \bar "'" aes'\breve bes'8 aes'4 \bar "|" aes'\breve g'8 ees'8 f'4  \bar "||" }
sopranoTwo = { aes'\breve^"B" bes'8 aes'4 \bar "|" aes'\breve g'8 ees'8 f'4  \bar "||" }

altoOneFlex = { \afterGrace c'\breve des'4 c'\breve s8 f'4 ees'\breve s4 c'4}
altoOne = { c'\breve s8 f'4 ees'\breve s4 c'4 }
altoTwoFlex = { \afterGrace c'\breve des'4 c'\breve s8 des'4~ des'\breve s4 c'4 }
altoTwo = { c'\breve s8 des'4~ des'\breve s4 c'4 }

tenorOneFlex = { \afterGrace aes\breve bes4 \bar "'" aes\breve~ s8 aes4~ \bar "|" aes\breve~ s4 aes4 \bar "||" }
tenorOne = { aes\breve~ s8 aes4~ \bar "|" aes\breve~ s4 aes4 \bar "||" }
tenorTwoFlex = { \afterGrace aes\breve bes4 \bar "'" aes\breve~ s8 aes4 \bar "|" bes\breve s4 aes4 \bar "||" }
tenorTwo = { aes\breve~ s8 aes4 \bar "|" bes\breve s4 aes4 \bar "||" }

bassOneFlex = { \afterGrace f\breve~ f4~ f\breve s8 des4 c\breve s4 f4 }
bassOne = { f\breve s8 des4 c\breve s4 f4 }
bassTwoFlex = { \afterGrace f\breve~ f4~ f\breve~ s8 f4~ f\breve~ s4 f4 }
bassTwo = { f\breve~ s8 f4~ f\breve~ s4 f4 }



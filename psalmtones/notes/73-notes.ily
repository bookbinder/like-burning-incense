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
    \key a \minor
    \cadenzaOn
    \set tieWaitForNote = ##t
    \autoBeamOff
    %\hide Staff.Stem
}

sopranoOneFlex = { \afterGrace g'\breve^"A†" f'4 \breathe \bar "" g'\breve a'8 g'4 \bar "|" g'\breve f'8 e'4 \bar "||"  }
sopranoOne = { g'\breve^"A" a'8 g'4 \bar "|" g'\breve f'8 e'4 \bar "||" }
sopranoShort = { \override Stem.stencil = ##f
                 \afterGrace g'\breve*1/2 \parenthesize f'4_"+"
                 \revert Stem.stencil
                 a'8 g'4 \bar "|" \allowBreak g'\breve*1/2 f'8 e'4 \bar "||"  }
sopranoTwoFlex = { \afterGrace g'\breve^"B†" f'4 \breathe \bar "" g'\breve a'8 g'4 \bar "|" g'\breve f'8 e'4 \bar "||"  }
sopranoTwo = { g'\breve^"B" a'8 g'4 \bar "|" g'\breve f'8 e'4 \bar "||" }

altoOneFlex = { \afterGrace c'\breve c'4 c'\breve~ s8 c'4 d'\breve s8 e'4 }
altoOne = { c'\breve~ s8 c'4 d'\breve s8 e'4 }
altoTwoFlex = { \afterGrace e'\breve c'4 e'\breve~ s8 c'4 a\breve s8 c'4 }
altoTwo = { e'\breve s8 c'4 a\breve s8 c'4 }

tenorOneFlex = { \afterGrace e\breve a4 \bar "" e\breve s8 g4 \bar "|" f\breve s8 a4 \bar "||" }
tenorOne = { e\breve s8 g4 \bar "|" f\breve s8 a4 \bar "||" }
tenorTwoFlex = { \afterGrace g\breve a4 \bar "" g\breve s8 e4 \bar "|" f\breve s8 a4 \bar "||" }
tenorTwo = { g\breve s8 e4 \bar "|" f\breve s8 a4 \bar "||" }

bassOneFlex = { \afterGrace c\breve~ c4~ c\breve s8 e4 d\breve s8 c4 }
bassOne = {  c\breve s8 e4 d\breve s8 c4 }
bassTwoFlex = { c\breve~ c\breve s8 e4 d\breve s8 a,4 }
bassTwo = { c\breve s8 e4 d\breve s8 a,4 }



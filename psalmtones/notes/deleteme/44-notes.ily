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

sopranoOneFlex = { \afterGrace a'\breve^"A†" g'4 \breathe a'\breve g'8 e'4 \bar "|" g'\breve e'4 \bar "||" }
sopranoOne = { a'\breve^"A" g'8 e'4 \bar "|" g'\breve e'4 \bar "||" }
sopranoShort = { \override Stem.stencil = ##f
                 \afterGrace a'\breve \parenthesize g'4
                 \revert Stem.stencil
                 g'8 e'4 \bar "|" g'\breve e'4 \bar "||"  }
sopranoTwoFlex = { \afterGrace a'\breve^"B†" g'4 \breathe a'\breve g'8 e'4 \bar "|" g'\breve e'4 \bar "||"  }
sopranoTwo = { a'\breve^"B" g'8 e'4 \bar "|" g'\breve e'4 \bar "||" }

altoOneFlex = { \afterGrace d'\breve c'4 d'\breve s8 c'4~ c'\breve e'4 }
altoOne = { d'\breve s8 c'4~ c'\breve e'4 }
altoTwoFlex = { \afterGrace c'\breve~ c'4~ c'\breve s8 e'4 d'\breve c'4 }
altoTwo = { c'\breve s8 e'4 d'\breve c'4 }

tenorOneFlex = { \afterGrace a\breve c'4 \breathe a\breve s8 c'4 \bar "|" a\breve~ a4 \bar "||" }
tenorOne = { a\breve s8 c'4 \bar "|" a\breve~ a4 \bar "||" }
tenorTwoFlex = {\afterGrace f\breve g4 \breathe f\breve s8 g4 \bar "|" f\breve a4 \bar "||"  }
tenorTwo = { f\breve s8 g4 \bar "|" f\breve a4 \bar "||" }

bassOneFlex = { \afterGrace f\breve e4 f\breve s8 a4 e\breve c4 }
bassOne = {f\breve s8 a4 e\breve c4  }
bassTwoFlex = { \afterGrace f\breve e4 f\breve s8 c4 d\breve a,4 }
bassTwo = { f\breve s8 c4 d\breve a,4 }



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
                 \afterGrace a'\breve*1/2 \parenthesize g'4_"+"
                 \revert Stem.stencil
                 g'8 e'4 \bar "|" \allowBreak g'\breve*1/2 e'4 \bar "||"  }
sopranoTwoFlex = { \afterGrace a'\breve^"B†" g'4 \breathe a'\breve g'8 e'4 \bar "|" g'\breve e'4 \bar "||" }
sopranoTwo = { a'\breve ^"B" g'8 e'4 \bar "|" g'\breve e'4 \bar "||"  }

altoOneFlex = { \afterGrace e'\breve e'4 e'\breve s8 e'4~ e'\breve~ e'4 }
altoOne = { e'\breve s8 e'4~ e'\breve~ e'4  }
altoTwoFlex = { \afterGrace d'\breve e'4 e'\breve s8 e'4 d'\breve c'4  }
altoTwo = { e'\breve s8 e'4 d'\breve c'4   }

tenorOneFlex = { \afterGrace c'\breve c'4 c'\breve s8 b4~ \bar "|" b\breve c'4 \bar "||" }
tenorOne = {  c'\breve s8 b4~ \bar "|" b\breve c'4 \bar "||" }
tenorTwoFlex = { \afterGrace a\breve b4 a\breve s8 g4 \bar "|" b\breve e4 \bar "||" }
tenorTwo = { a\breve s8 g4 \bar "|" b\breve e4 \bar "||" }

bassOneFlex = { \afterGrace a\breve s4 a\breve s8 g4 e\breve a4 }
bassOne = { a\breve s8 g4 e\breve a4  }
bassTwoFlex = { \afterGrace f\breve g4 f\breve s8 c4 g,\breve a,4 }
bassTwo = { f\breve s8 c4 g,\breve a,4 }



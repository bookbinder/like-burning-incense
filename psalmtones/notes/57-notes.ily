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
    \key c \major
    \cadenzaOn
    \set tieWaitForNote = ##t
    \autoBeamOff
    %\hide Staff.Stem
}

sopranoOneFlex = { \afterGrace g'\breve^"A†" e'4 \breathe \bar "" g'\breve a'8 g'4 \bar "|" a'\breve g'8 e'4 \bar "||" }
sopranoOne = { g'\breve^"A" a'8 g'4 \bar "|" a'\breve g'8 e'4 \bar "||"  }
sopranoTwoFlex = { \afterGrace g'\breve^"B†" e'4 \breathe \bar "" g'\breve a'8 g'4 \bar "|" a'\breve g'8 e'4 \bar "||"  }
sopranoTwo = { g'\breve^"B" a'8 g'4 \bar "|" a'\breve g'8 e'4 \bar "||"  }

altoOneFlex = {  }
altoOne = {   }
altoTwoFlex = {  }
altoTwo = {   }

tenorOneFlex = {  }
tenorOne = {  }
tenorTwoFlex = { }
tenorTwo = { }

bassOneFlex = { }
bassOne = {  }
bassTwoFlex = { }
bassTwo = {  }



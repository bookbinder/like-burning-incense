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
    \key f \major
    \cadenzaOn
    \set tieWaitForNote = ##t
    \autoBeamOff
    %\hide Staff.Stem
}

sopranoOneFlex = { \afterGrace a'\breve^"A†" g'4 \breathe a'\breve g'8 a' f'4 \bar "|" g'\breve bes'8 a'4 \bar "||" }
sopranoOne = { a'\breve^"A" g'8 a' f'4 \bar "|" g'\breve bes'8 a'4 \bar "||" }
sopranoShort = { \override Stem.stencil = ##f
                 \afterGrace a'\breve \parenthesize g'4
                 \revert Stem.stencil
                 g'8 a'8 f'4 \bar "|" g'\breve bes'8 a'4 \bar "||"  }
sopranoTwoFlex = { \afterGrace a'\breve^"B†" g'4 \breathe a'\breve g'8 a' f'4 \bar "|" g'\breve bes'8 a'4 \bar "||" }
sopranoTwo = {  a'\breve^"B" g'8 a' f'4 \bar "|" g'\breve bes'8 a'4 \bar "||" }

altoOneFlex = { \afterGrace c'\breve d'4 c'\breve~ s4 c'4 d'\breve s8 f'4 }
altoOne = { c'\breve~ s4 c'4 d'\breve s8 f'4  }
altoTwoFlex = { \afterGrace e'\breve d'4 e'\breve s4 d'4~ d'\breve s8 f'4  }
altoTwo = {  e'\breve s4 d'4~ d'\breve s8 f'4  }

tenorOneFlex = { \afterGrace c'\breve bes4 \breathe c'\breve s4 a4 \bar "|" bes\breve s8 c'4 \bar "||"}
tenorOne = { c'\breve s4 a4 \bar "|" bes\breve s8 c'4 \bar "||"  }
tenorTwoFlex = { \afterGrace a\breve bes4 \breathe a\breve~ s4 a4 \bar "|" bes\breve s8 c'4 \bar "||" }
tenorTwo = { a\breve~ s4 a4 \bar "|" bes\breve s8 c'4 \bar "||"  }

bassOneFlex = { \afterGrace f\breve g4 f\breve s4 a4  g\breve s8 f4 }
bassOne = { f\breve s4 a4  g\breve s8 f4  }
bassTwoFlex = { \afterGrace c\breve g4 c\breve s4 d4  bes,\breve s8 f4 }
bassTwo = { c\breve s4 d4  bes,\breve s8 f4  }



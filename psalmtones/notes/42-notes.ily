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

sopranoOneFlex = { \afterGrace a'\breve*1/4^"A†" g'4 \breathe \bar "" a'\breve*1/4 g'8 f' g'4 \bar "|" g'\breve*1/4 a'8 d'4 \bar "||" }
sopranoOne = { a'\breve*1/4^"A" g'8 f' g'4 \bar "|" g'\breve*1/4 a'8 d'4 \bar "||" }
sopranoTwoFlex = { \afterGrace a'\breve*1/4^"B†" g'4 \breathe \bar "" a'\breve*1/4 g'8 f' g'4 \bar "|" g'\breve*1/4 a'8 d'4 \bar "||"  }
sopranoTwo = { a'\breve*1/4^"B" g'8 f' g'4 \bar "|" g'\breve*1/4 a'8 d'4 \bar "||"  }

altoOneFlex = { \afterGrace c'\breve*1/4~ c'4~ \breathe c'\breve*3/8( d'4)  c'\breve*5/16  a4 }
altoOne = {c'\breve*3/8( d'4)  c'\breve*5/16  a4 }
altoTwoFlex = { \afterGrace d'\breve*1/4~ d'4~ \breathe d'\breve*3/8( c'4) d'\breve*5/16  a4  }
altoTwo = {d'\breve*3/8( c'4) d'\breve*5/16  a4  }

tenorOneFlex = { \afterGrace f\breve*1/4 g4 \breathe f\breve*3/8 bes4 \bar "|" e\breve*5/16 f4 \bar "||" }
tenorOne = {f\breve*3/8 bes4 \bar "|" e\breve*5/16 f4 \bar "||" }
tenorTwoFlex = { \afterGrace f\breve*1/4 g4 \breathe f\breve*3/8 e4 \bar "|" f\breve*5/16~  f4 \bar "||" }
tenorTwo = {f\breve*3/8 e4 \bar "|" f\breve*5/16~  f4 \bar "||" }

bassOneFlex = { \afterGrace f\breve*1/4 e4 \breathe f\breve*3/8 bes,4  a,\breve*5/16 d4 }
bassOne = {f\breve*3/8 bes,4  a,\breve*5/16 d4 }
bassTwoFlex = { \afterGrace d\breve*1/4~ d4~ \breathe d\breve*3/8 e4 bes,\breve*5/16  d4 }
bassTwo = {d\breve*3/8 e4 bes,\breve*5/16  d4 }



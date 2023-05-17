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
    \key cis \minor
    \cadenzaOn
    \set tieWaitForNote = ##t
    \autoBeamOff
    %\hide Staff.Stem
}

sopranoOneFlex = { \afterGrace gis'\breve^"A†" fis'4 \breathe \bar "" gis'\breve fis'8 gis'4 \bar "|" fis'\breve e'8 cis'4 \bar "||" }
sopranoOne = { gis'\breve^"A" fis'8 gis'4 \bar "|" fis'\breve e'8 cis'4 \bar "||"  }
sopranoTwoFlex = { \afterGrace gis'\breve^"B†" fis'4 \breathe \bar "" gis'\breve fis'8 gis'4 \bar "|" fis'\breve e'8 cis'4 \bar "||"  }
sopranoTwo = { gis'\breve^"B" fis'8 gis'4 \bar "|" fis'\breve e'8 cis'4 \bar "||"  }

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



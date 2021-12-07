\version "2.18.2"

%†



\paper {
    print-page-number = #f
    %indent = 0
}

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
    \key ges \major
    \cadenzaOn
    \set tieWaitForNote = ##t
    \autoBeamOff
    %\hide Staff.Stem
}

text = \lyricmode {
	\set includeGraceNotes = ##t
}
   

sopranoAnt = { }
sopranoOneFlex = { \afterGrace aes'\breve^"A†" f'4 \breathe  aes'\breve f'8 ges'8 aes'4 \bar "|" ges'\breve ees'8 des'4 \bar "||" }
sopranoOne = {  }
sopranoTwoFlex = {  }
sopranoTwo = {  }

altoAnt = {  }
altoOneFlex = {  }
altoOne = {  }
altoTwoFlex = {  }
altoTwo = {  }

tenorAnt = {  }
tenorOneFlex = {  }
tenorOne = {  }
tenorTwoFlex = {  }
tenorTwo = {  }

bassAnt = {  }
bassOneFlex = {  }
bassOne = {  }
bassTwoFlex = {  }
bassTwo = {  }

sopMusic = {
    \global
    \voiceOne
    \sopranoOneFlex
    \sopranoTwoFlex
    \sopranoOne
    \sopranoTwo
}
altoMusic = {
    \global
    \voiceTwo
    \altoOneFlex
    \altoTwoFlex
    \altoOne
    \altoTwo
}
    
tenorMusic = {
    \global
    \voiceOne
    \tenorOneFlex
    \tenorTwoFlex
    \tenorOne
    \tenorTwo
}

bassMusic = {
    \global
    \voiceTwo
    \bassOneFlex
    \bassTwoFlex
    \bassOne
    \bassTwo
}

\score {
    
    \header {
            %piece = \markup { \fontsize #2 \bold "LBI_3a" }
            }
    <<
        \transpose e e {
    	
    	
        
        \new ChoirStaff \with { instrumentName = #"LBI_17D" } 
            <<
                \new Staff ="up"
                    <<
                        \clef treble
                        \accidentalStyle forget
						\new Voice = "Soprano" \sopMusic
                        \new Voice = "Alto" \altoMusic
                        %\new Lyrics \lyricsto Soprano \text
                    >>
                \new Staff ="down"
                    <<
                        \clef bass
						\accidentalStyle forget
                        \new Voice = "Tenor" \tenorMusic
                        \new Voice = "Bass" \bassMusic
                    >>
            >>
    }
    >>
    
    \layout 
        { 
            ragged-last = ##t
            \context 
                { 
                    \Staff 
                    \remove Time_signature_engraver 
                } 

  } 
    
    }
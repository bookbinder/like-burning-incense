\version "2.20.0"
\include "../lbi_defs.ily"

%\include "../psalmtones/.ly"
%psalmtone = # ""

\header {
    psalm_title = "Canticle, See Revelation 19:1-7"
    psalm_subtitle = "The wedding of the lamb"
    %psalm_subsubtitle = "Subsubtitle"
}

global = {
    \key g \major
    \cadenzaOn
    \set tieWaitForNote = ##t
    \autoBeamOff
}


textA = \lyricmode {
    \set includeGraceNotes = ##t
    \override InstrumentName #'X-offset = #4
    \override InstrumentName #'font-series = #'bold
    \set stanza = # "1. "
    \set shortVocalName = "1."
    \set stanza = # "1. "
    Al -- le -- lu -- ia.
    \ll "Salvation, glory" and 
    \ll "pow'r to our" God: Al -- le -- lu -- ia  
    \ll "his judgments" are 
    \ll "honest and" true. Al -- le -- lu -- ia, Al -- le -- lu -- ia. 
}
textB = \lyricmode {
    \set includeGraceNotes = ##t
    \override InstrumentName #'X-offset = #4
    \override InstrumentName #'font-series = #'bold
    \set stanza = # "2. "
    \set shortVocalName = "2."    
    \set stanza = # "2. "
    Al -- le -- lu -- ia.
    \ll "Sing praise to our God," all \ll "you his" servants,
    Al -- le -- lu -- ia.
    \ll "all who worship him reverent" -- ly, \ll "great and" small.
    Al -- le -- lu -- ia, Al -- le -- lu -- ia.
}
textC = \lyricmode {
    \set includeGraceNotes = ##t
    \override InstrumentName #'X-offset = #4
    \override InstrumentName #'font-series = #'bold
    \set stanza = # "3. "
    \set shortVocalName = "3."    
    \set stanza = # "3. "
    Al -- le -- lu -- ia.
    \ll "The Lord our all-power" -- ful \ll "God is" King;
    Al -- le -- lu -- ia.
    \ll "let us rejoice, sing praise," and \ll "give him" glory.
    Al -- le -- lu -- ia, Al -- le -- lu -- ia.
}
textD = \lyricmode {
    \set includeGraceNotes = ##t
    \override InstrumentName #'X-offset = #4
    \override InstrumentName #'font-series = #'bold
    \set stanza = # "4. "
    \set shortVocalName = "4."    
    \set stanza = # "4. "
    Al -- le -- lu -- ia.
    \ll "The wedding feast of" the \ll "Lamb has be" -- gun,
    Al -- le -- lu -- ia.
    \ll "and his bride is" pre -- \ll "pared to" \ll "welcome him."
    Al -- le -- lu -- ia, Al -- le -- lu -- ia.
}

textE = \lyricmode {
    \set includeGraceNotes = ##t
    \override InstrumentName #'X-offset = #4
    \override InstrumentName #'font-series = #'bold
    \set stanza = # "5. "
    \set shortVocalName = "5."    
    \set stanza = # "5. "
    _ _ _ _
    \ll "Glory to the Father and to the Son,
        and to" the Holy Spirit:
        Al -- le -- lu -- ia.
    \ll "as it was in the beginning, is now,
        and will be" for \ll "ever. A" -- men.
        Al -- le -- lu -- ia, Al -- le -- lu -- ia.
}
  

sopMusic = \relative e' {
    \global
    \override Lyrics.LyricSpace.minimum-distance = #2.0
    \voiceOne
    r8 g8 a[ b] a4 a \bar "|" g\breve fis8 a\breve b4 \bar "||"
    g8 g e d4 \bar "||"
    g\breve fis8 a\breve b4 \bar "||"
    r8 b8 b[ a] a g e g[ a] a[ g] g4 \bar "|."
}
altoMusic = \relative c' {
    \global
    \voiceTwo
    d2~ d b\breve s8 e\breve d4
    d4 a4. c\breve s8 e\breve d4 d2
    e4.~ e4 d2
}    
tenorMusic = \relative g {
    \global
    \voiceOne 
    g2~ g4 fis 
    g\breve~ s8 g\breve~ g4
    g4 fis4.
    g\breve~ s8 g\breve~ g4
    g2~ g4. c4~ c b
}
bassMusic = \relative g, {
    \global
    \voiceTwo  
    b2 d e\breve s8 c\breve g4
    b4 d4.
    e\breve s8 c\breve g4 
    g4 b c4.~ c4 g'2  
}


\score {        
    <<
        \transpose a a {
            \new ChoirStaff %\with { instrumentName = \psalmtone }
            <<
                \new Staff ="up"
                   <<
                        \clef treble
                        \accidentalStyle forget
                        \new Voice = "Soprano" \sopMusic
                        \new Voice = "Alto" \altoMusic
		        \new Lyrics \lyricsto Soprano \textA
                        \new Lyrics \lyricsto Soprano \textB
                        \new Lyrics \lyricsto Soprano \textC
                        \new Lyrics \lyricsto Soprano \textD
                        \new Lyrics \lyricsto Soprano \textE
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
    
    \layout { 
        \context { 
            \Staff 
            \remove Time_signature_engraver 
        } 

            
    } 
    
}

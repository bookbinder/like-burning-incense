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
        \transpose \frompitch \topitch {
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


\version "2.18.2"
\include "../lbi_defs.ily"

\paper {
    print-page-number = #f
    }

ll = { \once \override LyricText.self-alignment-X = #LEFT }

global = {
    \key cis \minor
    \cadenzaOn
    \set tieWaitForNote = ##t
    \autoBeamOff
}

text = \lyricmode {
	\set includeGraceNotes = ##t
    When I see your face, O "Lord, * " I shall know the full -- ness of joy, al -- le -- lu -- ia.
}
   

sopMusic = \relative e' {
    \global
    \override Lyrics.LyricSpace.minimum-distance = #2.0
    \voiceOne
    e8 fis gis[ a] gis gis4 gis8 fis[( gis a gis] fis4) \bar "'" fis8 gis e[ fis] e dis e dis cis4 \bar "'" b8 cis dis[ cis] cis4 \bar "||"
}

altoMusic = \relative c' {
    \global
    \voiceTwo
    b\breve*8/16 cis2. dis4 cis4. b4. cis4 a4 gis2
}
    
tenorMusic = \relative g {
    \global
    \voiceOne
    gis\breve*1/2 a2.~ a4 gis4.~ gis4. e4 fis4~ fis e
}

bassMusic = \relative d {
    \global
    \voiceTwo
    e\breve*1/2 a,2. b4 cis4. gis4. a4~ a4 cis2
}

\score {
    
    <<
        \transpose e e {
        \new ChoirStaff \with { instrumentName = \markup {
                                \center-column { \bold "Ant. 2"
                                \line {  "(47)"  } 
                                }
                                }
                            } 
            <<
                \new Staff ="up"
                    <<
                        \clef treble
                        \accidentalStyle forget
						\new Voice = "Soprano" \sopMusic
                        \new Voice = "Alto" \altoMusic
                        \new Lyrics \lyricsto Soprano \text
						%\new Lyrics \lyricsto Soprano \textB
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

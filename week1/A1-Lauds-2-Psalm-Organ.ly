\version "2.20.0"

\include "../lbi_defs.ily"
\include "notes/A1-Lauds-2-Ant.ily"
\include #(string-append "../psalmtones/notes/" psalmtone "-notes.ily")


\header {
    psalm_title = "Canticle, Daniel 3:57-88, 56"
    myspacer = "—"
    psalm_subtitle = "Let all creatures praise the Lord"
    %psalm_subsubtitle = "Subsubtitle"
}

text = \lyricmode {
    \override InstrumentName #'X-offset = #4
    \override InstrumentName #'font-series = #'bold
    \set stanza = # "1. "
    \set shortVocalName = "1."
    \set includeGraceNotes = ##t
\ll "Bless the Lord, all you works" of the Lord.
\ll "Praise and exalt him above all" for -- ever.
\ll "Angels of the Lord," bless the Lord.
\ll "You heavens, bless" the Lord.
\ll "All you waters above the heavens," bless the Lord.
\ll "All you hosts of the Lord, bless" the Lord.
\ll "Sun and moon," bless the Lord.
\ll "Stars of heaven, bless" the Lord.

\ll "Every shower and dew," bless the Lord.
\ll "All you winds, bless" the Lord.
\ll "Fire and heat," bless the Lord.
\ll "Cold and chill, bless" the Lord.
\ll "Dew and rain," bless the Lord.
\ll "Frost and chill, bless" the Lord.
\ll "Ice and snow," bless the Lord.
\ll "Nights and days, bless" the Lord.
 
}
textB = \lyricmode {
    \override InstrumentName #'X-offset = #4
    \override InstrumentName #'font-series = #'bold	
    \set includeGraceNotes = ##t
    \set stanza = # "2. "
    \set shortVocalName = "2."
    \set includeGraceNotes = ##t
\ll "Light and darkness," bless the Lord.
\ll "Lightnings and clouds, bless" the Lord.

\ll "Let the earth" bless the Lord.
\ll "Praise and exalt him above all" for -- ever.
\ll "Mountains and hills," bless the Lord.
\ll "Everything growing from the earth, bless" the Lord.
\ll "You springs," bless the Lord.
\ll "Seas and rivers, bless" the Lord.
\ll "You dolphins and all water creatures," bless the Lord.
\ll "All you birds of the air, bless" the Lord.
\ll "All you beasts, wild and tame," bless the Lord.
\ll "You sons of men, bless" the Lord.

\ll "O Israel," bless the Lord.
\ll "Praise and exalt him above all" for -- ever.
\ll "Priests of the Lord," bless the Lord.
\ll "Servants of the Lord, bless" the Lord.
}
textC = \lyricmode {
    \override InstrumentName #'X-offset = #4
    \override InstrumentName #'font-series = #'bold	
    \set includeGraceNotes = ##t
    \set stanza = # "3. "
    \set shortVocalName = "3."
    \set includeGraceNotes = ##t
\ll "Spirits and souls of the just," bless the Lord.
\ll "Holy men of humble heart, bless" the Lord.
\ll "Hananiah, Azariah, Mishael," bless the Lord.
\ll "Praise and exalt him above all" for -- ever.

\ll "Let us bless the Father, and the Son, and the" Ho -- ly Spirit.
\ll "Let us praise and exalt him above all" for -- ever.
\ll "Blessed are you, Lord, in the firma" -- ment of heaven.
\ll "Praiseworthy and glorious and exalted above all" for -- ever. 
}
sopMusic = {
    \global
    \voiceOne
    \sopranoOne
    \sopranoTwo
    \sopranoOne
    \sopranoTwo
    \sopranoOne
    \sopranoTwo
    \sopranoOne
    \sopranoTwo
    \mark "D.C."
}
altoMusic = {
    \global
    \voiceTwo
    \altoOne
    \altoTwo
    \altoOne
    \altoTwo
    \altoOne
    \altoTwo
    \altoOne
    \altoTwo
}
tenorMusic = {
    \global
    \voiceOne
    \tenorOne
    \tenorTwo
    \tenorOne
    \tenorTwo
    \tenorOne
    \tenorTwo
    \tenorOne
    \tenorTwo
}
bassMusic = {
    \global
    \voiceTwo
    \bassOne
    \bassTwo
    \bassOne
    \bassTwo
    \bassOne
    \bassTwo
    \bassOne
    \bassTwo
}

\score {        
    <<
        \transpose \frompitch \topitch {
            \new ChoirStaff \with { instrumentName = \psalmtone }
            <<
                \new Staff ="up"
                   <<
                        \clef treble
                        \accidentalStyle forget
                        \new Voice = "Soprano" \sopMusic
                        \new Voice = "Alto" \altoMusic
                        \new Lyrics \lyricsto Soprano \text
		        \new Lyrics \lyricsto Soprano \textB
	                \new Lyrics \lyricsto Soprano \textC
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

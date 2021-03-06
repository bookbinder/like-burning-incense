%% Generated by lilypond-book
%% Options: [indent=0\mm,line-width=6.9\in]
\include "lilypond-book-preamble.ly"


% ****************************************************************
% Start cut-&-pastable-section
% ****************************************************************



\paper {
  indent = 0\mm
  line-width = 6.9\in
  % offset the left padding, also add 1mm as lilypond creates cropped
  % images with a little space on the right
  line-width = #(- line-width (* mm  3.000000) (* mm 1))
}

\layout {
  
}





% ****************************************************************
% ly snippet:
% ****************************************************************
\sourcefilename "C2-Lauds-1-Psalm-Organ.ly"
\sourcefileline 0
\version "2.20.0"
\include "../lbi_defs.ily"

\include "../psalmtones/notes/48-notes.ily"
psalmtone = # "48"

\header {
    title = "Psalm 84"
    subtitle = "Longing for God's Temple"
    %subsubtitle = "Subsubtitle"
}

text = \lyricmode {
%    \override InstrumentName #'X-offset = #4
%    \override InstrumentName #'font-series = #'bold
%    \set stanza = # "1. "
%    \set shortVocalName = "1."
    \set includeGraceNotes = ##t
    \ll "How lovely is your" dwell -- ing place,
    \ll "Lord, God" of hosts.

    \ll "My soul is long" -- ing and yearning,
    \ll "is yearning for the courts of" the Lord.
    \ll "My heart and my soul ring" out their joy
    \ll "to God, the li" -- ving God.

    \ll "The sparrow herself" finds a home
    \ll "and the swallow a nest for" her brood;
    \ll "she lays her young" by your altars,
    \ll "Lord of hosts, my king and" my God.

    \ll "They are happy, who dwell" in your house,
    \ll "for ever singing" your praise.
    \ll "They are happy, whose strength" is in you,
    \ll "in whose hearts are the roads" to Zion.

    \ll "As they go through the Bitter" Valley
    \ll "they make it a" place of springs
    \ll "the autumn rain covers it" with blessings.
    \ll "They walk with ever" grow -- ing strength,
    \ll "they will see the God of gods" in Zion.

    \ll "O Lord God of hosts," hear my prayer,
    \ll "give ear, O God" of Jacob.
    \ll "Turn your eyes, O" God, our shield,
    \ll "look on the face of your" a -- nointed.

    \ll "One day with" -- in your courts
    \ll "is better than a thousand" else -- where.
    \ll "The threshold of the" house of God
    \ll "I prefer to the dwellings of" the wicked.

    \ll "For the Lord God is a ram" -- part, a shield;
    \ll "he will give us his favor" and glory.
    \ll "The Lord will not refuse" an -- y good
    \ll "to those who walk with" -- out blame.

    \ll "Lord," God of hosts,
    \ll "happy the man who trusts" in you!

    \ll "Glory to the Father, and" to the Son,
    \ll "and to the Ho" -- ly Spirit:
    \ll "as it was in the begin" -- ning, is now,
    \ll "and will be for ever." A -- men. 
  
}
%textB = \lyricmode {
%    \override InstrumentName #'X-offset = #4
%    \override InstrumentName #'font-series = #'bold	
%    \set includeGraceNotes = ##t
%    \set stanza = # "2. "
%    \set shortVocalName = "2."
%    \set includeGraceNotes = ##t
%
%}

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
    \sopranoTwoFlex
    \sopranoOne
    \sopranoTwo
    \sopranoOne
    \sopranoTwo 
    \sopranoOne
    \sopranoTwo 
    \sopranoOne
    \sopranoTwo 
    \sopranoTwo 
    \sopranoOne
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
    \altoTwoFlex
    \altoOne
    \altoTwo
    \altoOne
    \altoTwo 
    \altoOne
    \altoTwo 
    \altoOne
    \altoTwo 
    \altoTwo 
    \altoOne
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
    \tenorTwoFlex
    \tenorOne
    \tenorTwo
    \tenorOne
    \tenorTwo 
    \tenorOne
    \tenorTwo 
    \tenorOne
    \tenorTwo 
    \tenorTwo 
    \tenorOne
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
    \bassTwoFlex
    \bassOne
    \bassTwo
    \bassOne
    \bassTwo 
    \bassOne
    \bassTwo 
    \bassOne
    \bassTwo 
    \bassTwo 
    \bassOne
}

\score {        
    <<
        \transpose a a {
            \new ChoirStaff \with { instrumentName = \psalmtone }
            <<
                \new Staff ="up"
                   <<
                        \clef treble
                        \accidentalStyle forget
                        \new Voice = "Soprano" \sopMusic
                        \new Voice = "Alto" \altoMusic
                        \new Lyrics \lyricsto Soprano \text
		        %\new Lyrics \lyricsto Soprano \textB
	                %\new Lyrics \lyricsto Soprano \textC
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




% ****************************************************************
% end ly snippet
% ****************************************************************

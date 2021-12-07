\version "2.18.2"
\include "../lbi_defs.ily"
\include "../psalmtones/notes/37-notes.ily"

\header {
    psalm_title = "Canticle, Daniel 3:52-57"
    psalm_subtitle = "Let all creatures praise the Lord"
}


text = \lyricmode {
    \set includeGraceNotes = ##t
    %	\set stanza = # "1. "
    \ll "Blessed are you, O Lord, the God of" our fathers,
    \ll "praiseworthy and exalted above all" for -- ever;

    \ll "And blessed is your holy and glori" -- ous name,
    \ll "praiseworthy and exalted above all for" all ages.

    \ll "Blessed are you in the temple of your ho" -- ly glory,
    \ll "praiseworthy and glorious above all" for -- ever.

    \ll "Blessed are you on the throne of" your kingdom,
    \ll "praiseworthy and exalted above all" for -- ever.

    \ll "Blessed are you who look into the" depths
    \ll "from your throne upon the che" -- ru -- bim,
    \ll "praiseworthy and exalted above all"  for -- ever.

    \ll "Blessed are you in the firmament" of heaven,
    \ll "praiseworthy and exalted above all"  for -- ever.

    \ll "Bless the Lord, all you works of" the Lord,
    \ll "praise and exalt him above all" for -- ever.

    \ll "Glory to the Father and to" the Son,
    \ll "and to the Ho" -- ly Spirit:
    \ll "as it was in the beginning," is now,
    \ll "and will be for ever." A -- men.
}
%textB = \lyricmode {
    %	\set includeGraceNotes = ##t
    %	\set stanza = # "2. "
    %
    %}

    sopMusic = {
        \global
        \voiceOne
        \sopranoOne 
        \sopranoTwo
        \sopranoOne 
        \sopranoTwo
        \sopranoOneFlex
        \sopranoTwo
        \sopranoOne 
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
        \altoOneFlex
        \altoTwo
        \altoOne 
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
        \tenorOneFlex
        \tenorTwo
        \tenorOne 
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
        \bassOneFlex
        \bassTwo
        \bassOne 
        \bassTwo
        \bassOne

    }

    \score {        <<
        \transpose e ees {
            \new ChoirStaff \with { instrumentName = #"37" } %LBI_1A
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

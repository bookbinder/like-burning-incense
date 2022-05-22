\version "2.18.2"
\include "../../lbi_defs.ily"
\include "../../psalmtones/notes/20-notes.ily"

\header {
    psalm_title = "Canticle, Philippians 2:6-11"
    psalm_subtitle = "Christ, God's holy servant"
}


text = \lyricmode {
    \set includeGraceNotes = ##t
    %	\set stanza = # "1. "
    \ll "Though he was in the form of" God,
    \ll "Jesus did not deem equali" -- ty with God
    \ll "something to be" \ll "grasped at."

    \ll "Rather, he emptied him" -- self
    \ll "and took the form" of a slave,
    \ll "being born in the likeness of" men.

    \ll "He was known to be of hu" -- man es -- tate
    \ll "and it was thus that he humbled him" -- self,
    \ll "obediently accepting" e -- ven death,
    \ll "death on a" cross!

    \ll "Because of this, God highly exalted" him
    \ll "and bestowed on" him the name
    \ll "above every other" name,  

    \ll "So that at" Je -- sus’ name
    \ll "every knee must" bend
    \ll "in the heavens, on the earth and un" -- der the earth,
    \ll "and every tongue pro" -- claim
    \ll "to the glory of" God the Father:  
    \ll "JESUS CHRIST IS" LORD!

    \ll "Glory to the Father and" to the Son,
    \ll "and to the Holy" \ll Spirit:
    \ll "as it was in the begin" -- ning, is now,
    \ll "and will be for ever. A" -- men.
}
%textB = \lyricmode {
    %	\set includeGraceNotes = ##t
    %	\set stanza = # "2. "
    %
    %}

    sopMusic = {
        \global
        \voiceOne
        \sopranoOneFlex 
        \sopranoTwoFlex
        \sopranoOne 
        \sopranoTwo
        \sopranoOneFlex
        \sopranoTwo
        \sopranoOne 
        \sopranoTwo
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
        \altoOneFlex
        \altoTwo
        \altoOne 
        \altoTwo
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
        \tenorOneFlex
        \tenorTwo
        \tenorOne 
        \tenorTwo
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
        \bassOneFlex
        \bassTwo
        \bassOne 
        \bassTwo
        \bassOne 
        \bassTwo

    }

    \score {        <<
        \transpose \frompitch \topitches {
            \new ChoirStaff \with { instrumentName = \psalmtone } % LBI_9B
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

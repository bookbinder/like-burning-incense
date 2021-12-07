\version "2.18.2"
\include "../lbi_defs.ily"
\include "../psalmtones/notes/37-notes.ily"

\header {
    psalm_title = "Canticle, Revelation 11:17-18; 12:10b-12a"
    psalm_subtitle = "The judgment of God"
}

global = {
    \key g \major
    \cadenzaOn
    \set tieWaitForNote = ##t
    \autoBeamOff
}

text = \lyricmode {
    \set includeGraceNotes = ##t
    \ll "We praise you, the Lord God" Al -- mighty,
    \ll "who is and" who was.
    \ll "You have assumed your" great power,
    \ll "you have begun" your reign.

    \ll "The nations have raged" in anger,
    \ll "but then came your day" of wrath
    \ll "and the moment to judge" the dead:
    \ll "the time to reward your servants" the \ll prophets
    \ll "and the holy ones who re" -- vere you,
    \ll "the great and the small" a -- like.

    \ll "Now have salvation and po" -- wer come,
    \ll "the reign of our God and the authority of his Anoin" -- ted One,
    \ll "For the accuser of our brothers is" cast out,
    \ll "who night and day accused them be" -- fore God.

    \ll "They defeated him by the blood of" the Lamb
    \ll "and by the word of their tes" -- ti -- mony;
    \ll "love for life did not deter them" from death.
    \ll "So rejoice, you heavens, and you that dwell" there -- in!

    \ll "Glory to the Father and to" the Son,
    \ll "and to the Ho" -- ly Spirit:
    \ll "as it was in the beginning," is now,
    \ll "and will be for ever." A -- men.
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
    \altoOne
    \altoTwo
    \altoOne
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
    \tenorOne
    \tenorTwo
    \tenorOne
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
    \bassOne
    \bassTwo
    \bassOne
    \bassTwo
    \bassOne
    \bassTwo
    \bassOne
}

\score {        <<
    \transpose e ees {
        \new ChoirStaff \with { instrumentName = #"37" } % LBI_17B
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

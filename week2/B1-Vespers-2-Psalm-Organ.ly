\version "2.18.2"
\include "../lbi_defs.ily"
\include "../psalmtones/notes/21-notes.ily"

\header {
    psalm_title = "Psalm 115"
    psalm_subtitle = "Praise of the true God"
}

text = \lyricmode {
    \override InstrumentName #'X-offset = #4
    \override InstrumentName #'font-series = #'bold
    \set stanza = # "1. "
    \set shortVocalName = "1."
    \set includeGraceNotes = ##t
    \ll "Not to us, Lord, not" to us,
    \ll "but to your name give" the glory
    \ll "for the sake of your love and" your truth,
    \ll "lest the heathen say: ‘Where is" their God?’

    \ll "But our God is in" the heavens;
    \ll "he does whatever" he wills.
    \ll "Their idols are silver" and gold,
    \ll "the work of hu" -- man hands.

    \ll "They have mouths but they can" -- not speak;
    \ll "they have eyes but they can" -- not see;
    \ll "they have ears but they can" -- not hear;
    \ll "they have nostrils but they can" -- not smell.

    \ll "With their hands they cannot" feel;
    \ll "with their feet they can" -- not walk.
    \ll "No sound comes from" their throats.
    \ll "Their makers will come to be" like them
    \ll "and so will all who trust" in them.

    \ll "Sons of Israel, trust in" the Lord;
    \ll "he is their help and" their shield.
    \ll "Sons of Aaron, trust in" the Lord;
    \ll "he is their help and" their shield.

    \ll "You who fear him, trust in" the Lord;
    \ll "he is their help and" their shield.
    \ll "He remembers us, and he will" "bless us;"
    \ll "he will bless the sons" of Israel.
    \ll "He will bless the sons" of Aaron.

}
textB = \lyricmode {
    \override InstrumentName #'X-offset = #4
    \override InstrumentName #'font-series = #'bold
    \set stanza = # "2. "
    \set shortVocalName = "2."
    \set includeGraceNotes = ##t
    \ll "The Lord will bless those" who \ll "fear him,"
    \ll "the little no less than" the great:
    \ll "to you may the Lord" grant increase,
    \ll "to you and all" your children.

    \ll "May you be blessed by" the Lord,
    \ll "the maker of heaven" and earth.
    \ll "The heavens belong to" the Lord
    \ll "but the earth he has given" to men.

    \ll "The dead shall not praise" the Lord,
    \ll "nor those who go down into" the silence.
    \ll "But we who live bless" the Lord
    \ll "now and for ever." A -- men.

    \ll "----->" "-->"
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
    \sopranoOneFlex 
    \sopranoTwo
    \sopranoOne 
    \sopranoTwo
    \sopranoOne
    \sopranoTwoFlex
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
    \altoOneFlex 
    \altoTwo
    \altoOne 
    \altoTwo
    \altoOne
    \altoTwoFlex
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
    \tenorOneFlex 
    \tenorTwo
    \tenorOne 
    \tenorTwo
    \tenorOne
    \tenorTwoFlex
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
    \bassOneFlex 
    \bassTwo
    \bassOne 
    \bassTwo
    \bassOne
    \bassTwoFlex
}

\score {        
    <<
    \transpose e e {
        \new ChoirStaff \with { instrumentName = #"21" } %LBI_1A
        <<
            \new Staff ="up"
            <<
                \clef treble
                \accidentalStyle forget
                \new Voice = "Soprano" \sopMusic
                \new Voice = "Alto" \altoMusic
                \new Lyrics \lyricsto Soprano \text
                \new Lyrics \lyricsto Soprano \textB
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

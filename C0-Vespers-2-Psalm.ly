\version "2.18.2"
\include "../lbi_defs.ily"
\include "../psalmtones/notes/47-notes.ly"

\header {
    psalm_title = "Psalm 16"
    psalm_subtitle = "The Lord himself is my heritage"
}

text = \lyricmode {
    \override InstrumentName #'X-offset = #5
    \override InstrumentName #'font-series = #'bold
    \set includeGraceNotes = ##t
    \set stanza = # "1. "
    \set shortVocalName = "1."
    \ll "Preserve me, God, I take refuge in" you.
    \ll "I say to the Lord: ‘You are" my God.
    \ll "My happiness lies in you" a -- lone.’

    \ll "--------------->" "--->"
    \ll "He has put into my heart a marvel" -- lous love
    \ll "for the faithful ones who dwell in" his land.
    \ll "Those who choose other gods increase their sor"rows.
    \ll "Never will I offer their offerings" of blood.
    \ll "Never will I take their name upon" my lips.

    \ll "O Lord, it is you who are my portion" and cup;
    \ll "it is you yourself who are" my prize.
    \ll "The lot marked out for me is my" de -- light:
    \ll "welcome indeed the heritage that falls" to me!

    \ll "I will bless the Lord who gives" me counsel,
    \ll "who even at night directs" my heart.
    \ll "I keep the Lord ever in" my sight:
    \ll "since he is at my right hand, I shall" stand firm.

    \ll "And so my heart rejoices, my soul" is glad;
    \ll "even my body shall rest" in safety.

}
textB = \lyricmode {
    \override InstrumentName #'X-offset = #5
    \override InstrumentName #'font-series = #'bold
    \set includeGraceNotes = ##t
    \set stanza = # "2. "
    \set shortVocalName = "2."
    \ll "---------------->" "--->"
    \ll "For you will not leave my soul among" the dead,
    \ll "nor let your beloved know" de -- cay.

    \ll "You will show me the path of" life,
    \ll "the fullness of joy in" your presence,
    \ll "at your right hand happiness" for ever.
    \ll "---------------->" "--->"
    \ll "Glory to the Father and to" the Son,
    \ll "and to the Ho" -- ly Spirit:
    \ll "as it was in the beginning," is now,
    \ll "and will be for ever." A -- men.
}

sopMusic = {
    \global
    \voiceOne
    \sopranoOneFlex
    \sopranoTwoFlex
    \sopranoOneFlex 
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
    \altoOneFlex
    \altoTwoFlex
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
    \bassOneFlex 
    \bassTwo
    \bassOne 
    \bassTwo
    \bassOne 
    \bassTwo
}

\score {        <<
    \transpose e dis {
        \new ChoirStaff \with { instrumentName = #"47" } % LBI_8d
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

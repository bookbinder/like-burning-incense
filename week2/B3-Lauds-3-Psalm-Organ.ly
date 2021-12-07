\version "2.18.2"
\include "../lbi_defs.ily"
\include "../psalmtones/notes/40-notes.ily"

\header {
    psalm_title = "Psalm 65"
    psalm_subtitle = "Solemn Thanksgiving"
}

text = \lyricmode {
    \override InstrumentName #'X-offset = #4
    \override InstrumentName #'font-series = #'bold
    \set stanza = # "1. "
    \set shortVocalName = "1."
    \set includeGraceNotes = ##t
    \ll "To you our" praise is due
    \ll "in Sion," O God.
    \ll "To you we" pay our vows,
    \ll "you who hear" our prayer.

    \ll "To you all" flesh will come
    \ll "with its burden" of sin.
    \ll "Too heavy for us," our of -- fences,
    \ll "but you wipe them" a -- way.

    \ll "---->" "-->"
    \ll "Blessed is he whom you" choose and call
    \ll "to dwell in" your courts.
    \ll "We are filled with the blessings" of your house,
    \ll "of your ho" -- ly temple.

    \ll "You keep your" pledge with wonders,
    \ll "O God" our saviour,
    \ll "the hope of" all the earth
    \ll "and of far dis" -- tant isles.

    \ll "You uphold the mountains" with your strength,
    \ll "you are girded" with power.
    \ll "You still the roaring of the" seas,
    \ll "the roaring" of their waves
    \ll "and the tumult of" the peoples.

    \ll "The ends of the earth" stand in awe
    \ll "at the sight of" your wonders.

    \ll "The lands of sun" -- rise and sunset
    \ll "you fill with" your joy.
}

textB = \lyricmode {
    \override InstrumentName #'X-offset = #4
    \override InstrumentName #'font-series = #'bold	
    \set includeGraceNotes = ##t
    \set stanza = # "2. "
    \set shortVocalName = "2."

    \ll "You care for the earth," give it water,
    \ll "you fill it" with riches.
    \ll "Your river in hea" -- ven brims over
    \ll "to provide" its grain.

    \ll "And thus you provide" for the earth;
    \ll "you drench" its furrows;
    \ll "you level it, soften" it with showers;
    \ll "you bless" its growth.

    \ll "You crown the year with your" goodness.
    \ll "Abundance flows" in your steps,
    \ll "in the pastures of the wilderness" it flows.

    \ll "The hills are gir" -- ded with joy,
    \ll "the meadows covered" with flocks,
    \ll "the valleys are" decked with wheat.
    \ll "They shout for joy, yes" they sing.

    \ll "Glory to the Father and" to the Son,
    \ll "and to the Ho" -- ly Spirit:
    \ll "as it was in the begin" -- ning, is now,
    \ll "and will be for ever." A -- men.

}

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
    \sopranoTwoFlex
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
    \altoOneFlex
    \altoTwo
    \altoOne
    \altoTwo
    \altoOne
    \altoTwoFlex
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
    \tenorOneFlex
    \tenorTwo
    \tenorOne
    \tenorTwo
    \tenorOne
    \tenorTwoFlex
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
    \bassOneFlex
    \bassTwo
    \bassOne
    \bassTwo
    \bassOne
    \bassTwoFlex
    \bassOne
    \bassTwo
}

\score {        <<
    \transpose a gis {
        \new ChoirStaff \with { instrumentName = #"40" } %LBI_1A
        <<
            \new Staff ="up"
            <<
                \clef treble
                \accidentalStyle forget
                \new Voice = "Soprano" \sopMusic
                \new Voice = "Alto" \altoMusic
                \new Lyrics \lyricsto Soprano \text
                \new Lyrics \lyricsto Soprano \textB
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

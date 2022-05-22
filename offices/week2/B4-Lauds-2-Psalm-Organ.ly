\version "2.18.2"
\include "../../lbi_defs.ily"
\include "../../psalmtones/notes/22-notes.ily"

\header {
    psalm_title = "Canticle, 1 Samuel 2: 1-10"
    psalm_subtitle = "The humble find joy in God"
}

text = \lyricmode {
    \override InstrumentName #'X-offset = #4
    \override InstrumentName #'font-series = #'bold
    \set stanza = # "1. "
    \set shortVocalName = "1."
    \set includeGraceNotes = ##t
    \ll "My heart exults" in the Lord,
    \ll "my horn is exalted in" my God.

    \ll "I have swallowed" up my enemies;
    \ll "I rejoice in" my victory.
    \ll "There is no Holy One" like the Lord;
    \ll "there is no Rock like" our God.

    \ll "Speak boastful" -- ly no longer,
    \ll "nor let arrogance issue from" your mouths.
    \ll "For an all-knowing God" is the Lord,
    \ll "a God who jud" -- ges deeds.

    \ll "The bows of the migh" -- ty are broken,
    \ll "while the tottering gird" on strength.
    \ll "The well-fed hire themselves" out for bread,
    \ll "while the hungry batten" on spoil.
    \ll "The barren wife bears" se -- ven sons,
    \ll "while the mother of man" -- y languishes.

    \ll "The Lord puts to death and gives" life;
    \ll "he casts down to the" ne -- ther world;
    \ll "he raises up" a -- gain.
    \ll "The Lord makes poor" and makes rich,
    \ll "he humbles, he also" e -- xalts.

    \ll "He raises the needy" from the dust;
    \ll "from the ash heap he lifts up" the poor,
    \ll "to seat" them with nobles
    \ll "and make a glorious throne" their heritage.
}
textB = \lyricmode {
    \override InstrumentName #'X-offset = #4
    \override InstrumentName #'font-series = #'bold	
    \set includeGraceNotes = ##t
    \set stanza = # "2. "
    \set shortVocalName = "2."

    \ll "For the pillars of the earth" are the Lord’s,
    \ll "and he has set the world" u -- \ll "pon them."
    \ll "He will guard the footsteps of his" faith -- ful ones,
    \ll "but the wicked shall perish in" the darkness.
    \ll "For not by strength does" man pre -- vail;
    \ll "the Lord’s foes shall" be shattered.

    \ll "The Most High in" hea -- ven thunders;
    \ll "the Lord judges the ends of" the earth.
    \ll "Now may he give strength" to his king
    \ll "and exalt the horn of his" a -- nointed!

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
    \sopranoOne
    \sopranoTwo
    \sopranoOne
    \sopranoTwo
    \sopranoOneFlex
    \sopranoTwo
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
    \altoOneFlex
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
    \tenorOneFlex
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
    \bassOneFlex
    \bassTwo

}

\score {        <<
    \transpose aes aes {
        \new ChoirStaff \with { instrumentName = \psalmtone } %LBI_1A
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

\version "2.18.2"
\include "../../lbi_defs.ily"
\include "../../psalmtones/notes/09-notes.ily"

\header {
    psalm_title = "Canticle, Colossians 1:12-20"
    psalm_subtitle = "Christ, the first-born of all creation and the first-born from the dead"
}

text = \lyricmode {
    \set includeGraceNotes = ##t
    \ll "Let us give thanks to the Fa" -- ther
    \ll "for having made" you \ll worthy
    \ll "to share the lot of the saints "in light.

    \ll "He rescued us from the power" of \ll darkness
    \ll "and brought us into the kingdom of his belo" -- ved Son.
    \ll "Through him we have" re -- \ll demption,
    \ll "the forgiveness of" our sins.

    \ll "He is the image of the invisi" -- ble God,
    \ll "the first-born of" all \ll creatures.
    \ll "In him everything in heaven and on earth was" cre -- ated,
    \ll "things visible and" in -- \ll visible.

    \ll "All were created" through him;
    \ll "all were created" for him.
    \ll "He is before all else" that is.
    \ll "In him everything continues" in being.

    \ll "It is he who is head of the body," the church;
    \ll "he who is the" be -- ginning,
    \ll "the first-born of" the dead,
    \ll "so that primacy may be his" in \ll everything.

    \ll "It pleased God to make absolute fullness reside" in him
    \ll "and, by means of him, to reconcile everything in" his person,
    \ll "both on earth and in" the heavens,
    \ll "making peace through the blood of" his cross.

    \ll "Glory to the Father and to" the Son,
    \ll "and to the Ho" -- ly \ll Spirit:
    \ll "as it was in the beginning," is now,
    \ll "and will be for ever." A -- men.
}

sopMusic = {
    \global
    \voiceOne
    \sopranoOneFlex
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
    \sopranoTwo
    \sopranoOne

}
altoMusic = {
    \global
    \voiceTwo
    \altoOneFlex
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
    \altoTwo
    \altoOne

}

tenorMusic = {
    \global
    \voiceOne
    \tenorOneFlex
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
    \tenorTwo
    \tenorOne

}

bassMusic = {
    \global
    \voiceTwo
    \bassOneFlex
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
    \bassTwo
    \bassOne

}

\score {

    <<
        \transpose \frompitch \topitch {
            \new ChoirStaff \with { instrumentName = \psalmtone } % Similar to LBI_15A and 32.ly
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

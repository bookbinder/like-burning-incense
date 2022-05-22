\version "2.20.0"
\include "../../lbi_defs.ily"
\include "../../psalmtones/notes/50-notes.ily"

\header {
    psalm_title = "Benedictus"
}

text = \lyricmode {
    \override InstrumentName #'X-offset = #4
    \override InstrumentName #'font-series = #'bold
    \set stanza = # "1. "
    \set shortVocalName = "1."
    \set includeGraceNotes = ##t
    \ll "Blessed be the Lord, the God" of Israel;
    \ll "he has come to his people and set" them free.

    \ll "He has raised up for us a migh" -- ty savior,
    \ll "born of the house of his ser" vant David.

    \ll "Through his holy prophets he promised of" old,
    \ll "that he would save us from" our enemies,
    \ll "from the hands of all" who \ll "hate us."

    \ll "He promised to show mercy to" our fathers
    \ll "and to remember his ho" -- ly covenant.

    \ll "This was the oath he swore to our fa" -- ther Abraham,
    \ll "to set us free from the hands of" our enemies,
    \ll "free to worship him without" fear,
    \ll "holy and righteous in" his sight
    \ll "all the days of" our life.

    \ll "You, my child, shall be called the prophet of the" Most High,
    \ll "for you will go before the Lord to prepare" his way,
    \ll "to give his people knowledge of" sal -- vation
    \ll "by the forgiveness of" their sins.

}
textB = \lyricmode {
    \override InstrumentName #'X-offset = #4
    \override InstrumentName #'font-series = #'bold	
    \set includeGraceNotes = ##t
    \set stanza = # "2. "
    \set shortVocalName = "2."
    \ll "In the tender compassion of" our God
    \ll "the dawn from on high shall break" u -- "pon us,"
    \ll "to shine on those who dwell in darkness and the shadow" of death,
    \ll "and to guide our feet into the way" of peace.

    \ll "-->" "->"
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
    \sopranoOneFlex
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
    \altoOneFlex
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
    \tenorOneFlex
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
    \bassOneFlex
    \bassTwo
    \bassOne
    \bassTwoFlex
    \bassOne
    \bassTwo

}

\score {        <<
    \transpose \frompitch \topitch {
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

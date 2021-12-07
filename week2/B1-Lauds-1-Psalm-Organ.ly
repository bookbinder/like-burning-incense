\version "2.18.2"
\include "../lbi_defs.ily"
\include "../psalmtones/notes/01-notes.ily"

\header {
    psalm_title = "Psalm 118"
    psalm_subtitle = "Song of joy for salvation"
}

text = \lyricmode {
    \override InstrumentName #'X-offset = #2
    \override InstrumentName #'font-series = #'bold
    \set includeGraceNotes = ##t
    \set stanza = # "1. "
    \set shortVocalName = "1."
    \ll "-------------->"  "-->"
    \ll "Give thanks to the Lord for he" is good,
    \ll "for his love en" -- dures for ever.

    \ll "Let the sons of Isra" -- el say:
    \ll "‘His love en" -- dures for ever.’
    \ll "Let the sons of Aa" -- ron say:
    \ll "‘His love en" -- dures for ever.’
    \ll "Let those who fear the" Lord say:
    \ll "‘His love en" -- dures for ever.’

    \ll "I called to the Lord in my" dis -- tress;
    \ll "he ans" -- wered and \ll "freed me."
    \ll "The Lord is at my side; I do" not fear.
    \ll "What can man" do a -- \ll "gainst me?"
    \ll "The Lord is at my side as" my helper;
    \ll "I shall look down" on my foes.

    \ll "It is better to take refuge in" the Lord
    \ll "than to" trust in men;
    \ll "it is better to take refuge in" the Lord
    \ll "than to" trust in princes.

    \ll "The nations all" en -- \ll "compassed me;"
    \ll "in the Lord’s" name -- I \ll "crushed them."

    \ll "They compassed me, compassed me" a -- bout;
    \ll "in the Lord’s" name I \ll "crushed them."

}
textB = \lyricmode {
    \override InstrumentName #'X-offset = #2
    \override InstrumentName #'font-series = #'bold
    \set includeGraceNotes = ##t
    \set stanza = # "2. "
    \set shortVocalName = "2."
    \ll "They compassed me about like" bees;
    \ll "they blazed like a fire a" -- mong thorns.
    \ll "In the Lord’s" name I \ll "crushed them."

    \ll "I was hard-pressed and" was falling,
    \ll "but the Lord" came to  -- \ll "help me."
    \ll "The Lord is my strength and" my song;
    \ll "he" is my saviour.
    \ll "There are shouts of joy" and victory
    \ll "in the tents" of the just.

    \ll "The Lord’s right hand" has triumphed;
    \ll "his" right hand  -- \ll "raised me."

    \ll "The Lord’s right hand" has triumphed;
    \ll "I shall not die, I shall live and re" -- count his deeds.
    \ll "I was punished, I was punished by" the Lord,
    \ll "but not" doomed to die.

    \ll "Open to me the gates" of holiness:
    \ll "I will enter" and give thanks.
    \ll "This is the Lord’s" own gate
    \ll "where the" just may enter.
    \ll "I will thank you for you" have answered
    \ll "and you" are my saviour.

    \ll "The stone which the builders" re -- jected
    \ll "has become the" cor -- ner stone.

}
textC = \lyricmode {
    \override InstrumentName #'X-offset = #2
    \override InstrumentName #'font-series = #'bold
    \set includeGraceNotes = ##t
    \set stanza = # "3. "
    \set shortVocalName = "3."
    \ll "-------------->"  "-->"
    \ll "This is the work of" the Lord,
    \ll "a marvel" in our eyes.
    \ll "This day was made by" the Lord;
    \ll "we rejoice" and are glad.

    \ll "O Lord, grant us" sal -- vation;
    \ll "O Lord," grant suc -- cess.
    \ll "Blessed in the name of" the Lord
    \ll "is" he who comes.
    \ll "We bless you from the house of" the Lord;
    \ll "the Lord God" is our light.
    \ll "Go forward in procession" with branches
    \ll "even" to the altar.
    \ll "You are my God," I  -- \ll "thank you."
    \ll "My" God, I  -- \ll "praise you."
    \ll "Give thanks to the Lord for he" is good;
    \ll "for his love en" -- dures for ever.

    \ll "Glory to the Father and to" the Son,
    \ll "and to the" Ho -- ly Spirit:
    \ll "as it was in the beginning," is now,
    \ll "and will be for e" -- ver. A -- men.
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
    \mark "D.C."
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
}

\score {        
    <<
        \transpose e e {
            \new ChoirStaff \with { instrumentName = #"1" } %LBI_1A
            <<
                \new Staff ="up"
                <<
                    \clef treble
                    \accidentalStyle forget
                    \new Voice = "Soprano" \sopMusic
                    \new Voice = "Alto" \altoMusic
                    \new Lyrics \lyricsto Soprano \text
                    \new Lyrics \lyricsto Soprano \textB
                    \new Lyrics \lyricsto Soprano \textC
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

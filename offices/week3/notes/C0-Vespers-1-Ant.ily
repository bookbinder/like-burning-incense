\version "2.18.2"
\include "../lbi_defs.ily"
antiphon = "Ant. 1"
psalmtone = "11"
keysignature = "\key gis \minor"

global = {
    \key e \major
    \cadenzaOn
    \set tieWaitForNote = ##t
    \autoBeamOff
}

text = \lyricmode {
	\set includeGraceNotes = ##t
    From the ris -- ing of the sun to its set -- ting, " * "
    may the name of the Lord be praised.

}

sopNotesAnt = \relative e' {
    \global
    \override Lyrics.LyricSpace.minimum-distance = #2.0
    \voiceOne
    e8 fis gis[ a] gis fis gis a4 a8 b a[ gis] gis4 \bar "'"  
     \hideNotes gis16 \unHideNotes %so that I can align the * better
    gis8 a b[ cis] b a gis[ fis] e fis4( e) \bar "||"
}

altoNotesAnt = \relative c' {
    \global
    \voiceTwo
    s8*15 
    s16 
    gis'4 e2 cis4. b2
}    

tenorNotesAnt = \relative g {
    \global
    \voiceOne
    gis4 b\breve*5/16 cis2 e
    s16
    b4~ b2 a4.~ a4( gis)
}

bassNotesAnt = \relative c {
    \global
    \voiceTwo
    e4~ e\breve*5/16~ e2~ e2~
    s16
    e4 gis2 a4. e2
}


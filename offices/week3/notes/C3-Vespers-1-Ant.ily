\version "2.18.2"
\include "../lbi_defs.ily"

antiphon = "Ant. 1"
psalmtone = "38"

global = {
    \key gis \minor
    \cadenzaOn
    \set tieWaitForNote = ##t
    \autoBeamOff
}

text = \lyricmode {
	\set includeGraceNotes = ##t
     Our eyes are fixed in -- tent -- ly on the Lord, " * "
     wait -- ing for his mer -- ci -- ful help.
}

sopMusic = \relative e' {
    \global
    \override Lyrics.LyricSpace.minimum-distance = #2.0
    \voiceOne
    r8 cis8 e[ dis] cis dis4 e8 gis fis fis fis dis4 \bar "'"
    \hideNotes fis16 \unHideNotes %so that I can align the * better
    e8 dis cis dis e4 e8 e e4( dis) \bar "||"
}

altoMusic = \relative c' {
    \global
    \voiceTwo
    gis4~ gis4. b4. cis2 b4
    s16
    gis2 cis b
}    

tenorMusic = \relative g {
    \global
    \voiceOne
    e4~ e4. fis4. e2 fis4
    s16
    e2 gis~ gis
}

bassMusic = \relative c {
    \global
    \voiceTwo
    cis4~ cis4. b4.~ b2~ b4
    s16
    cis2~ cis gis
}


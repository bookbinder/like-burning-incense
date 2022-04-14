\version "2.18.2"
\include "../lbi_defs.ily"
antiphon = "Ant. 2"
psalmtone = "20"
keysignature = "\key e \major"

global = {
    \key e \major
    \cadenzaOn
    \set tieWaitForNote = ##t
    \autoBeamOff
}

text = \lyricmode {
	\set includeGraceNotes = ##t
     Sing to the Lord " * " and bless his name.
}

sopMusic = \relative e' {
    \global
    \override Lyrics.LyricSpace.minimum-distance = #2.0
    \voiceOne
    gis8[ a] gis fis b4( gis) \bar "'"
    \hideNotes fis16 \unHideNotes %so that I can align the * better
    gis8 fis[( a] gis4) fis8 fis4( e) \bar "||"
}

altoMusic = \relative c' {
    \global
    \voiceTwo
    e2~ e\breve*1/4~
    s16
    s8 e\breve*5/16 b2
}    

tenorMusic = \relative g {
    \global
    \voiceOne
    b2 gis\breve*1/4
    s16 
    s8 a\breve*5/16 gis2
}

bassMusic = \relative c {
    \global
    \voiceTwo
    e2~ e\breve*1/4
    s16
    s8 cis\breve*5/16 e2
}


\version "2.18.2"
\include "../lbi_defs.ily"
antiphon = "Ant. 2"
psalmtone = "3"
keysignature = "\key c \major"

global = {
    \key c \major
    \cadenzaOn
    \set tieWaitForNote = ##t
    \autoBeamOff
}

text = \lyricmode {
	\set includeGraceNotes = ##t
     Come, let us climb " * "
     the moun -- tain of the Lord.
}

sopMusic = \relative e' {
    \global
    \override Lyrics.LyricSpace.minimum-distance = #2.0
    \voiceOne
    g4 e8 f g[( c b] a4) \bar "'"
    \hideNotes fis16 \unHideNotes %so that I can align the * better
    a8 g f e f a4( g) \bar "||"
}

altoMusic = \relative c' {
    \global
    \voiceTwo
    e2 f2.
    s16
    d2~ d
}    

tenorMusic = \relative g {
    \global
    \voiceOne
    c2~ c2.
    s16
    a2 b
}

bassMusic = \relative c {
    \global
    \voiceTwo
    c2 d2.
    s16
    f2 g
}


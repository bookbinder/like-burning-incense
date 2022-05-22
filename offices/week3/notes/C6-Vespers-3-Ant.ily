\version "2.18.2"
\include "../lbi_defs.ily"
psalmtone = "20"
keysignature = "\key gis \minor"

global = {
    \keysignature
    \cadenzaOn
    \set tieWaitForNote = ##t
    \autoBeamOff
}

text = \lyricmode {
	\set includeGraceNotes = ##t
     " * " 

}

sopMusic = \relative e' {
    \global
    \override Lyrics.LyricSpace.minimum-distance = #2.0
    \voiceOne
  
     \hideNotes fis16 \unHideNotes %so that I can align the * better

}

altoMusic = \relative c' {
    \global
    \voiceTwo

}    

tenorMusic = \relative g {
    \global
    \voiceOne

}

bassMusic = \relative c {
    \global
    \voiceTwo

}


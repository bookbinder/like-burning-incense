\version "2.18.2"
\include "../lbi_defs.ily"
antiphon = "Ant. 1"
psalmtone = "48"
keysignature = "\key aes \major"


global = {
    \key aes \major
    \cadenzaOn
    \set tieWaitForNote = ##t
    \autoBeamOff
}

text = \lyricmode {
	\set includeGraceNotes = ##t
     Bless -- ed are they " * " 
     who dwell in your house, O Lord.
}

sopMusic = \relative e' {
    \global
    \override Lyrics.LyricSpace.minimum-distance = #2.0
    \voiceOne
    aes4 g8 aes f[( ees] des4) \bar "'"
    \hideNotes fis16 \unHideNotes %so that I can align the * better
    des8 ees[ f] ees des ees4 ees8[ f] ees4( des) \bar "||"
}

altoMusic = \relative c' {
    \global
    \voiceTwo
    ees2 des4~ des4.
    s16
    c1 aes2
}    

tenorMusic = \relative g {
    \global
    \voiceOne
    aes2~ aes4~ aes4.
    s16
    aes1 f2
}

bassMusic = \relative c {
    \global
    \voiceTwo
    c2 des4 f4.
    s16
    aes,1 des2
}


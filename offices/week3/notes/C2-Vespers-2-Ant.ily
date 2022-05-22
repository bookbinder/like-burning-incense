\version "2.18.2"
\include "../lbi_defs.ily"
antiphon = "Ant. 2"
psalmtone = "21"
keysignature = "\key aes \major"

global = {
    \key aes \major
    \cadenzaOn
    \set tieWaitForNote = ##t
    \autoBeamOff
}

text = \lyricmode {
	\set includeGraceNotes = ##t
     Our help is in the name of the Lord " * "
     who made hea -- ven and earth.
}

sopMusic = \relative e' {
    \global
    \override Lyrics.LyricSpace.minimum-distance = #2.0
    \voiceOne
    r8 ees8 aes[ bes] aes g aes f[ g] f f f4( ees) \bar "'"
    \hideNotes fis16 \unHideNotes %so that I can align the * better
    ees8 des[ ees] f4 g8 f ees4 \bar "||"
}

altoMusic = \relative c' {
    \global
    \voiceTwo
    r8 ees8~ ees\breve*5/16 des2 c\breve*1/4
    s16
    s8 des4 bes2~ bes4
}    

tenorMusic = \relative g {
    \global
    \voiceOne
    aes4~ aes\breve*5/16~ aes2~ aes\breve*1/4~
    s16
    s8 aes4~ aes2 g4
}

bassMusic = \relative c {
    \global
    \voiceTwo
    c4~ c\breve*5/16 des2 aes\breve*1/4
    s16
    s8 bes4 des2 ees4
}


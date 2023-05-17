\version "2.20.0"
\include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key ges \major
antiphon = "2"
psalmtone = "64"
psalmtonestruct = "33"
psalmnum = "Tobit_13_8-11,_13-15"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a

text = \lyricmode {
    \set includeGraceNotes = ##t
    Re -- joice, Je -- ru -- sa -- lem, " * "
    for through you all men will be ga -- thered to the Lord.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    r8 des8 ges[ f] ges ges[ bes] aes aes4 \bar "'"
    \hideNotes e16 \unHideNotes   %so that I can align the * better
    aes8 bes ces[( bes] aes4) ges8 ges f ges ees des ces des ees4( des) \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    r8 \hideNotes des8~ \unHideNotes des4. bes des2
    s16
    ees2 bes ces aes
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    ges4~ ges4.~ ges f2
    s16
    ges2~ ges~ ges~ ges4( f)
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    bes4~ bes4. des~ des2
    s16
    ces2 ees aes, des
}

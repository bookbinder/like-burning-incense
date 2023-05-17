\version "2.20.0"
\include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key gis \minor
antiphon = "1"
psalmtone = "38"
psalmtonestruct = "32"
psalmnum = "Ps_51"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = gis


text = \lyricmode {
    \set includeGraceNotes = ##t
    You a -- lone I have grieved by my sin; " * " 
    have pi -- ty on me, O Lord.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    cis8[ dis] cis gis'4 cis,8 dis dis[ fis] e e e4( dis) \bar "'"
    \hideNotes e16 \unHideNotes   %so that I can align the * better
    dis8 e4 dis8 cis e[ fis] e e4( dis) \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    gis\breve*11/16 b\breve*5/16
    s16
    gis\breve*7/16 b2
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    e\breve *11/16 fis\breve*5/16
    s16
    e\breve*7/16 gis2
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    cis\breve*11/16 b\breve*5/16
    s16
    cis\breve*7/16 gis2
}

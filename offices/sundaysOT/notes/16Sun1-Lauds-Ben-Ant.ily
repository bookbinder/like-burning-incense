\version "2.20.0"
\include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key cis \minor
antiphon = "Ben."
psalmtone = "42"
psalmtonestruct = "43"
psalmnum = "Benedictus"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = gis


text = \lyricmode {
    \set includeGraceNotes = ##t
    He saw the great "crowd * "
    and had pi -- ty on them, for they were like sheep with -- out a shep -- herd.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    r8 cis8 e fis fis[ gis] gis4 \bar "'" gis8 fis[ gis] fis4 e8 e \bar "" dis4 \bar "'"
    dis8 dis[ e] dis dis[ e] \bar "" fis4 e8 fis gis \bar "" gis8[ cis,] cis4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    gis2 b4 gis4.~ gis4 cis2 b\breve*8/16 cis\breve*5/16 gis2
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    e2 dis4 e4.~ e4 a2 fis\breve*8/16~ fis\breve*5/16~ fis4 e
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    cis2~ cis4~ cis4.~ cis4 a2 b\breve*8/16 a\breve*5/16 cis2
}

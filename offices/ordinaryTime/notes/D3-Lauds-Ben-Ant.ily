\version "2.20.0"
\include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key cis \minor
antiphon = "B"
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
    Lord, save us " * "
    from the hands of all who hate us.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    cis8[( dis e dis] cis4) gis'8[ fis gis] gis4 \bar "'"
    \hideNotes e16 \unHideNotes   %so that I can align the * better
    gis8 gis fis[ gis] fis e[ dis] b dis[ cis] cis4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    gis2.~ gis\breve*7/16
    s16
    cis4. b gis2
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    e2. dis\breve*7/16
    s16
    fis2.~ fis4 e
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    cis2. b\breve*7/16
    s16
    a4. gis cis2
}

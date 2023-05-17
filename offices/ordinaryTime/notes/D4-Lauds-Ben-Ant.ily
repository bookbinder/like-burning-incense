\version "2.20.0"
\include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key cis \minor
antiphon = "B"
psalmtone = "56"
psalmtonestruct = "43"
psalmnum = "Benedictus"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = gis

text = \lyricmode {
    \set includeGraceNotes = ##t
    Let us serve the Lord in ho -- li -- ness " * "
    all the days of our life.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    cis8 dis e[ dis] cis dis[ cis] b cis[ gis'] gis gis4 \bar "'"
    \hideNotes e16 \unHideNotes   %so that I can align the * better
    gis8[ a] gis fis4 e8 dis e[( dis] cis4) \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    gis\breve*5/16 a4. gis\breve*5/16
    s16
    cis\breve*7/16 gis2
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    e\breve*5/16 fis4. e\breve*5/16
    s16
    fis\breve*7/16~ fis4( e)
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    cis\breve*5/16~ cis4.~ cis\breve*5/16
    s16
    a\breve*7/16 cis2
}

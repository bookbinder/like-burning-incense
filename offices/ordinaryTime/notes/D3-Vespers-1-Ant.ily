\version "2.20.0"
%% include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key gis \minor
antiphon = "1"
psalmtone = "39"
psalmtonestruct = "43"
psalmnum = "Ps_137_1-6"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = gis

text = \lyricmode {
    \set includeGraceNotes = ##t
    If I for -- get you, Je -- ru -- sa -- lem,  \markup \with-color #(x11-color 'gray36) { \tiny \raise #.5 \char ##x1F7B6 } _
    let my right hand wi -- ther.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    r8 cis8 b cis e[ fis] fis4 gis8 fis[ e] dis dis4 \bar "'"
    \hideNotes e16 \unHideNotes   %so that I can align the * better
    dis8 e cis[ gis'] gis4 fis8[ e dis] dis4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    gis2. b4. cis b2
    s16
    gis2 cis4. b4
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    e2. dis4. e fis2
    s16
    e2 gis4.~ gis4
}
bassNotesAnt = \relative c {
    \global
    \keysig
    cis2. b2.~ b2
    s16
    cis2 gis4.~ gis4
}

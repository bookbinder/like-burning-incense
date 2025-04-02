\version "2.20.0"
%% include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key e \major
antiphon = "B"
psalmtone = "8"
psalmtonestruct = "33"
psalmnum = "Benedictus"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = gis


text = \lyricmode {
    \set includeGraceNotes = ##t
    Bles -- sed be the \ll "Lord  * " _
    our God.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    gis8[ a] gis fis gis a([ gis] fis4) \bar "'"
    \hideNotes e16 \unHideNotes   %so that I can align the * better
    fis8[ a] a4( gis) \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    b\breve*5/16 cis2
    s16
    e4~ e2    
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    e\breve*5/16~ e2
    s16
    a4 b2
}
bassNotesAnt = \relative c {
    \global
    \keysig
    e\breve*5/16 a,2
    s16
    cis4 e2
}

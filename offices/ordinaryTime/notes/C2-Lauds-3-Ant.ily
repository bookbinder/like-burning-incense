\version "2.20.0"
%% include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key e \major
antiphon = "3"
psalmtone = "9"
psalmtonestruct = "33"
psalmnum = "Ps_96"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = gis


text = \lyricmode {
    \set includeGraceNotes = ##t
    Sing to the \ll "Lord  * " _
    and bless his name.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    gis8[ a] gis fis b4( gis) \bar "'"
    \hideNotes e16 \unHideNotes   %so that I can align the * better
    gis8 fis([ a] gis4) fis8 fis4( e) \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    e2~ e\breve*5/16
    s16
    e\breve*5/16 b2
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    b2 gis\breve*5/16
    s16
    a\breve*5/16 gis2
}
bassNotesAnt = \relative c {
    \global
    \keysig
    e2~ e\breve*5/16
    s16
    cis\breve*5/16 e2
}

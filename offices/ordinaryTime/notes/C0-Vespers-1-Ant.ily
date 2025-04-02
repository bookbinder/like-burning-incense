\version "2.20.0"
%% include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key e \major
antiphon = "1"
psalmtone = "11"
psalmtonestruct = "33"
psalmnum = "Ps_113"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = gis


text = \lyricmode {
    \set includeGraceNotes = ##t
    From the ri -- sing of the sun to its set -- \ll "ting  * " _ 
    may the name of the Lord be praised.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    e8 fis gis[ a] gis fis gis a4 a8 b a[ gis] gis4 \bar "'"
    \hideNotes e16 \unHideNotes   %so that I can align the * better
    gis8 a b[ cis] b a gis[ fis] e fis4( e) \bar "||"
}
altoNotesAnt = \relative e' {
    \global
    \keysig
    s4 * 3 s8 s4 s8 s8 s2 
    s16
    gis4 e2 cis4. b2
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    gis4 b\breve*5/16 cis2 e2
    s16
    b4~ b2 a4.~ a4( gis)
}
bassNotesAnt = \relative c {
    \global
    \keysig
    e4~ e\breve*5/16~ e2~ e~
    s16
    e4 gis2 a4. e2
}

\version "2.20.0"
%% include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key e \major
antiphon = "1"
psalmtone = "12"
psalmtonestruct = "34"
psalmnum = "Ps_87"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = gis


text = \lyricmode {
    \set includeGraceNotes = ##t
    Glo -- rious things are said of \ll "you,  * " _
    O Ci -- ty of God.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    gis8[ a] gis gis gis fis[ gis] fis e4
    \hideNotes e16 \unHideNotes   %so that I can align the * better
    e8 fis[ e] cis b cis4( e) \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    e\breve*5/16 cis\breve*6/16
    s16
    cis4 s4 a4( gis)
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    b\breve*5/16 a\breve*6/16~ 
    s16
    a4 dis,4 e2
}
bassNotesAnt = \relative c {
    \global
    \keysig
    e\breve*5/16 a\breve*6/16
    s16
    a,4 b e,2

}

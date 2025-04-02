\version "2.20.0"
%% include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key gis \minor
antiphon = "1"
psalmtone = "53"
psalmtonestruct = "43"
psalmnum = "Ps_125"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
     The Lord sur -- rounds his peo -- \ll "ple  * " _
    with his strength.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    r8 dis dis[ gis] gis fis4 gis8 b[ ais gis] gis4
    \hideNotes e16 \unHideNotes   %so that I can align the * better
    fis8 e e4( dis) \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    r8 dis8~ dis4.~ dis cis\breve*5/16~
    s16
    cis4 b2
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    b4~ b4. ais4. gis\breve*5/16~
    s16
    gis4~ gis2
}
bassNotesAnt = \relative c' {
    \global
    \keysig
    gis4~ gis4. dis4. e\breve*5/16
    s16
    cis4 gis2

}

\version "2.20.0"
%% include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key cis \minor
antiphon = "3"
psalmtone = "42"
psalmtonestruct = "43"
psalmnum = "Eph_1_3-10"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = gis
%% Master transposition after accounting for psalm tone
master-from-pitch = a
master-to-pitch = a

text = \lyricmode {
    \set includeGraceNotes = ##t
    God planned in the full -- ness of time  
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
    to re -- store all things in Christ.
}
sopNotesAnt = \relative e' {
    cis4 e8[ dis] cis b cis[ gis'] gis gis fis[( gis] fis4) \bar ""
    \noBreak \hideNotes e16 \unHideNotes   %so that I can align the * better
    \allowBreak fis8
    \allowBreak fis
    \allowBreak e[ fis]
    \allowBreak gis4
    \allowBreak cis,8
    \allowBreak b
    \allowBreak cis4 \bar "||"
}
altoNotesAnt = \relative c' {
    gis\breve*10/16 cis\breve*8/16
    s16
    gis2~ gis4
}
tenorNotesAnt = \relative g {
    e\breve*10/16 fis\breve*8/16~
    s16
    fis4 dis e
}
bassNotesAnt = \relative c {
    cis\breve*10/16 a\breve*8/16
    s16
    cis2~ cis4
}

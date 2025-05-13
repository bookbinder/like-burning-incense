\version "2.20.0"
%% include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key e \major
antiphon = "2"
psalmtone = "8"
psalmtonestruct = "33"
psalmnum = "Isa_33_13-16"
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
    Bless -- ed is the up -- right man,  
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
    who speaks the truth.
}
sopNotesAnt = \relative e' {
    gis8[ a] gis fis gis a a gis4
    \hideNotes e16 \unHideNotes   %so that I can align the * better
    \allowBreak gis8
    \allowBreak fis[ a gis]
    \allowBreak fis
    \allowBreak a4( gis) \bar "||"
}
altoNotesAnt = \relative c' {
    e\breve*5/16~ e4~ e4.~ 
    s16
    e2~ e
}
tenorNotesAnt = \relative g {
    b\breve*5/16 cis4 b4.
    s16
    a2 b
}
bassNotesAnt = \relative c {
    e\breve*5/16~ e4~ e4.
    s16
    cis2 e
}

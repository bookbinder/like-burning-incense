\version "2.20.0"
%% include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key gis \minor
antiphon = "1"
psalmtone = "38"
psalmtonestruct = "32"
psalmnum = "Ps_51"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = gis
%% Master transposition after accounting for psalm tone
master-from-pitch = cis
master-to-pitch = c


text = \lyricmode {
    \set includeGraceNotes = ##t
    You a -- lone I have grieved by my sin;  
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
    have pi -- ty on me, O Lord.
}
sopNotesAnt = \relative e' {
    cis8[ dis] cis gis'4 cis,8 dis dis[ fis] e e \bar "" e4( dis) \bar ""
    \noBreak \hideNotes e16 \unHideNotes   %so that I can align the * better
    \allowBreak dis8
    \allowBreak e4
    \allowBreak dis8
    \allowBreak cis
    \allowBreak e[ fis]
    \allowBreak e
    \allowBreak e4( dis) \bar "||"
}
altoNotesAnt = \relative c' {
    gis\breve*11/16 b\breve*5/16
    s16
    gis\breve*7/16 b2
}
tenorNotesAnt = \relative g {
    e\breve *11/16 fis\breve*5/16
    s16
    e\breve*7/16 gis2
}
bassNotesAnt = \relative c {
    cis\breve*11/16 b\breve*5/16
    s16
    cis\breve*7/16 gis2
}

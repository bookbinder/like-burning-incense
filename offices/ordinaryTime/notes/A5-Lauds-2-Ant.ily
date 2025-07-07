\version "2.20.0"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key cis \minor 
antiphon = "2"
psalmtone = "45"
psalmtonestruct = "42"
psalmnum = "Jer_31_10-14"
% transposition interval for  the corresponding psalm tone
	% to match the key signature of this antiphon. For
	% use in cantor (antiphon) and organ (psalm) scores:
frompitch = a
topitch = gis
%% Master transposition after accounting for psalm tone
master-from-pitch = a
master-to-pitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    My peo -- ple, says the Lord,
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    will be filled with my bles -- sings. 
}
sopNotesAnt = \relative e' {
    r8 gis8 fis[ gis] gis fis e fis[( e] cis4) 
    \noBreak \hideNotes cis16 \unHideNotes   %so that I can align the * better
    \allowBreak cis8
    \allowBreak b
    \allowBreak dis[ fis]
    \allowBreak e
    \allowBreak dis
    \allowBreak e[ cis]
    \allowBreak cis4 \bar "||"
}
altoNotesAnt = \relative c' {
    gis\breve*7/16 cis2~ s16
    cis4 b2 gis2
}    
tenorNotesAnt = \relative g {
    e\breve*7/16~ e2 s16
    a4 fis2~ fis4 e
}
bassNotesAnt = \relative c {
    cis\breve*7/16 a2~ s16
    a4 b gis cis2
}

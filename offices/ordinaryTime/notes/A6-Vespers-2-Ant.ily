\version "2.20.0"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key cis \minor 
antiphon = "2"
psalmtone = "43"
psalmtonestruct = "43"
psalmnum = "Ps_46"
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
    The might -- y Lord is with us; 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    the God of Ja -- cob is our strong -- hold.
}
sopNotesAnt = \relative e' {
    r8 cis8 b cis cis[ gis'] gis fis4 fis 
    \hideNotes fis16 \unHideNotes   %so that I can align the * better
    \allowBreak fis8
    \allowBreak gis
    \allowBreak fis
    \allowBreak e[ fis]
    \allowBreak e
    \allowBreak dis
    \allowBreak e
    \allowBreak dis[ cis]
    \allowBreak cis4 \bar "||"
}
altoNotesAnt = \relative c' {
    s2 cis4. s2 s16
    s4. cis4. a4 gis2
}    
tenorNotesAnt = \relative g {
    gis2~ gis4. b\breve*7/16 s16
    gis4. fis4 e2
}
bassNotesAnt = \relative c {
    e2~ e4. dis\breve*7/16 s16
    cis4.~ cis4~ cis2
}

\version "2.20.0"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key b \major 
antiphon = "3"
psalmtone = "55"
psalmtonestruct = "32"
psalmnum = "Ps_33"
% transposition interval for  the corresponding psalm tone
	% to match the key signature of this antiphon. For
	% use in cantor (antiphon) and organ (psalm) scores:
frompitch = a
topitch = a
%% Master transposition after accounting for psalm tone
master-from-pitch = cis
master-to-pitch = c


text = \lyricmode {
    \set includeGraceNotes = ##t
    The loy -- al heart
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    must praise the Lord.
}
sopNotesAnt = \relative e' {
    r8 dis8 fis gis gis4  
    \noBreak \hideNotes gis16 \unHideNotes   %so that I can align the * better
    \allowBreak gis8
    \allowBreak fis[( gis] ais4)
    \allowBreak fis8
    \allowBreak gis4 \bar "||"
}
altoNotesAnt = \relative c' {
    s2 cis4. s16
    fis\breve*5/16 dis4
}    
tenorNotesAnt = \relative g {
    b2 gis4. s16
    ais\breve*5/16 b4
}
bassNotesAnt = \relative e {
    gis2 e4. s16
    dis\breve*5/16 gis4
}

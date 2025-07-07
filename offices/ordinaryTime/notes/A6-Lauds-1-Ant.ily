\version "2.20.0"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key e \major 
antiphon = "1"
psalmtone = "9"
psalmtonestruct = "33"
psalmnum = "Ps_51"
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
    Lord, you will ac -- cept the true sac -- ri -- fice
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    of -- fered on your al -- tar.
}
sopNotesAnt = \relative e' {
    e8[ gis] e dis e cis b e[( fis] gis4) \bar "" a8 gis fis4 
    \noBreak \noBreak \hideNotes fis16 \unHideNotes   %so that I can align the * better
    \allowBreak fis8[ gis]
    \allowBreak fis
    \allowBreak fis
    \allowBreak gis
    \allowBreak fis[ e]
    \allowBreak e4 \bar "||"
}
altoNotesAnt = \relative c' {
     b\breve*7/16 cis2~ cis~ s16
     cis4.~ cis4 b2
}    
tenorNotesAnt = \relative g {
     e\breve*5/16 fis4 gis( e~) e2 s16
     fis4. a4~ a gis
}
bassNotesAnt = \relative e {
    gis,\breve*5/16 dis'4 cis2 a2~ s16
    a4.~ a4 e'2
}

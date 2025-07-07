\version "2.20.0"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key e \major 
antiphon = "1"
psalmtone = "45"
psalmtonestruct = "42"
psalmnum = "Ps_24"
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
    The man whose deeds are blame -- less
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    and whose heart is pure will climb the moun -- tain of the Lord.
}
sopNotesAnt = \relative e' {
    r8 cis8 e[ dis] cis dis e \bar "" fis[ gis fis] \allowBreak fis4
    \noBreak \noBreak \hideNotes gis16 \unHideNotes   %so that I can align the * better
    \allowBreak fis8
    \allowBreak e[ fis]
    \allowBreak fis[ gis a gis]
    \allowBreak fis
    \allowBreak fis4( gis)
    \allowBreak \breathe
    \allowBreak gis8
    \allowBreak fis[ gis]
    \allowBreak fis
    \allowBreak e[ cis]
    \allowBreak cis4
    \allowBreak b8
    \allowBreak cis
    \allowBreak dis4( cis) \bar "||"
}
altoNotesAnt = \relative c' {
    gis\breve*7/16 cis2.~ s16
    cis4 e\breve*5/16~ e\breve*5/16 
    cis4. s4 s4 s4 gis2
}    
tenorNotesAnt = \relative g {
    e\breve*7/16~ e2. s16
    a4~ a\breve*5/16 b\breve*5/16 
    a4. gis4 e dis e2
}
bassNotesAnt = \relative c {
    cis\breve*7/16 a2.~ s16
    a4 cis\breve*5/16 e\breve*5/16 
    a4. cis,2.~ cis2
}

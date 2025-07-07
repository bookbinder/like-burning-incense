\version "2.20.0"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key e \major 
antiphon = "1"
psalmtone = "9"
psalmtonestruct = "33"
psalmnum = "Ps_11"
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
    The Lord looks ten -- der -- ly
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    on those who are poor.
}
sopNotesAnt = \relative e' {
    r8 e8 dis[ e] cis cis b b4 
    \noBreak \hideNotes b16 \unHideNotes   %so that I can align the * better
    \allowBreak e8
    \allowBreak fis[ a]
    \allowBreak gis8
    \allowBreak fis
    \allowBreak e4 \bar "||"
}
altoNotesAnt = \relative c' {
    b\breve*10/16 s16 
    e2 b4
}    
tenorNotesAnt = \relative g {
    gis\breve*5/16 a4 gis4. s16
    cis4 a gis
}
bassNotesAnt = \relative c {
    e\breve*5/16~ e4~ e4.~ s16
    e2~ e4
}

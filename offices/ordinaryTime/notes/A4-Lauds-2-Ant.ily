\version "2.20.0"

% Will need these variables to build the cantor and organ scores:
keysig =  \key b \major 
antiphon = "2"
psalmtone = "55"
psalmtonestruct = "32"
psalmnum = "Judith_16_2-3a,_13-15"
% transposition interval for  the corresponding psalm tone
	% to match the key signature of this antiphon. For
	% use in cantor (antiphon) and organ (psalm) scores:
frompitch = a
topitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    O God, you are great and glo -- rious;
    \markup \with-color #(x11-color 'gray36) { \tiny \raise #.5 \char ##x1F7B6 }
    we mar -- vel at your power.
}
sopNotesAnt = \relative e' {
    \global	% will be populated by an include file
		% in the cantor/organ scores called lbi_defs
    \keysig
    r8 dis8 dis[ fis] dis fis gis[ b] ais gis4 fis4   
    \hideNotes fis16 \unHideNotes   %so that I can align the * better
    \allowBreak fis8 \allowBreak gis \allowBreak gis \allowBreak gis \bar "" \allowBreak fis \allowBreak gis4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    s2. fis4. dis\breve*5/16~ s16 
    dis2~ dis4
}    
tenorNotesAnt = \relative g {
    \global
    \keysig
    b4 ais2 b4. ais\breve*5/16 s16 
    cis2 b4
}
bassNotesAnt = \relative e {
    \global
    \keysig
    gis4 fis2 dis4.~ dis\breve*5/16~ s16 
    dis2 gis4
}

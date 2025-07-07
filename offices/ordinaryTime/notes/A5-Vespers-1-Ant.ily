\version "2.20.0"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key b \major 
antiphon = "1"
psalmtone = "55"
psalmtonestruct = "32"
psalmnum = "Ps_30"
% transposition interval for  the corresponding psalm tone
	% to match the key signature of this antiphon. For
	% use in cantor (antiphon) and organ (psalm) scores:
frompitch = a
topitch = a
%% Master transposition after accounting for psalm tone
master-from-pitch = ais
master-to-pitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    I cried to you, Lord,  
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    and you healed me; I will praise you for ev -- er.
}
sopNotesAnt = \relative e' {
    r8 dis8 gis[ fis] gis ais4 b8[( ais] gis4)
    \noBreak \hideNotes ais16 \unHideNotes \bar ""   %so that I can align the * better
    \allowBreak fis8
    \allowBreak gis
    \allowBreak ais4
    \allowBreak ais4
    \allowBreak ais8
    \allowBreak b
    \allowBreak gis[ ais]
    \allowBreak gis
    \allowBreak fis
    \allowBreak gis4
    \allowBreak gis \bar "||"
}
altoNotesAnt = \relative c' {
    r8 \noBreak \hideNotes dis8~ \unHideNotes dis4.~ dis4 cis2.~ s16
    cis2 fis4~ fis2 dis2
}    
tenorNotesAnt = \relative g {
    gis4~ gis4. fis4 gis2. s16
    fis2 cis'4~ cis2~ cis4 b
}
bassNotesAnt = \relative c {
    b4~ b4. dis4 e2. s16
    fis2~ fis4 dis2 gis
}

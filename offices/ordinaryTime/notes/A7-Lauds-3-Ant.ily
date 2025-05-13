\version "2.20.0"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key gis \minor 
antiphon = "3"
psalmtone = "53"
psalmtonestruct = "43"
psalmnum = "Ps_117"
% transposition interval for  the corresponding psalm tone
	% to match the key signature of this antiphon. For
	% use in cantor (antiphon) and organ (psalm) scores:
frompitch = a
topitch = a
%% Master transposition after accounting for psalm tone
master-from-pitch = a
master-to-pitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    O praise the Lord,
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    all you nations.
}
sopNotesAnt = \relative e' {
    gis4 fis8[ gis] ais8 \allowBreak b8[( ais] gis4) 
    \noBreak \hideNotes des16 \unHideNotes   %so that I can align the * better
    \allowBreak gis4
    \allowBreak fis8
    \allowBreak ais4
    \allowBreak gis \bar "||"
}
altoNotesAnt = \relative c' {
    b4 cis4. dis2~ s16
    dis4.~ dis2
}    
tenorNotesAnt = \relative g {
    dis4 e4. dis4( gis) s16
    ais4. cis4 b
}
bassNotesAnt = \relative c {
    gis4~ gis4.~ gis4( b) s16
    dis4. gis2
}

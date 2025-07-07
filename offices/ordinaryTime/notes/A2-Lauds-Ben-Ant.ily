\version "2.20.0"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key e \major 
antiphon = "B"
psalmtone = "8"
psalmtonestruct = "33"
psalmnum = "Benedictus"
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
    Bless -- ed be the Lord,
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    our God.
}
sopNotesAnt = \relative e' {
  gis8[ a] gis fis gis a[( gis] fis4)  
  \noBreak \noBreak \hideNotes fis16 \unHideNotes   %so that I can align the * better
  \allowBreak fis8[ a]
  \allowBreak a4( gis) \bar "||"
}
altoNotesAnt = \relative c' {
    b\breve*5/16 cis2 s16
    e4~ e2
}    
tenorNotesAnt = \relative g {
    e\breve*5/16~ e2 s16
    a4 b2
}
bassNotesAnt = \relative c {
    e\breve*5/16 a,2 s16
    cis4 e2
}

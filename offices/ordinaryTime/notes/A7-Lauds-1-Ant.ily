\version "2.20.0"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key e \major 
antiphon = "1"
psalmtone = "45"
psalmtonestruct = "42"
psalmnum = "Ps_119_145-152"
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
    Dawn finds me rea -- dy
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
    to wel -- come you, my God.
}
sopNotesAnt = \relative e' {
    e4 b8 cis cis[ gis'] gis4 
    \hideNotes des16 \unHideNotes   %so that I can align the * better
    \allowBreak gis8
    \allowBreak fis[ gis]
    \allowBreak fis
    \allowBreak e
    \allowBreak dis
    \allowBreak e[( dis] cis4) \bar "||"
}
altoNotesAnt = \relative c' {
    s2 cis4 b4. s16
    cis4. b4 gis2
}    
tenorNotesAnt = \relative g {
    gis4 fis gis~ gis4. s16
    a4. fis4~ fis( e)
}
bassNotesAnt = \relative c {
    cis4 dis e~ e4. s16
    a,4. b4 cis2
}

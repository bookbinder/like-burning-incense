\version "2.20.0"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key e \major 
antiphon = "3"
psalmtone = "9"
psalmtonestruct = "33"
psalmnum = "Ps_29"
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
    A -- dore the Lord
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    in his ho -- ly court.
}
sopNotesAnt = \relative e' {
    r8 e8 fis[ gis] gis fis([ gis] a4)  
    \hideNotes a16 \unHideNotes   %so that I can align the * better
    \allowBreak a8
    \allowBreak a
    \allowBreak gis[ a]
    \allowBreak fis
    \allowBreak e4 \bar "||"
}
altoNotesAnt = \relative c' {
    r8 \hideNotes e8~ \unHideNotes e4.~ e2. s16
    cis4. b4
}    
tenorNotesAnt = \relative g {
    gis4 b4. a2.~ s16
    a4. gis4
}
bassNotesAnt = \relative c {
    e4~ e4. cis2. s16
    a4. e'4
}

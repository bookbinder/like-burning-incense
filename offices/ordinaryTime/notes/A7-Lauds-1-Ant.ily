\version "2.20.0"

% Will need these variables to build the cantor and organ scores:
keysig =  \key e \major 
antiphon = "1"
psalmtone = "45"
psalmtonestruct = "42"
psalmnum = "Ps_119_145-152_(XIX_Koph)"
% transposition interval for  the corresponding psalm tone
	% to match the key signature of this antiphon. For
	% use in cantor (antiphon) and organ (psalm) scores:
frompitch = a
topitch = gis


text = \lyricmode {
    \set includeGraceNotes = ##t
    Dawn finds me read -- y " * " 
    to wel -- come you, my God.
}
sopNotesAnt = \relative e' {
    \global	% will be populated by an include file
		% in the cantor/organ scores called lbi_defs
    \keysig
    \voiceOne
    e4 b8 cis cis[ gis'] gis4 
    \hideNotes des16 \unHideNotes   %so that I can align the * better
    gis8 fis[ gis] fis e dis e[( dis] cis4) \bar "||"  
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    s2 cis4 b4. s16
    cis4. b4 gis2
}    
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    gis4 fis gis~ gis4. s16
    a4. fis4~ fis( e)
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    cis4 dis e~ e4. s16
    a,4. b4 cis2
}

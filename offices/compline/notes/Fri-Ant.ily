\version "2.20.0"

% Will need these variables to build the cantor and organ scores:
keysig =  \key cis \minor 
antiphon = "1"
psalmtone = "74"
psalmtonestruct = "33"
psalmnum = "Ps_88"
% transposition interval for  the corresponding psalm tone
	% to match the key signature of this antiphon. For
	% use in cantor (antiphon) and organ (psalm) scores:
frompitch = a
topitch = gis


text = \lyricmode {
    \set includeGraceNotes = ##t
    Day and "night * " I cry to you, my God.
}
sopNotesAnt = \relative e' {
    \global	% will be populated by an include file
		% in the cantor/organ scores called lbi_defs
    \keysig
    \voiceOne
    cis8[ e] fis gis4 \bar "'"
    fis8 gis[ b] gis fis[ e] dis dis([ e] cis4) \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    gis2. dis' cis4 gis
}    
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    e2. fis gis4( e)
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    cis2. b cis2
}

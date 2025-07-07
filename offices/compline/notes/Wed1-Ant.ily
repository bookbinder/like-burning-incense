\version "2.20.0"

% Will need these variables to build the cantor and organ scores:
keysig =  \key gis \minor 
antiphon = "1"
psalmtone = "56"
psalmtonestruct = "43"
psalmnum = "Ps_31_1-6"
% transposition interval for  the corresponding psalm tone
	% to match the key signature of this antiphon. For
	% use in cantor (antiphon) and organ (psalm) scores:
frompitch = a
topitch = gis
master-from-pitch = ais
master-to-pitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    Lord "God, * " be my re -- fuge and my strength.
}
sopNotesAnt = \relative e' {
    \global	% will be populated by an include file
		% in the cantor/organ scores called lbi_defs
    \keysig
    \voiceOne
    cis8[ gis'] gis4 \bar "'" fis8 gis b[ gis] gis4 fis8 e fis([ e] cis4) \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    cis2. b cis2
  }    
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    gis2. fis gis4( e)
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    e2. dis cis2
}

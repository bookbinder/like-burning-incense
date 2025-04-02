\version "2.20.0"

% Will need these variables to build the cantor and organ scores:
keysig =  \key f \minor 
antiphon = "2"
psalmtone = "50"
psalmtonestruct = "33"
psalmnum = "Ps_134"
% transposition interval for  the corresponding psalm tone
	% to match the key signature of this antiphon. For
	% use in cantor (antiphon) and organ (psalm) scores:
frompitch = aes
topitch = aes


text = \lyricmode {
    \set includeGraceNotes = ##t
    In the si -- lent hours of "night, * " bless the Lord.
}
sopNotesAnt = \relative e' {
    \global	% will be populated by an include file
		% in the cantor/organ scores called lbi_defs
    \keysig
    \voiceOne
    f8 g aes[ g] f g f aes4( g) \bar "'"
    aes8([ c] bes4) aes8 g4( f) \bar "||"
  }
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    s2 s4. ees2~ ees4 f4. c2
}    
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    c4 bes\breve*5/16~ bes2 aes4~ aes4.~ aes2
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    aes'4 ees\breve*5/16~ ees2 c4( des4.) f2
}

\version "2.20.0"

% Will need these variables to build the cantor and organ scores:
keysig =  \key aes \major 
antiphon = "1"
psalmtone = "25"
psalmtonestruct = "43"
psalmnum = "Ps_91"
% transposition interval for  the corresponding psalm tone
	% to match the key signature of this antiphon. For
	% use in cantor (antiphon) and organ (psalm) scores:
frompitch = aes
topitch = aes


text = \lyricmode {
    \set includeGraceNotes = ##t
    Night holds no ter -- rors for "me * "
    slee -- ping un -- der God's wings.
}
sopNotesAnt = \relative e' {
    \global	% will be populated by an include file
		% in the cantor/organ scores called lbi_defs
    \keysig
    \voiceOne
    aes4 f8[ aes] aes g aes f ees4 \bar "'"
    f8 ees des ees ees[ f ees] des4 \bar "||"
  }
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    des\breve*8/16 ees4 des2 c4. aes4
}    
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    f\breve*8/16 aes4~ aes2~ aes4. f4
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    des\breve*8/16 c4 bes2 aes4. des4
}

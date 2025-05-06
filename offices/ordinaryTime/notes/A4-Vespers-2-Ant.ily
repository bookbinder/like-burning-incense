\version "2.20.0"

% Will need these variables to build the cantor and organ scores:
keysig =  \key f \minor 
antiphon = "2"
psalmtone = "50"
psalmtonestruct = "33"
psalmnum = "Ps_27_7-14"
% transposition interval for  the corresponding psalm tone
	% to match the key signature of this antiphon. For
	% use in cantor (antiphon) and organ (psalm) scores:
frompitch = a
topitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    I long to look on you, O Lord;  \markup \with-color #(x11-color 'gray36) { \tiny \raise #.5 \char ##x1F7B6 }
    do not turn your face from me.
}
sopNotesAnt = \relative e' {
    \global	% will be populated by an include file
		% in the cantor/organ scores called lbi_defs
    \keysig
    r8 f8 aes[ g] f bes bes bes aes g[( aes] g4)
    \hideNotes g16 \unHideNotes   %so that I can align the * better
    g8 aes4 g8 f \bar "" \allowBreak ees[ f] \allowBreak g \bar "" f4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    c\breve*5/16 f2~ f4 ees4. s16
    ees2~ ees4. c4
}    
tenorNotesAnt = \relative g {
    \global
    \keysig
    aes\breve*5/16 des2 bes4~ bes4. s16
    aes2 g4. aes4
}
bassNotesAnt = \relative c {
    \global
    \keysig
    f\breve*5/16 des2 ees4~ ees4. s16
    c2~ c4. f4
}

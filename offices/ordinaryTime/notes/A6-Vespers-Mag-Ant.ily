\version "2.20.0"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key des \major 
antiphon = "M"
psalmtone = "34"
psalmtonestruct = "33"
psalmnum = "Magnificat"
% transposition interval for  the corresponding psalm tone
	% to match the key signature of this antiphon. For
	% use in cantor (antiphon) and organ (psalm) scores:
frompitch = a
topitch = a
%% Master transposition after accounting for psalm tone
master-from-pitch = aes
master-to-pitch = g


text = \lyricmode {
    \set includeGraceNotes = ##t
    The Lord has come to the help of his ser -- vants, 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
    for he has re -- mem -- bered his pro -- mise of mer -- cy.
}
sopNotesAnt = \relative e' {
    r8 des8 f ges aes4 ges8 aes bes[ aes] ges f \bar "" f[ ees] ees4 
    \noBreak \hideNotes ees16 \unHideNotes   %so that I can align the * better
    \allowBreak ees8
    \allowBreak ees[ f]
    \allowBreak ees
    \allowBreak ees
    \allowBreak des[ aes']
    \allowBreak aes
    \allowBreak ges
    \allowBreak f[ ees]
    \allowBreak ees
    \allowBreak des
    \allowBreak ees[(des] ees[ des])
    \allowBreak des4 \bar "||"
}
altoNotesAnt = \relative c' {
    s8 \noBreak \hideNotes des8~ \unHideNotes des4~ des2~ des2 c\breve*5/16 s16
    bes2 des bes aes~ aes4
}    
tenorNotesAnt = \relative g {
    f2~ f ges4 aes~ aes\breve*5/16 s16
    ees2 f ges~ ges f4
}
bassNotesAnt = \relative c {
    des2~ des~ des aes\breve*5/16 s16
    ges2 des'1~ des2~ des4 
}

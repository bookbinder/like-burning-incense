\version "2.20.0"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key ges \major 
antiphon = "M"
psalmtone = "37"
psalmtonestruct = "33"
psalmnum = "Magnificat"
% transposition interval for  the corresponding psalm tone
	% to match the key signature of this antiphon. For
	% use in cantor (antiphon) and organ (psalm) scores:
frompitch = a
topitch = aes
%% Master transposition after accounting for psalm tone
master-from-pitch = ges
master-to-pitch = f


text = \lyricmode {
    \set includeGraceNotes = ##t
    My spir -- it re -- joi -- ces  
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    in God my Sav -- ior.
}
sopNotesAnt = \relative e' {
    r8 des8 ges[ f] ges aes ces[ bes aes] aes4 
    \noBreak \hideNotes aes16 \unHideNotes   %so that I can align the * better
    \allowBreak aes8
    \allowBreak ges[ ees f]
    \allowBreak ees
    \allowBreak ees[ des]
    \allowBreak des4 \bar "||"
}
altoNotesAnt = \relative c' {
    r8 \noBreak \hideNotes des8~ \unHideNotes des2 ees2. s16
    ces2 aes2
}    
tenorNotesAnt = \relative g {
    ges4~ ges2~ ges2. s16
    ees2 f2
}
bassNotesAnt = \relative c {
    bes4~ bes2 ces2.~ s16
    ces2 des2
}

\version "2.20.0"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key aes \major 
antiphon = "3"
psalmtone = "26"
psalmtonestruct = "33"
psalmnum = "Ps_48"
% transposition interval for  the corresponding psalm tone
	% to match the key signature of this antiphon. For
	% use in cantor (antiphon) and organ (psalm) scores:
frompitch = a
topitch = a
%% Master transposition after accounting for psalm tone
master-from-pitch = a
master-to-pitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    The Lord is great
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    and wor -- thy to be praised in the ci -- ty of our God.
}
sopNotesAnt = \relative e' {
    r8 ees8 aes[ g] aes f4    
    \noBreak \hideNotes f16 \unHideNotes \bar ""   %so that I can align the * better
    \allowBreak f8
    \allowBreak g
    \allowBreak f
    \allowBreak f
    \allowBreak f
    \allowBreak ees4
    \allowBreak ees8
    \allowBreak ees
    \allowBreak des[ f]
    \allowBreak f
    \allowBreak f
    \allowBreak f
    \allowBreak ees4 \bar "||"
}
altoNotesAnt = \relative c' {
    r8 \noBreak \hideNotes ees8~ \unHideNotes ees4.~ des\breve*7/16 s16
    c2 des\breve*5/16 bes4
}    
tenorNotesAnt = \relative g {
    aes4~ aes4.~ aes\breve*7/16 s16
    aes2~ aes\breve*5/16 g4
}
bassNotesAnt = \relative c {
    c4~ c4. des\breve*7/16 s16
    aes2 bes\breve*5/16 ees4
}

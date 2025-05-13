\version "2.20.0"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key aes \major 
antiphon = "B"
psalmtone = "23"
psalmtonestruct = "42"
psalmnum = "Benedictus"
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
    The Lord has come to his peo -- ple
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    and set them free.
}
sopNotesAnt = \relative e' {
    r8 c8 c[ des] bes ees4 f8 aes g[ f ees] ees4 
    \noBreak \hideNotes des16 \unHideNotes   %so that I can align the * better
    \allowBreak ees8
    \allowBreak f[ ees]
    \allowBreak des[ f]
    \allowBreak ees4 \bar "||"
}
altoNotesAnt = \relative c' {
    s2 s8 ees2~ ees4. bes s16
    des2 bes4
}    
tenorNotesAnt = \relative g {
    ees4 f4. aes2 bes4. g4. s16
    f2 g4
}
bassNotesAnt = \relative c {
    aes4 des4. c2 ees2. s16 
    bes2 ees4
}

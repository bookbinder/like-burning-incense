\version "2.20.0"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key aes \major 
antiphon = "3"
psalmtone = "20"
psalmtonestruct = "42"
psalmnum = "Ps_149"
% transposition interval for  the corresponding psalm tone
	% to match the key signature of this antiphon. For
	% use in cantor (antiphon) score:
frompitch = a
topitch = aes
%% Master transposition after accounting for psalm tone
master-from-pitch = a
master-to-pitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    Let the peo -- ple of Zi -- on
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    re -- joice in their King, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
    c8 des ees f ees \bar "" aes[ g f] f4 
    \hideNotes f16 \unHideNotes   %so that I can align the * better
    \allowBreak f8
    \allowBreak ees[ f]
    \allowBreak ees
    \allowBreak des
    \allowBreak f4
    \allowBreak \breathe
    \allowBreak ees8
    \allowBreak des
    \allowBreak des[ c]
    \allowBreak c4 \bar "||"
}
altoNotesAnt = \relative c' {
    c\breve*5/16 des2. s16
    s2 bes2~ 
    bes4 aes4
}    
tenorNotesAnt = \relative g {
    aes\breve*5/16~ aes2.~ s16
    aes2 f2~ 
    f2
}
bassNotesAnt = \relative c {
    aes\breve *5/16 bes2. s16
    c2 des4 
    bes4 f2
}

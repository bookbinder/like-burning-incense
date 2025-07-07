\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig = \key aes \major
antiphon = "3"
psalmtone = "21"
psalmtonestruct = "33"
psalmnum = "Ps_81"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a
%% master transposition after accounting for psalm tone
master-from-pitch = a
master-to-pitch = a


text = \lyricmode {
  \set includeGraceNotes = ##t
  Such is our God,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  he will be our guide for -- e -- ver, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
    
    
    aes4 g8 f f4( ees)
    \noBreak \noBreak \hideNotes ees16 \unHideNotes
    \allowBreak ees8[ f]
    \allowBreak ees
    \allowBreak ees
    \allowBreak ees
    \allowBreak des[ f]
    \allowBreak aes
    \allowBreak g
    \allowBreak aes
    \allowBreak \breathe
    \allowBreak g8
    \allowBreak f
    \allowBreak f[ ees]
    \allowBreak ees4 \bar "||"
}
altoNotesAnt = \relative c' {
    
    
    ees2 s\breve*9/16 s16 des\breve*5/16 ~ des4 bes2
}
tenorNotesAnt = \relative g {
    
    
    aes2 bes\breve*9/16 s16 aes\breve*5/16~ aes4~ aes4 g4
}
bassNotesAnt = \relative c {
    
    
    c2 g'\breve*9/16 s16 f\breve*5/16 des4 ees2
}

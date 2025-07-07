\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig = \key aes \major
antiphon = "2"
psalmtone = "21"
psalmtonestruct = "33"
psalmnum = "1_Sam_2_1-10"
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
  You sent forth your Spi -- rit, O Lord,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  and all things were cre -- a -- ted, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
    
    
    r8 ees8 ees[ f] ees des ees4 f8 ees aes([ bes] aes4)
    \noBreak \noBreak \hideNotes aes16 \unHideNotes
    \allowBreak aes8
    \allowBreak bes
    \allowBreak aes
    \allowBreak g
    \allowBreak aes
    \allowBreak f
    \allowBreak f
    \allowBreak \breathe
    \allowBreak g
    \allowBreak f
    \allowBreak f[ ees]
    \allowBreak ees4 \bar "||"
}
altoNotesAnt = \relative c' {
    
    
    s\breve*10/16 ees\breve*5/16 s16 f2 des bes
}
tenorNotesAnt = \relative g {
    
    
    c\breve*10/16 aes\breve*5/16~ s16 aes2~ aes~ aes4 g
}
bassNotesAnt = \relative c {
    
    
    aes\breve*10/16 c\breve*5/16 s16 des2~ des ees
}

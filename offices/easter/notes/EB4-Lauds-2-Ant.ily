\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig = \key f \minor
antiphon = "2"
psalmtone = "50"
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
  The Lord puts to death
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  and rai -- ses to life, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
    
    
    r8 f f4 ees8 f g([ aes] bes4)
    \noBreak \noBreak \hideNotes bes16 \unHideNotes
    \allowBreak bes8
    \allowBreak aes[ bes]
    \allowBreak aes
    \allowBreak g
    \allowBreak g4( f) \bar "'"
    \allowBreak ees8
    \allowBreak ees[ f]
    \allowBreak f4
    f \bar "||"
}
altoNotesAnt = \relative c' {
    
    
    c2. f\breve*5/16 s16 ees2 c\breve*5/16 ees4 des c
}
tenorNotesAnt = \relative g {
    
    
    aes2.~ aes\breve*5/16~ s16 aes2~ aes\breve*5/16 g4 aes2
}
bassNotesAnt = \relative c {
    
    
    f2. des\breve*5/16 s16 c2 aes\breve*5/16 c4 f2
}

\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig = \key f \minor
antiphon = "2"
psalmtone = "50"
psalmtonestruct = "33"
psalmnum = "Hab_3_2-4,_13a,_15-19"
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
  Tru -- ly you are a hid -- den God,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  the God of Is -- ra -- el, the Sa -- vior, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
    
    
    f8[ aes] g f4 ees8 f g[ aes] g g4
    \noBreak \hideNotes g16 \unHideNotes
    \allowBreak g8
    \allowBreak g[ aes]
    \allowBreak bes
    \allowBreak aes
    \allowBreak g
    \allowBreak f
    \allowBreak ees
    \allowBreak g[-- aes f]
    \allowBreak f4 \bar "'"
    \allowBreak ees8
    \allowBreak ees[ f]
    \allowBreak f4
    \allowBreak f \bar "||"
}
altoNotesAnt = \relative c' {
    
    
    s\breve*7/16 s2. s16 f\breve*7/16 des2. c2
}
tenorNotesAnt = \relative g {
    
    
    c\breve*7/16 bes2.~ s16 bes\breve*7/16~ bes2.~ bes4~ bes4 aes4
}
bassNotesAnt = \relative c {
    
    
    aes'\breve*7/16 ees2. s16 des\breve*7/16 bes2. c4 f2
}

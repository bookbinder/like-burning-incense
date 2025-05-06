\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig = \key ges \major
antiphon = "B"
psalmtone = "60"
psalmtonestruct = "33"
psalmnum = "Benedictus"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a
%% master transposition after accounting for psalm tone
master-from-pitch = ges
master-to-pitch = f


text = \lyricmode {
  \set includeGraceNotes = ##t
  Tru -- ly I tell you,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  un -- less you are born a -- gain you can -- not see the king -- dom
  of God, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
    
    
    aes4 f8 ges bes[ aes] aes4
    \noBreak \hideNotes aes16 \unHideNotes
    \allowBreak aes8
    \allowBreak aes[ bes]
    \allowBreak aes
    \allowBreak bes
    \allowBreak ces[ bes]
    \allowBreak aes
    \allowBreak aes4 \bar "'"
    \allowBreak aes8
    \allowBreak ges[ ees]
    \allowBreak ees[ f]
    \allowBreak ges4
    \allowBreak f8
    \allowBreak ees[ f]
    \allowBreak ees
    \allowBreak ees
    \allowBreak des4 \bar "'"
    \allowBreak ees8
    \allowBreak ees[ f]
    \allowBreak des4
    des \bar "||"
}
altoNotesAnt = \relative c' {
    
    
    des\breve*9/16 s16 ees\breve*10/16 des\breve*7/16
    ces2 aes4. bes4 aes2
}
tenorNotesAnt = \relative g {
    
    
    f\breve*9/16 s16 ges\breve*10/16~ ges\breve*7/16~
    ges2 f4. ges4~ ges4 f
}
bassNotesAnt = \relative c {
    
    
    des\breve*9/16 s16 ces\breve*10/16 bes\breve*7/16
    ces2 des4.~ des4~ des2
}

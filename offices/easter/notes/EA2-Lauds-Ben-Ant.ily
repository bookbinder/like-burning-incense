n\version "2.24.0"

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
master-from-pitch = a
master-to-pitch = a


text = \lyricmode {
  \set includeGraceNotes = ##t
  Go quick -- ly and tell his di -- sci -- ples:
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  The Lord is ri -- sen, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
    
    
    des4 des8[ aes'] aes ges aes[ bes] aes ges aes[ des,] des4
    \noBreak \hideNotes des16 \unHideNotes
    \allowBreak des8
    \allowBreak ces[ ees]
    \allowBreak ges
    \allowBreak f
    \allowBreak ges
    \allowBreak \breathe
    \allowBreak aes8[ ges]
    \allowBreak ees8
    \allowBreak des4
    des \bar "||"
}
altoNotesAnt = \relative c' {
    
    
    des4~ des2 ees2 des\breve*5/16 s16
    s\breve*5/16 ces4. aes2
}
tenorNotesAnt = \relative g {
    
    
    ges4 f2 ges2 f\breve*5/16 s16
    ges\breve*5/16~ ges4.~ ges4 f
}
bassNotesAnt = \relative c {
    
    
    bes4 des1~ des\breve*5/16 s16 ees\breve*5/16 ces4. des2
}

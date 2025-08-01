\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig = \key ges \major
antiphon = "3"
psalmtone = "78"
psalmtonestruct = "43"
psalmnum = "Ps_8"
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
  You have crowned your A -- noin -- ted One
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  with glo -- ry and ho -- nor, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
    
    
    f8 ges8 aes[ bes] aes ges aes des, des4
    \noBreak \noBreak \hideNotes des16 \unHideNotes
    \allowBreak des8
    \allowBreak ees[ f]
    \allowBreak ees
    \allowBreak f
    \allowBreak ges4
    \allowBreak ges \bar "'"
    \allowBreak f8
    \allowBreak ees
    \allowBreak ees[ des]
    \allowBreak des4 \bar "||"
}
altoNotesAnt = \relative c' {
    
    
    des4~ des\breve*13/16 s16 des2. aes2
}
tenorNotesAnt = \relative g {
    
    
    aes4 f\breve*9/16 s16 ges2~ ges2.~ ges4 f
}
bassNotesAnt = \relative c {
    
    
    des4~ des\breve*9/16 s16 ces2 bes2. des2
}

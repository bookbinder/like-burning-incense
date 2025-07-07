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
  Je -- sus called her by name:
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  Ma -- ry. She turned to him and said: Ra -- bo -- ni. Then
  he said to her: Do not touch me; I have not yet as -- cen -- ded
  to my Fa -- ther, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
    
    
    des8[ aes'] aes aes4 aes8 ges bes[ ces bes]
    \noBreak \noBreak \hideNotes g16 \unHideNotes
    \allowBreak aes8[-- bes aes f]
    \allowBreak f4 \bar "|"
    \allowBreak r8
    \allowBreak aes8
    \allowBreak ges[ f]
    \allowBreak ees
    \allowBreak des
    \allowBreak ees
    \allowBreak f4
    \allowBreak \breathe
    \allowBreak ees8[ f]
    \allowBreak des4
    \allowBreak des
    \allowBreak r4 \bar "|"
    \allowBreak des8[ ees]
    \allowBreak des
    \allowBreak ces[ ees]
    \allowBreak ges
    \allowBreak ges4 \bar "'"
    \allowBreak ges8
    \allowBreak f[ ges]
    \allowBreak aes4
    \allowBreak aes \bar "'"
    \allowBreak aes8[ bes]
    \allowBreak aes
    \allowBreak ges[ bes]
    \allowBreak des4
    \allowBreak ces8
    \allowBreak bes[ aes]
    \allowBreak aes
    \allowBreak aes
    \allowBreak aes
    \allowBreak ges[ f]
    \allowBreak ees8
    \allowBreak \breathe
    \allowBreak ees8
    \allowBreak ees[ f]
    \allowBreak des4
    des \bar "||"
}
altoNotesAnt = \relative c' {
    
    
    des\breve*7/16~ des4.~ s16 des2.~ des4 bes\breve*5/16
    ces4~ ces aes2. bes4. ces2. des4 ees des4
    f4. ges\breve*5/16 ees\breve*5/16~ ees2 bes4 aes2
}
tenorNotesAnt = \relative g {
    
    
    f\breve*7/16 ges4. s16 f2 aes4 f4 ges\breve*5/16~
    ges4~ ges4~ ges4 f2 ges4.~ ges2. aes4 ges4 f4
    des'4.~ des\breve*5/16 ces\breve*5/16~ ces2 ges4~ ges f
}
bassNotesAnt = \relative c {
    
    
    des\breve*7/16~ des4.~ s16 des2.~ des4 ees\breve*5/16
    aes,4 ces4 des2. ges4. ees2. des4~ des2~
    des4. bes'\breve*5/16 ces\breve*5/16 ces,2. des2
}

\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig = \key ges \major
antiphon = "3"
psalmtone = "60"
psalmtonestruct = "33"
psalmnum = "Ps_65"
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
  You have vi -- si -- ted the earth
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  and brought life -- gi -- ving rain to fill it with
  plen -- ty, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
    
    
    f8 ges aes bes aes ges aes4
    \noBreak \hideNotes aes16 \unHideNotes
    \allowBreak aes8
    \allowBreak aes[ bes]
    \allowBreak ges4
    \allowBreak ges8[ bes]
    \allowBreak bes
    \allowBreak aes4
    \allowBreak aes8
    \allowBreak ges[ aes]
    \allowBreak ges
    \allowBreak f
    \allowBreak ees[ f ees]
    \allowBreak ees4 \bar "'"
    \allowBreak ees8
    \allowBreak ees[ f]
    \allowBreak des4
    des \bar "||"
}
altoNotesAnt = \relative c' {
    
    
    des\breve*9/16 s16 ees4 des\breve*5/16~ des4. bes2 ces2. bes4 aes2
}
tenorNotesAnt = \relative g {
    
    
    f\breve*9/16 s16 ges4~ ges\breve*5/16 f4. ges2~ ges2.~ ges4~ ges4 f
}
bassNotesAnt = \relative c {
    
    
    des\breve*9/16 s16 ces4 bes\breve*5/16 des4. ees2 ces2.~ ces4 des2
}

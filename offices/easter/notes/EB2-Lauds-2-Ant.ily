\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig = \key ges \major
antiphon = "2"
psalmtone = "60"
psalmtonestruct = "33"
psalmnum = "Sirach_36_1-5,_10-13"
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
  Fill Zi -- on with your prai -- ses, Lord,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  and let your won -- ders be pro -- claimed, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
    
    
    des8[ ees] des[ aes'] aes f ges aes[ bes] aes ces([ bes] aes4)
    \noBreak \noBreak \hideNotes aes16 \unHideNotes
    \allowBreak aes8
    \allowBreak aes
    \allowBreak aes
    \allowBreak bes
    \allowBreak aes
    \allowBreak ges
    \allowBreak ges
    \allowBreak f([-- ges] ees4) \bar "'"
    \allowBreak ees8
    \allowBreak ees[ f]
    \allowBreak des4
    \allowBreak des \bar "||"
}
altoNotesAnt = \relative c' {
    
    
    des\breve*10/16 ees\breve*7/16 s16 des2 ces\breve*7/16 aes2
}
tenorNotesAnt = \relative g {
    
    
    f\breve*10/16 ges\breve*7/16~ s16 ges2~ ges\breve*7/16~ ges4 aes
}
bassNotesAnt = \relative c {
    
    
    des\breve*10/16 ces\breve*7/16 s16 ges4 bes ces\breve*7/16 des2
}

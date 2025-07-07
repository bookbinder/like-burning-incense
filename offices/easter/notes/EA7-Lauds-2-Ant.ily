\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig = \key ges \major
antiphon = "2"
psalmtone = "60"
psalmtonestruct = "33"
psalmnum = "Exod_15_1-4a,_8-13,_17-18"
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
  Those who were vic -- to -- rious
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  sang the hymn of Mo -- ses, the ser -- vant of God,
  and the hymn of the Lamb, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
    
    
    aes8[ bes] aes f ges aes4 aes
    \noBreak \noBreak \hideNotes aes16 \unHideNotes
    \allowBreak aes8[ bes]
    \allowBreak aes
    \allowBreak aes
    \allowBreak bes
    \allowBreak ces[ bes aes]
    \allowBreak aes4
    \allowBreak aes8
    \allowBreak bes[ aes]
    \allowBreak ges
    \allowBreak aes
    \allowBreak bes4( aes) \bar "'"
    \allowBreak aes8
    \allowBreak aes
    \allowBreak ges[ f]
    \allowBreak ees
    \allowBreak f
    \allowBreak ges
    \allowBreak \breathe
    \allowBreak ees
    \allowBreak ees[ f]
    \allowBreak des4
    \allowBreak des \bar "||"
}
altoNotesAnt = \relative c' {
    
    
    des\breve*9/16 s16 ees\breve*11/16 des2~ des2. bes2. ces4 aes2
}
tenorNotesAnt = \relative g {
    
    
    f\breve*9/16 s16 ges\breve*11/16~ ges2 f2. ges2.~ ges4~ ges4 f
}
bassNotesAnt = \relative c {
    
    
    des\breve*9/16 s16 ces\breve*11/16 ges2 des'2. ees2. ces4 des2
}

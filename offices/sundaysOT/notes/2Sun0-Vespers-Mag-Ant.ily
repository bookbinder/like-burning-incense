\version "2.20.0"
%% \include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key ges \major
antiphon = "M"
psalmtone = "30"
psalmtonestruct = "32"
psalmnum = "Magnificat"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a
%% transposition after accounting for psalm tone
master-from-pitch = ges
master-to-pitch = f


text = \lyricmode {
    \set includeGraceNotes = ##t
     Be -- hold the Lamb of God, 
     \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
     be -- hold him who takes a -- way the sins of the world.
}
sopNotesAnt = \relative bes' {
  r8 des,8 des[ aes'] ges \bar ""
  aes[ ces bes] ges \bar "" bes4( aes)
  \noBreak \hideNotes e16 \unHideNotes   %so that I can align the * better
  \allowBreak aes8
  \allowBreak aes[ bes aes]
  \allowBreak ges4
  \allowBreak ges8
  \allowBreak f
  \allowBreak ges
  \allowBreak ees
  \allowBreak des
  \allowBreak ces([ ees] ges4)
  \allowBreak f8
  \allowBreak ees
  \allowBreak ees4( des) \bar "||"
}
altoNotesAnt = \relative c' {
  r8 des8~ des4. ees2 des\breve*5/16 s16
  ees4. des\breve*7/16 ces2. aes2
}
tenorNotesAnt = \relative g {
    f4~ f4. ges2 f\breve*5/16 s16
    ges4.~ ges\breve*7/16~ ges2.~ ges4( f)
}
bassNotesAnt = \relative c {
    des4~ des4.~ des2~ des\breve*5/16 s16
    ces4. bes\breve*7/16 ees2 ces4 des2
}

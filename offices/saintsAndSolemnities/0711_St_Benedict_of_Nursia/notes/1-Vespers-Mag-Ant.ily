\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "M"
psalmtone = "60"
antKeysig = \key ges \major
psalmnum = "Magnificat"
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
  He re -- ceived the Lord's bles -- sing
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  and the mer -- ci -- ful sa -- ving pow -- er of God;
  such is the for -- tune of those who seek the Lord.
}
sopNotesAnt = \relative e' {
  des8 des ges[ f] ges ges[ aes] ees([ f] ges[ f ees des]) \allowBreak des4
  \noBreak \noBreak \hideNotes des16 \unHideNotes
  \allowBreak des8
  \allowBreak des
  \allowBreak ges
  \allowBreak f
  \allowBreak ges
  \allowBreak aes[ bes]
  \allowBreak aes
  \allowBreak aes4
  \allowBreak aes8
  \allowBreak ges
  \allowBreak aes4 \bar ","
  \allowBreak ges4
  \allowBreak bes8
  \allowBreak des
  \allowBreak des
  \allowBreak ces
  \allowBreak bes
  \allowBreak bes4( aes8)
  \allowBreak aes
  \allowBreak ges([ ees f] ges4)
  \allowBreak f8
  \allowBreak ees4( des) \bar "||"
}
altoNotesAnt = \relative c' {
  des\breve*7/16 s2. s2 s16 des4. ees4.
  des2 f4 ges\breve*7/16 ees2 des\breve*6/16 aes2
}
tenorNotesAnt = \relative g {
  bes\breve*7/16 ces2. bes2 s16 ges4.~ ges4.
  f2 des'4 bes\breve*7/16 ges2~ ges\breve*6/16 f2
}
bassNotesAnt = \relative c {
  ges'\breve*7/16~ ges2.~ ges2 s16 bes,4. ces4.
  des2~ des4 ges\breve*7/16 ces,2 bes\breve*6/16 des2
}

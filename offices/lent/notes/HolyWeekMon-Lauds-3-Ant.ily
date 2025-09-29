\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "3"
psalmtone = "60"
antKeysig = \key ges \major
psalmnum = "Ps_19_2-7"
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
  Je -- sus,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  the be -- gin -- ning and end of our faith, en -- dured
  the cross, heed -- less of the shame, and is seat -- ed
  now at the right hand of the throne of God.
}
sopNotesAnt = \relative e' {
  des8[ aes'] aes4
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak aes8
  \allowBreak ges
  \allowBreak aes[ bes]
  \allowBreak aes
  \allowBreak bes
  \allowBreak ces([ bes] aes4)
  \allowBreak ges8
  \allowBreak aes[ bes]
  \allowBreak bes4( aes) \bar "'"
  \allowBreak aes8
  \allowBreak aes[ bes]
  \allowBreak aes
  \allowBreak ges4
  \allowBreak f8[ ges]
  \allowBreak ees
  \allowBreak ees
  \allowBreak f
  \allowBreak ees4( des) \bar ","
  \allowBreak des8
  \allowBreak des
  \allowBreak ces[ ees]
  \allowBreak ges
  \allowBreak ges4
  \allowBreak ees8
  \allowBreak f
  \allowBreak ges4
  \allowBreak ges
  \allowBreak f8
  \allowBreak ges
  \allowBreak aes[-- ges ees f]
  \allowBreak ees
  \allowBreak des4 \bar "||"
}
altoNotesAnt = \relative c' {
  des\breve*6/16 s16 ees\breve*9/16 des4~ \breve*8/16
  bes\breve*7/16 s2. ces\breve*7/16 des2.
  ces\breve*5/16 aes4
}
tenorNotesAnt = \relative g {
  f\breve*6/16 s16 ges\breve*9/16~ 4 f\breve*8/16
  ges\breve*7/16 aes2. ges\breve*7/16~ 2.~
  \breve*5/16 f4
}
bassNotesAnt = \relative c {
  des\breve*6/16 s16 ces\breve*9/16 bes4 des\breve*8/16
  ees\breve*7/16 f2. ees\breve*7/16 bes2.
  aes\breve*5/16 des4
}

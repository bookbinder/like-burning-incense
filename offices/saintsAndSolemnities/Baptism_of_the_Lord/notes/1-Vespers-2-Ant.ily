\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "2"
psalmtone = "36"
antKeysig = \key ges \major
psalmnum = "Ps_112"
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
  In the Jor -- dan riv -- er
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  our Sav -- ior crushed the ser -- pent’s head and wrest -- ed us free
  from his grasp.
}
sopNotesAnt = \relative e' {
  \allowBreak des8
  \allowBreak des
  \allowBreak des[ aes']
  \allowBreak ges
  \allowBreak ges[ f]
  \allowBreak f4
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak aes8
  \allowBreak aes[ bes]
  \allowBreak aes
  \allowBreak aes
  \allowBreak aes
  \allowBreak ges
  \allowBreak aes
  \allowBreak des,4 \bar "'"
  \allowBreak des8
  \allowBreak ees
  \allowBreak des
  \allowBreak ces
  \allowBreak ees[ ges]
  \allowBreak f
  \allowBreak ees
  \allowBreak des4 \bar "||"
}
altoNotesAnt = \relative c' {
  s4 des4.~ \breve*5/16~ s16 des4. bes2
  aes4. ces4. bes2 aes4
}
tenorNotesAnt = \relative g {
  f4 bes4. aes\breve*5/16 s16 f4. ges2
  f4. ges4.~ 2 f4
}
bassNotesAnt = \relative c {
  des4~ 4.~ \breve*5/16~ s16 des4.~ 2~
  4. ces4.~ 2 des4
}

\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "M"
psalmtone = "36"
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
  You are not yet fif -- ty years old;
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  how can you have seen A-- bra -- ham? In ve -- ry truth I tell you,
  be -- fore A -- bra -- ham was, I AM.
}
sopNotesAnt = \relative e' {
  f8 ges aes4 aes8[ bes] ces bes aes[ ges] aes4
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak aes8[ bes]
  \allowBreak aes
  \allowBreak ges4
  \allowBreak ees8
  \allowBreak ees[ f]
  \allowBreak ees
  \allowBreak des
  \allowBreak des4 \bar "|"
  \allowBreak r8
  \allowBreak des8
  \allowBreak des[ ees]
  \allowBreak des
  \allowBreak ces[ ees]
  \allowBreak ges
  \allowBreak f[ des]
  \allowBreak des4 \bar ","
  \allowBreak des8
  \allowBreak des[ ees]
  \allowBreak ees
  \allowBreak des
  \allowBreak ces
  \allowBreak ees4 \bar "'"
  \allowBreak des4
  \allowBreak des \bar "||"
}
altoNotesAnt = \relative c' {
  des2. ees4 des4~ \breve*5/16 s16 bes4. ces2 aes4
  bes\breve*5/16 ces4. des4~ 4. r4 ces4.~ 4 bes aes
}
tenorNotesAnt = \relative g {
  f2. ges2 f\breve*5/16 s16 ges4.~ 2 f4
  ges\breve*5/16~ 4. aes4 f4.~ 4 ges4.~ 4 f2
}
bassNotesAnt = \relative c {
  des2. ces4 bes des\breve*5/16 s16 ees4. ces2 des4
  ges\breve*5/16 ees4. des4~ 4.~ 4 ces4. aes4 des2
}

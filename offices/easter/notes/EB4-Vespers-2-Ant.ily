\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "2"
psalmtone = "60"
antKeysig = \key ges \major
psalmnum = "Ps_67"
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
  Let the peo -- ples praise you, Lord God;
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  let them re -- joice in your sal -- va -- tion, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  f8 ges aes[ bes] aes ges[ f] ees
  \allowBreak ees([-- f] ges[ f ees])
  \allowBreak des4
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak des8
  \allowBreak ees
  \allowBreak des
  \allowBreak ces([ ees] ges4)
  \allowBreak f8
  \allowBreak ees
  \allowBreak f
  \allowBreak ees[ des]
  \allowBreak des4 \bar "'"
  \allowBreak ees8
  \allowBreak ees[ f]
  \allowBreak des4
  \allowBreak des \bar "||"
}
altoNotesAnt = \relative c' {
  des4~ 4. bes ces\breve*5/16 des\breve*5/16 s16 ces\breve*7/16
  s\breve*5/16 ces4 aes2
}
tenorNotesAnt = \relative g {
  aes4 f4. ges4.~ \breve*5/16~ ges~ s16 \breve*7/16
  aes\breve*5/16 ges4~ 4 f
}
bassNotesAnt = \relative c {
  des4~ 4. ees4. ces\breve*5/16 bes s16 ees\breve*7/16
  f\breve*5/16 ces4 des2
}

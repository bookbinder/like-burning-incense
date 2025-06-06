\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "3"
psalmtone = "60"
antKeysig = \key ges \major
psalmnum = "Ps_99"
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
  Great is the Lord in Zi -- on;
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  he is ex -- al -- ted a -- bove all the peo -- ples, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  aes4 f8 ges aes[ bes] aes aes[ des,] des4
  \noBreak \hideNotes des16 \unHideNotes
  \allowBreak des4
  \allowBreak des8
  \allowBreak ees
  \allowBreak ces
  \allowBreak ees
  \allowBreak ges
  \allowBreak f[ ges]
  \allowBreak ees[ f]
  \allowBreak ees
  \allowBreak ees[ des]
  \allowBreak des4 \bar "'"
  \allowBreak ees8
  \allowBreak ees[ f]
  \allowBreak des4
  des \bar "||"
}
altoNotesAnt = \relative c' {
  des2 ces4. aes2 s16 s2 ces\breve*5/16~ ces4. aes2 bes4 aes2
}
tenorNotesAnt = \relative g {
  f2 ees4. f2 s16 ges2~ ges\breve*5/16~ ges4. f\breve*5/16 ges4~ ges f
}
bassNotesAnt = \relative c {
  des2~ des4.~ des2 s16 bes2 ees\breve*5/16 ces4.
  des\breve*5/16~ des4~ des2
}

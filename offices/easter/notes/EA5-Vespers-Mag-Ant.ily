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
  I have said these things to you
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  so that my joy may be in you and your joy may be
  com -- plete, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  des8 ees f[ ees] ees4 des8[ aes'] ges f4
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak aes4
  \allowBreak aes8
  \allowBreak ges
  \allowBreak aes[ bes]
  \allowBreak aes
  \allowBreak aes
  \allowBreak ges
  \allowBreak aes4 \bar ","
  \allowBreak des,8
  \allowBreak des
  \allowBreak ees[ f]
  \allowBreak ees
  \allowBreak ees
  \allowBreak des
  \allowBreak ces([ ees] ges4) \bar "'"
  \allowBreak ees8
  \allowBreak f[ ges]
  \allowBreak aes[-- des,]
  \allowBreak des4 \bar "||"
}
altoNotesAnt = \relative c' {
  s4 s2 des4.~ 4 s16 f2 ees\breve*5/16~ 4 s4
  bes\breve*5/16 ces\breve*7/16 aes2
}
tenorNotesAnt = \relative g {
  f4 ges2 f4. aes4~ s16 aes2~ \breve*5/16 ges4~ 4~
  \breve*5/16~ \breve*7/16~ 4 f
}
bassNotesAnt = \relative c {
  des4~ 2~ 4.~ 4~ s16 des2 ces\breve*5/16~ 4 bes
  ges\breve*5/16 ees'\breve*7/16 des2
}

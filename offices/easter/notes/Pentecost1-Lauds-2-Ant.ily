\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "2"
psalmtone = "78"
antKeysig = \key ges \major
psalmnum = "Dan_3_57-88,_56"
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
  Let streams and ri -- vers
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  and all crea -- tures that live in the wa -- ters sing
  praise to God, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  r8 aes8 f ges aes[ bes aes] aes4
  \noBreak \noBreak \hideNotes aes16 \unHideNotes
  \allowBreak aes8
  \allowBreak f[ ges]
  \allowBreak aes[ bes]
  \allowBreak aes
  \allowBreak bes
  \allowBreak ces4
  \allowBreak ces8
  \allowBreak bes8
  \allowBreak bes[ aes]
  \allowBreak aes4
  \allowBreak aes8[ bes aes]
  \allowBreak ges[ f]
  \allowBreak ees
  \allowBreak ees([ f] ges4) \bar "'"
  \allowBreak ees8
  \allowBreak ees[ f]
  \allowBreak des4
  des \bar "||"
}
altoNotesAnt = \relative c' {
  des\breve*12/16 s16 ees\breve*8/16
  des\breve*7/16 bes4. des\breve*5/16 ces4 aes2
}
tenorNotesAnt = \relative g {
  f\breve*12/16 s16 ges\breve*8/16
  f\breve*7/16 ges4.~ ges\breve*5/16~ ges4~ ges f
}
bassNotesAnt = \relative c {
  des\breve*12/16 s16 ces\breve*8/16
  des\breve*7/16 ees4. bes\breve*5/16 ces4 des2
}

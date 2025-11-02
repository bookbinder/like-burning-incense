\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "3"
psalmtone = "60"
antKeysig = \key ges \major
psalmnum = "Rev_15_3-4"
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
  Let us sing to the Lord,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  glo -- rious in his tri -- umph, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  f8 ges aes[ bes] aes ges aes--([ bes ces bes] aes4)
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak ges8[ f]
  \allowBreak ees
  \allowBreak des
  \allowBreak ees
  \allowBreak f[ ees des]
  \allowBreak des4 \bar "'"
  \allowBreak ees8
  \allowBreak ees[ f]
  \allowBreak des4
  \allowBreak des \bar "||"
}
altoNotesAnt = \relative c' {
  des4~ 2 ees2. s16 des\breve*5/16~ 2. bes4 aes2
}
tenorNotesAnt = \relative g {
  aes4 f2 ges2.~ s16 ges\breve*5/16 aes4. f4. ges4~ ges f
}
bassNotesAnt = \relative c {
  des4~ 2 ces2. s16 bes\breve*5/16 des2.~ 4~ 2
}

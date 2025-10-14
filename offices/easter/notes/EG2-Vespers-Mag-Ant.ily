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
  The Spir -- it, the Ad -- vo -- cate,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  will re -- main with you and live in you,
  al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  r8 des8 ges4 f8 ges ges[ bes] bes aes4
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak aes8
  \allowBreak aes
  \allowBreak aes[ bes]
  \allowBreak aes
  \allowBreak ges
  \allowBreak ees
  \allowBreak f
  \allowBreak ees
  \allowBreak des4 \bar "'"
  \allowBreak ees8
  \allowBreak ees[ f]
  \allowBreak des4 des \bar "||"
}
altoNotesAnt = \relative c' {
  s8 des8~ 2 bes4. des\breve*7/16 s16 bes2
  des4. ces4 aes2
}
tenorNotesAnt = \relative g {
  ges2.~ 4. f\breve*7/16 s16 ges2 aes4. ges4~ 4 f
}
bassNotesAnt = \relative c {
  bes2. des4.~ \breve*7/16 s16 ees2 f4. ces4 des2
}

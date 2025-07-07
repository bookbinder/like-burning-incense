\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "B"
psalmtone = "26"
antKeysig = \key aes \major
psalmnum = "Benedictus"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a
%% master transposition after accounting for psalm tone
master-from-pitch = a
master-to-pitch = a


text = \lyricmode {
  \set includeGraceNotes = ##t
  My com -- mand -- ment is this:
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  love one a -- no -- ther as I have loved you, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  ees8 f aes4 f8 g ees4
  \noBreak \noBreak \hideNotes ees16 \unHideNotes
  \allowBreak ees4
  \allowBreak c8[ ees]
  \allowBreak ees
  \allowBreak des[ c bes]
  \allowBreak bes4 \bar "'"
  \allowBreak bes8
  \allowBreak f'4
  \allowBreak f8
  \allowBreak des8[ ees]
  \allowBreak ees4 \bar "'"
  \allowBreak f8
  \allowBreak f[ g]
  \allowBreak ees4
  ees \bar "||"
}
altoNotesAnt = \relative c' {
  s\breve*8/16 s16 c\breve*5/16 bes2. s4. s4 ees4. des4 bes2
}
tenorNotesAnt = \relative g {
  aes\breve*8/16~ s16 aes\breve*5/16 f2. aes4. f4 aes4.~ aes4~ aes g
}
bassNotesAnt = \relative c {
  c\breve*8/16 s16 aes\breve*5/16 bes4. des4.~ des4.~ des4 c4. bes4 ees2
}

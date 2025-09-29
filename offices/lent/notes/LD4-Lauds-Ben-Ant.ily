\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "B"
psalmtone = "22"
antKeysig = \key aes \major
psalmnum = "Benedictus"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = gis
%% master transposition after accounting for psalm tone
master-from-pitch = a
master-to-pitch = a


text = \lyricmode {
  \set includeGraceNotes = ##t
  Who -- ev -- er hears my words, says the Lord,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  and be -- lieves in him who sent me, has e -- ter -- nal life.
}
sopNotesAnt = \relative e' {
  r8 aes8 aes f aes[ bes c] bes bes[ c] bes bes bes4( aes)
  \noBreak \hideNotes aes16 \unHideNotes
  \allowBreak aes8
  \allowBreak aes
  \allowBreak g[ aes]
  \allowBreak f
  \allowBreak f4
  \allowBreak ees8
  \allowBreak f[ ees des]
  \allowBreak des4 \bar "'"
  \allowBreak des8
  \allowBreak des
  \allowBreak ees([ f] ees4)
  \allowBreak ees8
  \allowBreak f([ ees] des4) \bar "||"
}
altoNotesAnt = \relative c' {
  f2 ees f des2.~ s16 des2.
  c4. bes2 aes\breve*5/16 aes2
}
tenorNotesAnt = \relative g {
  des'2 c des f,2. s16 bes4. aes4.~
  4. f2 ees\breve*5/16 des4( f)
}
bassNotesAnt = \relative c {
  s2 s2 s2 des2.~ s16 des2.
  aes4. bes2 c\breve*5/16 des2
}

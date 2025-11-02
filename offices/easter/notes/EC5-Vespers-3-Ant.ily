\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "3"
psalmtone = "26"
antKeysig = \key aes \major
psalmnum = "Rev_11_17-18_and_12_10b-12a"
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
  Lord, who is your e -- qual in power?
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  Who is like you, ma -- jes -- tic in ho -- li -- ness?
  al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  ees8[ aes] g4-! aes8 bes aes g f ees4
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak f8
  \allowBreak ees
  \allowBreak des
  \allowBreak des[ f]
  \allowBreak ees
  \allowBreak aes4
  \allowBreak g8
  \allowBreak f
  \allowBreak g
  \allowBreak f
  \allowBreak ees4 \bar "'"
  \allowBreak f8
  \allowBreak f[ g]
  \allowBreak ees4
  \allowBreak ees \bar "||"
}
altoNotesAnt = \relative c' {
  ees4~ \breve*7/16~ ees4 s16 des2. ees2 c\breve*5/16 des4 bes2
}
tenorNotesAnt = \relative g {
  aes4 bes\breve*7/16 << { \hideNotes \tieDown \once \override NoteColumn.force-hshift = 0
                           aes4~ s16 \tieUp \unHideNotes }
                         \new Voice { \voiceOne c4 s16 } >>
  aes2.~ 2~ \breve*5/16~ 4~ 4 g
}
bassNotesAnt = \relative c {
  c4 ees\breve*7/16 aes4 s16 des,2. c2 aes\breve*5/16 des4 ees2
}


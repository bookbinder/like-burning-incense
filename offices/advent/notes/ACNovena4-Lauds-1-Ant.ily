\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "1"
psalmtone = "78"
antKeysig = \key ges \major
psalmnum = "Ps_86"
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
  The Lord, the migh -- ty God,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  will come forth from Zi -- on to set his peo -- ple free.
}
sopNotesAnt = \relative e' {
  r8 aes8 aes[ bes] aes f ges ges4( aes)
  \noBreak \hideNotes aes16 \unHideNotes
  \allowBreak aes8
  \allowBreak f[ aes]
  \allowBreak aes
  \allowBreak aes
  \allowBreak ges[ f ees]
  \allowBreak ees4
  \allowBreak f8
  \allowBreak ges
  \allowBreak ges
  \allowBreak f
  \allowBreak ees
  \allowBreak des4 \bar "||"
}
altoNotesAnt = \relative c' {
  des\breve*7/16 bes4( des4.) s16 f2 ces2. bes2 aes4
}
tenorNotesAnt = \relative g {
  f\breve*7/16 ees4( f4.) s16 aes2 \parenthesize ces2. ees,2 f4 
}
bassNotesAnt = \relative c {
  des\breve*7/16~ des4~ des4.~ s16 des2 ees2. ces2 des4
}

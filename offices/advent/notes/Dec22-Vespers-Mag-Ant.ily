\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key f \minor
antiphon = "M"
psalmtone = "52"
psalmtonestruct = "44"
psalmnum = "Magnificat"
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
  O King of all the na -- tions,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  the on -- ly joy of
  e -- very hu -- man heart; O key -- stone of the migh -- ty
  arch of man, come and save the crea -- ture you fash -- ioned
  from the dust.
}
sopNotesAnt = \relative e' {
  r8 ees8( aes4 g8) aes f g f ees[ f] f4
  \noBreak \hideNotes f16 \unHideNotes
  \allowBreak f8
  \allowBreak f[ g]
  \allowBreak f
  \allowBreak g4
  \allowBreak f8
  \allowBreak ees
  \allowBreak f
  \allowBreak g
  \allowBreak f
  \allowBreak ees4 \bar ","
  \allowBreak f8
  \allowBreak aes[ f g]
  \allowBreak f4
  \allowBreak ees8
  \allowBreak f
  \allowBreak g[ aes]
  \allowBreak aes
  \allowBreak g
  \allowBreak aes
  \allowBreak bes4 \bar ","
  \allowBreak c4
  \allowBreak c8
  \allowBreak bes[ aes]
  \allowBreak g
  \allowBreak f
  \allowBreak g
  \allowBreak f
  \allowBreak ees
  \allowBreak ees
  \allowBreak g
  \allowBreak aes
  \allowBreak f4 \bar "||"
}
altoNotesAnt = \relative c' {
  r8 ees8 c4. des2. c4.~ s16 c4. des4.~ des2 ees4.
  c4. s2 ees\breve*5/16 f4 ees4. f4. des4. ees2 c4
}
tenorNotesAnt = \relative g {
  bes4 aes4. bes2 g4 aes4. s16 f4.~ f4. bes4 aes4 g4.
  aes4. bes2~ bes\breve*5/16~ bes4 g4. f4. bes4.~ bes2 aes4
}
bassNotesAnt = \relative c {
  g'4 f4.~ f2.~ f4.~ s16
  <<
  {\noBreak \hideNotes  f4. \unHideNotes }
      \new Voice { \voiceTwo aes,4.}
    >>
    bes4.~ bes2 ees4. f4. g2
    ees\breve*5/16 des4 c4. des4. bes4. c2 f4
}

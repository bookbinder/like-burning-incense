\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "1"
psalmtone = "50"
antKeysig = \key f \minor
psalmnum = "Ps_63_2-9"
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
  Je -- sus stood and cried out:
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  If a -- ny -- one thirsts, let him come to me and drink. __
}
sopNotesAnt = \relative e' {
  aes4 g8 aes[ g] f ees[ f g] g4 
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak g8[ aes]
  \allowBreak f[ c']
  \allowBreak c
  \allowBreak bes[ aes]
  \allowBreak bes([ c] bes4) \bar "'"
  \allowBreak aes8
  \allowBreak aes
  \allowBreak g[ aes]
  \allowBreak bes
  \allowBreak bes4
  \allowBreak c8
  \allowBreak f,([-- g aes g] f4) \bar "||"
}
altoNotesAnt = \relative c' {
  c2. ees4.~ ees4~ s16 ees4 f\breve*5/16~ f2 ees4 ees2. c2.
}
tenorNotesAnt = \relative g {
  aes2. bes4.~ bes4~ s16 bes4 aes\breve*5/16~ aes2~ aes4 bes4.
  g4. bes2( aes4)
}
bassNotesAnt = \relative c {
  f2. g4. ees4 s16 c4 f\breve*5/16 des2 c4 ees2. f2.
}

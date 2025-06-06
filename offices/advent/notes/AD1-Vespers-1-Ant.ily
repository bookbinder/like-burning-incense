\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "1"
psalmtone = "21"
antKeysig = \key aes \major
psalmnum = "Ps_110_1-5,_7"
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
  See how glo -- rious he is
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  co -- ming forth as Sa -- vior of all peo -- ples.  
}
sopNotesAnt = \relative e' {
  ees8 f aes4 g8 f ees4
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak ees8[ f]
  \allowBreak ees
  \allowBreak des
  \allowBreak f
  \allowBreak aes4
  \allowBreak aes8
  \allowBreak aes
  \allowBreak g([ aes] f4)
  \allowBreak g8[ f ees]
  \allowBreak ees4 \bar "||"
}
altoNotesAnt = \relative c' {
  c4 des2 ees4 s16 \parenthesize bes4. des4 c2 des2 bes4.~ bes4
}
tenorNotesAnt = \relative g {
  aes4~ aes2~ aes4 s16 bes4. aes4~ aes2~ aes aes4. g4
}
bassNotesAnt = \relative c {
  aes4 bes2 c4 s16 g'4. f4 ees2 des2 ees4.~ ees4
}

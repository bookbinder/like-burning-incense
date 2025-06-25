\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key f \minor
antiphon = "1"
psalmtone = "48"
psalmtonestruct = "43"
psalmnum = ""
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
  To you, O "Lord, * " I lift up my soul; come and res -- cue me,
  for you are my re -- fuge and my strength.
}
sopNotesAnt = \relative e' {
  r8 c8 c[ des] bes ees([ f] aes4) aes8 aes[ bes] aes aes bes4( g) \bar ","
  g8[ aes] f g f ees4 ees8 des[ ees] des ees f4 f8 ees des des4( c) \bar "||"
}
altoNotesAnt = \relative c' {
  s2 s8 ees\breve*5/16 c2 ees2 des4.~ des4 ees4 s8
  \parenthesize aes,2 bes\breve*5/16 aes2
}
tenorNotesAnt = \relative g {
  g4 f4. aes\breve*5/16~ aes2 bes2~ bes4. aes4~ aes4.~ aes2
  f\breve*5/16~ f2
}
bassNotesAnt = \relative c {
  ees4 des4. c\breve*5/16 f2 ees2 bes4. des4 c4. \tieUp f2~ << {\hideNotes  f\breve*5/16 \unHideNotes  \tieDown} \new Voice {des\breve*5/16} >> f,2
}

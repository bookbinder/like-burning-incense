\version "2.20.0"
%% \include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key aes \major
antiphon = "M"
psalmtone = "21"
psalmtonestruct = "33"
psalmnum = "Magnificat"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a
%% transposition after accounting for psalm tone
master-from-pitch = a
master-to-pitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    The king -- dom of hea -- ven is like yeast 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
    which a wo -- man took and knea -- ded in -- to three mea -- sures of flour
    un -- til all the dough had ri -- sen.
}
sopNotesAnt = \relative e' {
  r8 ees aes g aes f ees des ees[ f] f4( ees)
  \noBreak \hideNotes ees16 \unHideNotes  %so taht I can align the * better
  \allowBreak ees8
  \allowBreak ees
  \allowBreak g[ aes]
  \allowBreak bes
  \allowBreak bes4
  \allowBreak aes8
  \allowBreak g
  \allowBreak aes
  \allowBreak f
  \allowBreak ees
  \allowBreak des4
  \allowBreak f8
  \allowBreak g
  \allowBreak f
  \allowBreak ees4 \bar "'"
  \allowBreak ees8
  \allowBreak ees
  \allowBreak des[ c]
  \allowBreak des
  \allowBreak ees4
  \allowBreak f8
  \allowBreak ees4
  \allowBreak ees \bar "||"
}
altoNotesAnt = \relative c' {
  s4 s1 s2 s16 s4 g'4. f des2~ des\breve*12/16 des4. bes2
}
tenorNotesAnt = \relative g {
  aes4~ aes4.~ aes\breve*5/16 g2. s16 bes4.~ bes aes2 f\breve*5/16
  aes2~ aes2.~ aes4 g
}
bassNotesAnt = \relative c {
  c4~ c4. des\breve*5/16 ees2.~ s16 ees4. des4.~ des2~ des\breve*5/16 c2 bes2. ees2
}

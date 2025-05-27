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
  You are the light of the world. 
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  Let your light shine be -- fore men, that they may see your good works
  and give glo -- ry to your hea -- ven -- ly Fa -- ther.
}
sopNotesAnt = \relative e' {
  ees8[ aes] g aes \bar "" f[ ees] des ees \bar "" f4( ees)
  \hideNotes ees16 \unHideNotes   %so that I can align the * better
  \allowBreak ees8
  \allowBreak ees
  \allowBreak g([ aes] bes4)
  \allowBreak aes8[ f]
  \allowBreak aes
  \allowBreak aes[ bes]
  \allowBreak g4 \bar "'"
  \allowBreak bes8
  \allowBreak bes4
  \allowBreak g8
  \allowBreak bes[ c]
  \allowBreak bes
  \allowBreak aes[ g f]
  \allowBreak ees4 \bar "'"
  \allowBreak ees8
  \allowBreak f[ ees]
  \allowBreak des4
  \allowBreak des8
  \allowBreak f
  \allowBreak g
  \allowBreak aes4
  \allowBreak g8
  \allowBreak f
  \allowBreak f[ ees]
  \allowBreak ees4 \bar "||"
}
altoNotesAnt = \relative c' {
  ees2 des c2. s16 ees2~ ees\breve*5/16~
  ees4.~ \break ees2. f4. s4 s4. des\breve*5/16~
  des2 bes
}
tenorNotesAnt = \relative g {
  aes2~ aes~ aes2. s16 g2 c\breve*5/16
  bes4.~ bes2. c4.~ c4.~ c4 aes\breve*5/16~
  aes2~ aes4 ees4
}
bassNotesAnt = \relative c {
  c2 des aes2. s16 ees'2~ ees\breve*5/16~
  ees4. g2. f4. aes4.~ aes4 f\breve*5/16
  bes,2 ees
}

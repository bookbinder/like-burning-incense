\version "2.20.0"
%% \include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key f \minor
antiphon = "M"
psalmtone = "50"
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
    Son, re -- mem -- ber the good things 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
    you re -- ceived in your life -- time, and the bad things La -- za -- rus
    re -- ceived in his.
}
sopNotesAnt = \relative e' {
  aes8[ g] f g f ees f--[ g aes] bes4
  \hideNotes bes16 \unHideNotes  %so taht I can align the * better
  \allowBreak aes8
  \allowBreak aes
  \allowBreak g[ bes]
  \allowBreak aes
  \allowBreak g4
  \allowBreak g8[ f]
  \allowBreak f4 \bar "'"
  \allowBreak f8
  \allowBreak f
  \allowBreak g--[ aes bes]
  \allowBreak bes4
  \allowBreak aes8
  \allowBreak g
  \allowBreak f
  \allowBreak f
  \allowBreak ees[ c^"?"]
  \allowBreak ees
  \allowBreak f4 \bar "||"
}
altoNotesAnt = \relative c' {
  c2. des4. f4 s16 ees4~ ees\breve*5/16 c2~ c4 f\breve*5/16 des2 c4.~ c4
}
tenorNotesAnt = \relative g {
  aes2.~ aes4.~ aes4~ s16 aes4 bes\breve*5/16 aes2~ aes4~ aes\breve*5/16~ aes2 g4. aes4
}
bassNotesAnt = \relative c {
  f4. ees4. des4.~ des4 s16 c4 ees\breve*5/16 f2 ees4 des\breve*5/16 bes2 c4. f4
}

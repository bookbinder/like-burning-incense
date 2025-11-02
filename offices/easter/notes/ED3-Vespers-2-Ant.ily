\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "2"
psalmtone = "53"
antKeysig = \key gis \minor
psalmnum = "Ps_138"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a
%% master transposition after accounting for psalm tone
master-from-pitch = ais
master-to-pitch = a


text = \lyricmode {
  \set includeGraceNotes = ##t
  Though I am sur -- round -- ed by af -- flic -- tion,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  you pre -- serve my life, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  dis8 dis cis dis fis[ gis] gis fis gis ais[ fis dis] dis4
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak dis8
  \allowBreak dis
  \allowBreak cis
  \allowBreak dis
  \allowBreak fis--[ gis]
  \allowBreak fis
  \allowBreak fis[ e]
  \allowBreak dis4
  \allowBreak dis \bar "||"
}
altoNotesAnt = \relative c' {
  s2 dis\breve*5/16~ \breve*9/16 s16 cis4.~ 4~ 4 b
}
tenorNotesAnt = \relative g {
  b2~ \breve*5/16 ais\breve*9/16 s16 gis4.~ 4~ 2
}
bassNotesAnt = \relative c {
  e2~ \breve*5/16 dis\breve*9/16 s16 e4. cis4 gis2
}

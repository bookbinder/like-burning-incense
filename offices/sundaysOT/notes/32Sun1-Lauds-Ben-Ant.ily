\version "2.20.0"
%% \include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key f \minor
antiphon = "B"
psalmtone = "50"
psalmtonestruct = "33"
psalmnum = "Benedictus"
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
    That poor wi -- dow gave more than e -- very -- one, 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
    be -- cause in her po -- ver -- ty she gave all she had.
}
sopNotesAnt = \relative e' {
  f4 f8[ aes] bes4 bes8 aes bes[ c bes] aes \bar "" aes g g4
  \hideNotes g16 \unHideNotes  %so taht I can align the * better
  \allowBreak g8
  \allowBreak g[ aes]
  \allowBreak g
  \allowBreak g
  \allowBreak f[ ees]
  \allowBreak c
  \allowBreak c4
  \allowBreak c8[ ees]
  \allowBreak f[ g aes]
  \allowBreak bes4
  \allowBreak aes8[ g]
  \allowBreak f4 \bar "||"
}
altoNotesAnt = \relative c' {
  c2 f1 ees\breve*5/16~ s16 ees2 c4. c2 bes4. des4 f c
}
tenorNotesAnt = \relative g {
  aes2~ aes2 des2 bes\breve*5/16 s16 c2 g4.~ g2 f4.~ f4 bes aes
}
bassNotesAnt = \relative c {
  f2 des1 ees\breve*5/16 s16 c2 ees4.~ ees2 des4. bes4 des f
}

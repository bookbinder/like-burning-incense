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
    The Spi -- rit of the Lord rests u -- pon me; 
     \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    he has sent me to preach the good news to the poor.
}
sopNotesAnt = \relative e' {
  r8 f8 aes[ g] f ees f \bar "" g[( aes] bes4) \bar ""
  aes8[ c] c \bar "" bes4 bes
  \hideNotes bes16 \unHideNotes   %so that I can align the * better
  \allowBreak aes8
  \allowBreak aes
  \allowBreak g[ aes]
  \allowBreak f
  \allowBreak ees
  \allowBreak f([ g aes] bes4)
  \allowBreak bes8
  \allowBreak aes8[ bes aes]
  \allowBreak g4
  \allowBreak f8
  \allowBreak ees
  \allowBreak f4 \bar "||"
}
altoNotesAnt = \relative c' {
  c\breve*7/16 f2 ees4.~ ees2 s16
  c2.~ c4. f4. ees4.~ ees2 c4
}
tenorNotesAnt = \relative g {
  aes\breve*7/16~ aes2~ aes4.~ aes4 g s16
  aes2.~ aes4.~ aes4.~ aes4. bes2 aes4
}
bassNotesAnt = \relative c {
  f\breve*7/16 des2 c4. ees2 f2. s16
  ees4. des4. c4.~ c2 f4
}

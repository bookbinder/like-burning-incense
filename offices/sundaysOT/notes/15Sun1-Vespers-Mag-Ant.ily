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
    Tea -- cher, what is the grea -- test com -- mand -- ment in the law? 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    Je -- sus said to him: You shall love the Lord your God with your
    whole heart.
}
sopNotesAnt = \relative e' {
  \allowBreak aes4
  \allowBreak aes8
  \allowBreak g
  \allowBreak aes
  \allowBreak g
  \allowBreak f
  \allowBreak g
  \allowBreak aes
  \allowBreak bes[ c]
  \allowBreak bes
  \allowBreak bes
  \allowBreak aes
  \allowBreak g4
  \hideNotes g16 \unHideNotes  %so taht I can align the * better
  \allowBreak g8[ aes]
  \allowBreak g
  \allowBreak f[ g]
  \allowBreak aes
  \allowBreak g4
  \allowBreak g8
  \allowBreak g[ aes]
  \allowBreak f--[g aes g]
  \allowBreak f
  \allowBreak f[ ees c]
  \allowBreak ees
  \allowBreak f([ g aes] bes4)
  \allowBreak aes8
  \allowBreak g
  \allowBreak g4
  \allowBreak f \bar "||"
}
altoNotesAnt = \relative c' {
  c\breve*9/16 f\breve*5/16 ees4~ s16 ees4. f4. ees4.~ ees4
  c\breve*5/16~ c2 f\breve*7/16 ees4 c
}
tenorNotesAnt = \relative g {
  aes\breve*9/16 des\breve*5/16 bes4~ s16 bes4.~ bes4.~ bes4.~ bes4 aes\breve*5/16
  g2 bes\breve*7/16~ bes4 aes
}
bassNotesAnt = \relative c {
  f\breve*9/16 des\breve*5/16 ees4 s16
  c4. des4. ees4. c4 f\breve*5/16 ees2 des\breve*7/16 ees4 f
}

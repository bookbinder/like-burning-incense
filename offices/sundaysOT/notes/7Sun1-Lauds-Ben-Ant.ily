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
    The pa -- ra -- lyzed man 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    picked up the bed on which he was ly -- ing,
    and gave praise to God; all who saw it gave glo -- ry to God.
}
sopNotesAnt = \relative e' {
  r8 f8 aes g f f4
  \hideNotes f16 \unHideNotes  %so taht I can align the * better
  \allowBreak aes8[ g]
  \allowBreak f
  \allowBreak ees
  \allowBreak f[ aes]
  \allowBreak aes
  \allowBreak bes
  \allowBreak aes
  \allowBreak g
  \allowBreak f4
  \allowBreak f \bar "'"
  \allowBreak ees8
  \allowBreak f[ c']
  \allowBreak c([ des] c4)
  \allowBreak bes8
  \allowBreak aes4( g) \bar "'"
  \allowBreak g8[ aes]
  \allowBreak g
  \allowBreak bes4
  \allowBreak aes
  \allowBreak g8[ aes]
  \allowBreak f([ g] aes4)
  \allowBreak aes8
  \allowBreak g
  \allowBreak g4( f) \bar "||"
}
altoNotesAnt = \relative c' {
  c\breve*7/16~ s16 c\breve*10/16 des\breve*5/16~
  des4 ees\breve*5/16~ ees\breve*7/16 f2. des2. c2
}
tenorNotesAnt = \relative g {
  aes\breve*7/16~ s16 aes\breve*10/16~ aes\breve*5/16~
  aes4~ aes\breve*5/16 bes\breve*7/16~ bes2.~ bes2. aes2
}
bassNotesAnt = \relative c {
  f\breve*7/16 s16 ees\breve*10/16 des\breve*5/16
  bes4 aes\breve*5/16 ees'\breve*7/16 des2. f2.~ f2
}

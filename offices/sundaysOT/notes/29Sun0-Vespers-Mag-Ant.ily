\version "2.20.0"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key des \major
antiphon = "M"
psalmtone = "34"
psalmtonestruct = "33"
psalmnum = "Magnificat"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a
%% transposition after accounting for psalm tone
master-from-pitch = aes
master-to-pitch = g


text = \lyricmode {
    \set includeGraceNotes = ##t
    Give to Cae -- sar 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} what be -- longs to Cae -- sar,
    but to God what be -- longs to God, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  aes8[ f] bes aes[ f] f4
  \noBreak \hideNotes f16 \unHideNotes  %so taht I can align the * better
  \allowBreak ees8[ f]
  \allowBreak ees
  \allowBreak des
  \allowBreak f
  \allowBreak aes4
  \allowBreak aes \bar "'"
  \allowBreak des,8
  \allowBreak des
  \allowBreak ees([ f] ees4)
  \allowBreak des8
  \allowBreak ees
  \allowBreak f
  \allowBreak ees
  \allowBreak ees4( des) \bar "'"
  \allowBreak ees8
  \allowBreak ees[ f]
  \allowBreak des4
  des \bar "||"
}
altoNotesAnt = \relative c' {
  des\breve*7/16 s16 bes\breve*5/16 ees4 des
  aes4 c2. bes4 aes\breve*5/16 bes4 aes2
}
tenorNotesAnt = \relative g {
  f\breve*7/16 s16 ges\breve*5/16 f2. ees2.~ ees4 f\breve*5/16 ges4~ ges4 f4
}
bassNotesAnt = \relative c {
  des\breve*7/16~ s16 des\breve*5/16~ des2. aes2. ges4 des'\breve*5/16~ des4~ des2
}

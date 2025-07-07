\version "2.20.0"
%% \include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key des \major
antiphon = "M"
psalmtone = "24"
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
    Je -- sus said to Pe -- ter: 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
    I do not tell you to for -- give on -- ly se -- ven times, but
    se --ven -- ty times se -- ven.
}
sopNotesAnt = \relative e' {
  aes8[ es] aes f[ ges] \allowBreak aes
  \allowBreak ees[ des]
  \allowBreak des4
  \noBreak \hideNotes des16 \unHideNotes  %so taht I can align the * better
  \allowBreak f8
  \allowBreak ges
  \allowBreak aes4
  \allowBreak bes8
  \allowBreak aes
  \allowBreak ges
  \allowBreak aes
  \allowBreak bes4
  \allowBreak bes8^"?"[ des^"?"]
  \allowBreak c
  \allowBreak c
  \allowBreak bes
  \allowBreak bes4 \bar "'"
  \allowBreak bes8
  \allowBreak aes
  \allowBreak f
  \allowBreak des
  \allowBreak ees[ f]
  \allowBreak ees4
  des \bar "||"
}
altoNotesAnt = \relative c' {
  des2. bes s16 des2.~ des\breve*5/16~ des\breve*5/16 des4. bes4 aes2
}
tenorNotesAnt = \relative g {
  f2.~ f s16 des2.~ des\breve*5/16 ges\breve*5/16 f4. ges4 f2
}
bassNotesAnt = \relative c {
  des2. bes s16 f2. ges\breve*5/16~ ges\breve*5/16 des'4.~ des4~ des2
}

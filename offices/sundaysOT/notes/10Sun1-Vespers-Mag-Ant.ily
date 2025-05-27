\version "2.20.0"
%% \include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key ges \major
antiphon = "M"
psalmtone = "37"
psalmtonestruct = "33"
psalmnum = "Magnificat"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = aes
%% transposition after accounting for psalm tone
master-from-pitch = a
master-to-pitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    A great pro -- phet has ri -- sen up a -- mong us 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    and God has vi -- si -- ted his peo -- ple.
}
sopNotesAnt = \relative e' {
  r8 des8 des[ aes'] aes4 ges8 aes ces bes aes ges aes[ des,] des4
  \hideNotes des16 \unHideNotes  %so taht I can align the * better
  \allowBreak des8
  \allowBreak ces[ ees]
  \allowBreak ges
  \allowBreak f
  \allowBreak ges
  \allowBreak f
  \allowBreak ees
  \allowBreak ees[ des]
  \allowBreak des4 \bar "||"
}
altoNotesAnt = \relative c' {
  s8 des8~ des4~ des2 ees aes,\breve*5/16 s16 ces4.~ ces2 aes2
}
tenorNotesAnt = \relative g {
  f2~ f ges f\breve*5/16 s16  ges4.~ ges2~ ges4 f
}
bassNotesAnt = \relative c {
  des2~ des~ des~ des\breve*5/16 s16 ees4. ces2 des
}

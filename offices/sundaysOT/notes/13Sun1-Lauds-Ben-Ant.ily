\version "2.20.0"
%% \include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key ges \major
antiphon = "B"
psalmtone = "60"
psalmtonestruct = "33"
psalmnum = "Benedictus"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a
%% transposition after accounting for psalm tone
master-from-pitch = ges
master-to-pitch = f


text = \lyricmode {
    \set includeGraceNotes = ##t
    Je -- sus, turn -- ing, saw the wo -- man and said: 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
    Take cou -- rage, daugh -- ter; your faith has saved you, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  f4 ges8 aes[ bes] aes f[ aes] aes ges4 f8 ees des4
  \noBreak \hideNotes des16 \unHideNotes  %so taht I can align the * better
  \allowBreak ees4
  \allowBreak des8[ aes']
  \allowBreak aes4
  \allowBreak bes8[ aes]
  \allowBreak aes4 \bar "'"
  \allowBreak aes8
  \allowBreak ges[ f ]
  \allowBreak ees
  \allowBreak f4
  \allowBreak ges8 \bar "'"
  \allowBreak aes8[ ges]
  \allowBreak ees
  \allowBreak des4
  des \bar "||"
}
altoNotesAnt = \relative c' {
  des2.~ des4. bes2 \parenthesize aes4 s16
  bes4 des2~ des4~ des4.~ des2. ces4. bes4 aes4
}
tenorNotesAnt = \relative g {
  aes4. f4.~ f4. ges2 aes4 s16 ges4 f2 ges4 f4. ges2. ees4. f2
}
bassNotesAnt = \relative c {
  des2.~ des4. ees2 f4 s16 ges4 des2~ des4~ des4. bes2. ces4. des2
}

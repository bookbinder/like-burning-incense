\version "2.20.0"
%% \include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key aes \major
antiphon = "M"
psalmtone = "48"
psalmtonestruct = "43"
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
    Ask and you will re ceive, 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} seek and you will find, knock and the
    door will be o -- pened to you.
}
sopNotesAnt = \relative e' {
  aes4 aes8 g aes f ees4( des)
  \hideNotes des16 \unHideNotes  %so taht I can align the * better
  \allowBreak aes'4
  \allowBreak aes8
  \allowBreak g[ aes]
  \allowBreak f
  \allowBreak ees4( des) \bar "'"
  \allowBreak aes'4
  \allowBreak f8
  \allowBreak aes
  \allowBreak bes4
  \allowBreak aes8
  \allowBreak f
  \allowBreak ees8[ f]
  \allowBreak ees
  \allowBreak ees
  \allowBreak des4 \bar "||"
}
altoNotesAnt = \relative c' {
  ees4. des s2 s16 c4. des s2 f2~ f2 des~ des4
}
tenorNotesAnt = \relative g {
  aes4.~ aes4.~ aes2~ s16 aes4.~ aes4. f2 aes2 des bes f4
}
bassNotesAnt = \relative c {
  c4. des f2 s16 ees4. des4.~ des2~ des~ des~ des~ des4
}

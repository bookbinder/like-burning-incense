\version "2.20.0"
%% \include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key f \major
antiphon = "M"
psalmtone = "71"
psalmtonestruct = "32"
psalmnum = "Magnificat"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = aes
topitch = f
%% transposition after accounting for psalm tone
master-from-pitch = a
master-to-pitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    The Son of Man 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    did not come to con -- demn men but to save them.
}
sopNotesAnt = \relative e' {
  r8 g8 f[ e] f g4
  \hideNotes g16 \unHideNotes  %so taht I can align the * better
  \allowBreak g8
  \allowBreak a[ bes]
  \allowBreak a4
  \allowBreak g8
  \allowBreak f
  \allowBreak g4
  \allowBreak g \bar "'"
  \allowBreak f8
  \allowBreak e
  \allowBreak e8--[ d]
  \allowBreak d4 \bar "||"
}
altoNotesAnt = \relative c' {
  e4 d4. c4.~ s16 c2.~ c a2
}
tenorNotesAnt = \relative g {
  c4 a4. g s16 f2. e2 a8[ g~] g4 f
}
bassNotesAnt = \relative c {
  c4 d4. e s16 f2. c2. d2
}

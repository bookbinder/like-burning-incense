\version "2.20.0"
%% \include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key c \major
antiphon = "M"
psalmtone = "7"
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
    If you want to be true chil -- dren of your hea -- ven -- ly Fa -- ther, 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    then you must pray for those who per -- se -- cute you
    and speak all kinds of e -- vil a -- gainst you, says the Lord.
}
sopNotesAnt = \relative e' {
  g8 g a[ g] f g \bar "" g[ c] b4 c8 a g \bar "" a g f \bar ""
  a[ g] g4
  \noBreak \hideNotes g16 \unHideNotes  %so taht I can align the * better
  \allowBreak g8
  \allowBreak b
  \allowBreak c
  \allowBreak d4
  \allowBreak c8
  \allowBreak a[ c]
  \allowBreak c
  \allowBreak b
  \allowBreak a
  \allowBreak g
  \allowBreak g4 \bar "'"
  \allowBreak g8
  \allowBreak f[ e]
  \allowBreak d[ e]
  \allowBreak d
  \allowBreak e
  \allowBreak f
  \allowBreak e
  \allowBreak d
  \allowBreak d[ a']
  \allowBreak a4 \bar "'"
  \allowBreak g8
  \allowBreak f
  \allowBreak a4( g) \bar "||"
}
altoNotesAnt = \relative c' {
  e2. c\breve*7/16 f4. e2 s16
  g2.~ g4.~ g4. s4 s4. s4. s2 d2.~ d2
}
tenorNotesAnt = \relative c' {
  c2.~ c\breve*7/16~ c4.~ c2 s16
  b4. e4. c4. d4. b4. a4~ a2~
  a4. c2.~ c4( b)
}
bassNotesAnt = \relative c' {
  c2. e,\breve*7/16 f4. c2 s16
  g'2.~ g4.~ g2. d4 f2~ f4.~ f2 d4 g2
}
%% update

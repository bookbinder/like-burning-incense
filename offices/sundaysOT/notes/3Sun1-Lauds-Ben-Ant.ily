\version "2.20.0"
%% I put lbi_defs.ly in ‘INSTALLDIR/lilypond/usr/share/lilypond/current/ly/’
% \include "lbi_defs.ly"
%% \include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key d \minor
antiphon = "B"
psalmtone = "44"
psalmtonestruct = "32"
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
  Come, fol -- low me, says the Lord; 
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  I will make you fi -- shers of men.
}
sopNotesAnt = \relative e' {
  e8[ g] a[ b] a a4 \bar "" g8[ a] g \bar "" g4( e)
  \noBreak \hideNotes e16 \unHideNotes   %so that I can align the * better
  \allowBreak e8
  \allowBreak e
  \allowBreak d
  \allowBreak e
  \allowBreak g[ e]
  \allowBreak e
  \allowBreak d
  \allowBreak e4 \bar "||"
}
altoNotesAnt = \relative c' {
  e\breve*7/16 d4. c2~ s16
  c2 a2 c4
}
tenorNotesAnt = \relative g {
  g\breve*7/16~ g4. a2 s16
  g2 f2 e4
}
bassNotesAnt = \relative c {
  c\breve*7/16 b4. a2 s16
  c2 d2 a4
}

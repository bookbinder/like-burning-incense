\version "2.20.0"
%% include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key des \major
antiphon = "1"
psalmtone = "34"
psalmtonestruct = "33"
psalmnum = "Ps_92"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a
%% Master transposition after accounting for psalm tone
master-from-pitch = aes
master-to-pitch = g

text = \lyricmode {
    \set includeGraceNotes = ##t
    We do well to sing to your name, Most High,
    \noBreak
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    and pro -- claim your mer -- cy at day -- break.
}
sopNotesAnt = \relative e' {
  f8 ees ees[ f] ees des[ f] aes aes bes[ des]
  \allowBreak c[ bes]
  \allowBreak bes4( aes)
  \noBreak \hideNotes e16 \unHideNotes   %so that I can align the * better
  \allowBreak aes8
  \allowBreak aes
  \allowBreak ges[ f]
  \allowBreak ees
  \allowBreak ges4
  \allowBreak f8
  \allowBreak ees
  \allowBreak ees[ des] des4 \bar "||"
}
altoNotesAnt = \relative c' {
    s2 s8 des2~ des~ des2.
    s16
    bes4. des2 aes
}
tenorNotesAnt = \relative g {
    aes4 ges4. f2 ges2 f2.
    s16
    ges4.~ ges2~ ges4 f
}
bassNotesAnt = \relative c {
    des4~ des4.~ des2 ges,4 bes des2.
    s16
    ees4. bes2 des
}

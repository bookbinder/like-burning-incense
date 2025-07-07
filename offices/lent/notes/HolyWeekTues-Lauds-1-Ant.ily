\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
keysig = \key aes \major
antiphon = "1"
psalmtone = "21"
psalmtonestruct = "33"
psalmnum = "Ps_43"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a
%% master transposition after accounting for psalm tone
master-from-pitch = a
master-to-pitch = a


text = \lyricmode {
  \set includeGraceNotes = ##t
  O Lord, de -- fend my cause;
  \markup { \tiny \raise #.5 \char ##x1F7B6 ""}
  res -- cue me from de -- ceit -- ful and im -- pious men.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    r8 ees8 ees[ f] ees des[ f] aes g4
    \noBreak \noBreak \hideNotes g16 \unHideNotes
    \allowBreak g8[ aes]
    \allowBreak f
    \allowBreak f4
    \allowBreak f8
    \allowBreak f
    \allowBreak g
    \allowBreak f
    \allowBreak f
    \allowBreak g
    \allowBreak f
    \allowBreak ees4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    c\breve*5/16 des4. ees4 s16 des\breve*7/16~ des\breve*5/16 bes4
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    aes\breve*5/16~ aes4. bes4~ s16 bes\breve*7/16 aes\breve*5/16 g4
}
bassNotesAnt = \relative c {
    \global
    \keysig
    aes'\breve*5/16 f4. ees4 s16 bes\breve*7/16 des\breve*5/16 ees4
}

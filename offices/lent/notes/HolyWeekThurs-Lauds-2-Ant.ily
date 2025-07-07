\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
keysig = \key aes \major
antiphon = "2"
psalmtone = "21"
psalmtonestruct = "33"
psalmnum = "Isa_12_1-6"
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
  God is my sa -- vior;
  \markup { \tiny \raise #.5 \char ##x1F7B6 ""}
  I trust in him and shall not fear.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    ees4 f8 ees ees[ aes] aes4
    \noBreak \noBreak \hideNotes aes16 \unHideNotes
    \allowBreak aes8
    \allowBreak g[ aes]
    \allowBreak f
    \allowBreak g4
    \allowBreak f8
    \allowBreak f
    \allowBreak g
    \allowBreak ees4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    c2 ees\breve*5/16 s16 des\breve*8/16 bes4
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    aes2~ aes\breve*5/16~ s16 aes\breve*8/16 g4
}
bassNotesAnt = \relative c {
    \global
    \keysig
    aes'2 c,\breve*5/16 s16 des\breve*8/16 ees4
}

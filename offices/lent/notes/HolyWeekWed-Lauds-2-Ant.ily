\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
keysig = \key aes \major
antiphon = "2"
psalmtone = "21"
psalmtonestruct = "33"
psalmnum = "1_Sam_2_1-10"
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
  If we have died with Christ,
  \markup { \tiny \raise #.5 \char ##x1F7B6 ""}
  we be -- lieve that we shall al -- so live with Christ.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    r8 ees8 ees f aes[ bes] aes g4
    \noBreak \noBreak \hideNotes g16 \unHideNotes
    \allowBreak ees8
    \allowBreak ees
    \allowBreak g[ aes]
    \allowBreak f
    \allowBreak f
    \allowBreak g
    \allowBreak f[ ees]
    \allowBreak ees4
    \allowBreak des8([-- ees] f4)
    \allowBreak g8
    \allowBreak ees4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    s4 ees4 des4. ees4 s16 r4 f4. des4 c2 des\breve*5/16 bes4
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    aes2~ aes4. bes4 s16
    g4 aes4.~ aes4~ aes2~ aes\breve*5/16 g4
}
bassNotesAnt = \relative c {
    \global
    \keysig
    c2 f4. ees2 s16 des4.~ des4 aes2 bes\breve*5/16 ees4
}

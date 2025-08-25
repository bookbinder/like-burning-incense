\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig = \key aes \major
antiphon = "2"
psalmtone = "21"
psalmtonestruct = "33"
psalmnum = "Ps_49_14-21"
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
  De -- li -- ver me, Lord,
  \markup { \tiny \raise #.5 \char ##x1F7B6 ""}
  and place me at your side, then let who -- e -- ver
  will, lift his hand to strike me.
}
sopNotesAnt = \relative e' {
    r8 ees8 aes aes aes g4
    \noBreak \noBreak \hideNotes g16 \unHideNotes
    \allowBreak ees8
    \allowBreak g[ aes]
    \allowBreak f
    \allowBreak g
    \allowBreak f
    \allowBreak ees4 \bar ","
    \allowBreak ees8[ f]
    \allowBreak ees
    \allowBreak ees
    \allowBreak des
    \allowBreak f
    \allowBreak aes4 \bar "'"
    \allowBreak g8[ aes]
    \allowBreak f
    \allowBreak g4
    \allowBreak f8
    \allowBreak ees4
    \allowBreak ees \bar "||"
}
altoNotesAnt = \relative c' {
    r8 ees8~ ees4.~ ees4. s16 c\breve*5/16 bes4 c2 des4 ees4
    des2. bes2
}
tenorNotesAnt = \relative g {
    aes4~ aes4. bes4. s16 aes\breve*5/16 g4 aes2~ aes4~ aes4~
    aes2.~ aes4 g4
}
bassNotesAnt = \relative c {
    c4~ c4. ees4.~ s16 ees\breve*5/16~ ees4 aes,2 bes4 c4 des2. ees2
}

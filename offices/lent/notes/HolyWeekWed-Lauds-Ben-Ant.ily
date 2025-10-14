\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig = \key aes \major
antiphon = "B"
psalmtone = "21"
psalmtonestruct = "33"
psalmnum = "Benedictus"
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
  Through the e -- ter -- nal Spi -- rit,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  Christ of -- fered him -- self to God as the per -- fect
  sa -- cri -- fice. His blood pu -- ri -- fies us from sin and makes us fit
  ser -- vants of the li -- ving God.
}
sopNotesAnt = \relative e' {
    ees4 des8 f aes aes g[ ees] ees4
    \noBreak \noBreak \hideNotes g16 \unHideNotes
    \allowBreak ees4
    \allowBreak g8
    \allowBreak aes
    \allowBreak bes
    \allowBreak bes4
    \allowBreak bes8
    \allowBreak g8[ bes]
    \allowBreak aes
    \allowBreak aes
    \allowBreak g[-- aes]
    \allowBreak f
    \allowBreak g
    \allowBreak f
    \allowBreak ees4
    \allowBreak r4 \bar "|"
    \allowBreak ees4
    \allowBreak f8[ ees]
    \allowBreak f[ ees]
    \allowBreak des
    \allowBreak des[ f]
    \allowBreak ees
    \allowBreak des
    \allowBreak ees([ f] ees4) \bar "'"
    \allowBreak ees8
    \allowBreak f[ ees]
    \allowBreak des
    \allowBreak des([ f] aes4)
    \allowBreak g8
    \allowBreak aes
    \allowBreak f
    \allowBreak f
    \allowBreak g
    \allowBreak f
    \allowBreak ees4 \bar "||"
}
altoNotesAnt = \relative c' {
    s4 des2 ees2 s16 bes\breve*10/16 ees4 f4. bes,2.
    c4 des4~ des\breve*12/16~ des4.~ des2~ des2. bes4
}
tenorNotesAnt = \relative g {
    aes4~ aes2 bes4 g4 s16 ees\breve*10/16 aes4~ aes4. g2.
    aes4~ aes4~ aes\breve*7/16~ aes\breve*5/16~ aes4. f2 bes aes4 g
}
bassNotesAnt = \relative c {
  c4 f2 ees2~
  s16
  << { \hideNotes \once \override NoteColumn.force-hshift = 0
       ees\breve*10/16 \unHideNotes }
     \new Voice { \voiceTwo g,\breve*10/16 } >>
  c4 des4. ees2.
    aes,4 des4 bes\breve*7/16 c\breve*5/16 des4.~
    des2~ des2. ees4
}

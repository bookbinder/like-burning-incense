\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
keysig = \key ges \major
antiphon = "3"
psalmtone = "60"
psalmtonestruct = "33"
psalmnum = "Ps_65"
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
  My ser -- vant, the Just One
  \markup { \tiny \raise #.5 \char ##x1F7B6 ""}
  will jus -- ti -- fy ma -- ny by ta -- king their sins __ on him -- self.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    r8 des8 ges4 f8 ges ges[ bes aes] aes4
    \noBreak \noBreak \hideNotes aes16 \unHideNotes
    \allowBreak aes8
    \allowBreak aes
    \allowBreak bes
    \allowBreak aes
    \allowBreak bes
    \allowBreak aes
    \allowBreak aes
    \allowBreak ges
    \allowBreak f
    \allowBreak ges
    \allowBreak ees([-- f ges f] ees4)
    \allowBreak ees8
    \allowBreak f
    \allowBreak ees4( des4) \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    bes2. des4.~ des\breve*6/16 s16 ees4. des4.
    ces\breve*8/16 aes2
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    des2. ges4. f\breve*6/16 s16 ges4.~ ges4.~
    ges\breve*8/16 f2
}
bassNotesAnt = \relative c {
    \global
    \keysig
    ges2. bes4. des\breve*6/16 s16 ces4. bes4.
    aes\breve*8/16 des2
}

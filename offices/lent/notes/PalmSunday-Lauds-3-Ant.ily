\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
keysig = \key des \major
antiphon = "3"
psalmtone = "34"
psalmtonestruct = "33"
psalmnum = "Ps_150"
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
  Ble -- ssed is he who comes
  \markup { \tiny \raise #.5 \char ##x1F7B6 ""}
  in the name of the Lord; peace in hea -- ven and glo -- ry
  in the high -- est.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    aes4 aes8 f des[ ees] des des4
    \noBreak \hideNotes des16 \unHideNotes
    \allowBreak des8
    \allowBreak ees
    \allowBreak ees[ f]
    \allowBreak ees
    \allowBreak des \bar ""
    \allowBreak ees4( f) \bar ","
    \allowBreak aes8[ bes]
    \allowBreak aes \bar ""
    \allowBreak bes4
    \allowBreak bes8
    \allowBreak bes \bar ""
    \allowBreak aes8([ f] des4)
    \allowBreak des8 \bar ""
    \allowBreak ees8
    \allowBreak f \bar ""
    \allowBreak des4
    des \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    des2~ des\breve*7/16 s16 bes2 des2 ees4. des2~ des\breve*5/16
    bes4~ bes aes
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    f2 bes\breve*7/16 s16 ges2 aes2~ aes4.
    f2 aes\breve*5/16 des,4 f2
}
bassNotesAnt = \relative c {
    \global
    \keysig
    des2~ des\breve*7/16~ s16 des2~ des2 c4.
    bes2 f\breve*5/16 ges4 <des \parenthesize des'>2
}

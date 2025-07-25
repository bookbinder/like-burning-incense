\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig = \key des \major
antiphon = "3"
psalmtone = "34"
psalmnum = "Ps_96"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a
%% master transposition after accounting for psalm tone
master-from-pitch = aes
master-to-pitch = g


text = \lyricmode {
  \set includeGraceNotes = ##t
  Pro -- claim this a -- mong the na -- tions:
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  the Lord is king, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
    r8 f8 f[ ges] f4 ees8 des ees f[ aes] aes4
    \noBreak \noBreak \hideNotes aes16 \unHideNotes
    \allowBreak aes8
    \allowBreak bes[ c]
    \allowBreak bes
    \allowBreak aes4
    \allowBreak \breathe
    \allowBreak f8
    \allowBreak ges[ aes]
    \allowBreak aes[ des,]
    \allowBreak des4 \bar "||"
}
altoNotesAnt = \relative c' {
    aes\breve*14/16 s16 des2. bes4 aes2
}
tenorNotesAnt = \relative g {
    f\breve*14/16 s16 ges4. f4. ees4 ges4 f
}
bassNotesAnt = \relative c {
    des\breve*14/16~ s16 des2.~ des4~ des2
}

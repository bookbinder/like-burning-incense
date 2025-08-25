\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key aes \major
antiphon = "2"
psalmtone = "21"
psalmtonestruct = "33"
psalmnum = "Ps_142"
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
    Call u -- pon the Lord 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    and he will hear you;
    cry out and he will an -- swer: Here I am.
}
sopNotesAnt = \relative e' {
  ees8[ f] ees8 ees ees \bar "" des([ f] aes4)
  \hideNotes aes16 \unHideNotes
  \allowBreak aes8
  \allowBreak g([ aes] f4)
  \allowBreak g8
  \allowBreak ees4
  \allowBreak ees \bar ","
  \allowBreak ees8[ f]
  \allowBreak f[ ees]
  \allowBreak des
  \allowBreak des
  \allowBreak f
  \allowBreak aes4
  \allowBreak aes \bar "'"
  \allowBreak g8([-- aes] f4)
  \allowBreak g
  \allowBreak ees4 \bar "||"
}
altoNotesAnt = \relative c' {
    s\breve*5/16 des\breve*5/16 s16 des\breve*5/16 c2. des\breve*5/16 ees2 des2. bes4
}
tenorNotesAnt = \relative g {
    aes\breve*5/16~ aes\breve*5/16~ s16 aes\breve*5/16~ aes2.~ aes\breve*5/16~
    aes2~ aes2. g4
}
bassNotesAnt = \relative c {
    c\breve*5/16 f\breve*5/16 s16 des\breve*5/16 aes2. des\breve*5/16 c2 bes2. ees4
}

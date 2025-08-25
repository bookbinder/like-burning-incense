\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key aes \major
antiphon = "B"
psalmtone = "22"
psalmtonestruct = "43"
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
    When you fast, 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    do not put on a gloo -- my face,
    like the hy -- po -- crites.
}
sopNotesAnt = \relative e' {
    des8 f aes4 bes8 \bar "" g aes f ees \bar "" f ees ees4
    ees8 f \bar "" ees des des4 \bar "||"
}
altoNotesAnt = \relative c' {
    des\breve*5/16~ des2 c2. bes4 aes
}
tenorNotesAnt = \relative g {
    f\breve*5/16 bes4 aes4~ aes2. f2
}
bassNotesAnt = \relative c {
    des\breve*5/16~ des2 aes2. des2
}

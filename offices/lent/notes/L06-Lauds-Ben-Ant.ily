\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key f \minor
antiphon = "B"
psalmtone = "50"
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
    When you meet those who are in need of clo -- thing, 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
   
    do not turn a -- way from them, for they are your bro -- thers.
    Then your light shall break forth like the dawn, and your good
    deeds shall go be -- fore you.
}
sopNotesAnt = \relative e' {
    ees8 ees ees[ f] f4 f8 ees f aes g \bar "" f[ ees] ees4 \bar "'" ees8
    \bar "" aes4 bes8 c c bes \bar "" bes4 \bar "'" bes8 \bar "" aes4 g8 aes \bar ""
    f4 f r4 \bar "|" aes8 bes \bar "" bes[ c] bes aes[ g] \bar ""
    aes([ bes] aes4) g8 aes \bar "" bes([ aes] f4) \bar "'" f8 f
    \bar "" f[ bes] aes4 aes8 \bar "" g ees \bar "" f4 f \bar "||"
}
altoNotesAnt = \relative c' {
    s\breve*11/16 s\breve*5/16 ees2.~ ees4.~ ees2 c2.~
    c4 f\breve*5/16 ees2. f2. des\breve*5/16 ees4 c2
}
tenorNotesAnt = \relative g {
    c\breve*11/16 bes\breve*5/16 aes2. g4. bes2~ bes4 aes2~
    aes4~ aes\breve*5/16~ aes2.~ aes2. bes\breve*5/16~ bes4~ bes aes
}
bassNotesAnt = \relative c {
    aes'\breve*11/16 g\breve*5/16 c,2. ees4.~ ees2 f2.~
    f4 des\breve*5/16 c2. des2. bes\breve*5/16 c4 f2
}

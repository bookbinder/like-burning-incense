\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key f \minor
antiphon = "3"
psalmtone = "50"
psalmtonestruct = "33"
psalmnum = "1_Pet_2_21-24"
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
    He was pierced for our of -- fen -- ses, 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
   
    and bur -- dened with our sins. By his wounds we are healed.
}
sopNotesAnt = \relative e' {
    f8 g aes[ g] f g[ aes] c \bar "" c[ bes] bes4 \bar "'" bes8
    \bar "" bes[ c] aes \bar "" g ees \bar "" ees4( f) \bar "|"
    r8 f8 ees[ f] \bar "" f([ ees] c4) \bar "" ees8 f
    \bar "" g([-- aes] f4) \bar "||"
}
altoNotesAnt = \relative c' {
    c\breve*8/16 f\breve*5/16 ees4.~ ees4 c2~
    c2~ c4 r4 ees4 c2
}
tenorNotesAnt = \relative g {
    aes\breve*8/16~ aes\breve*5/16~ aes4. bes4~ bes4( aes)
    s2 g4~ g4 bes~ bes aes
}
bassNotesAnt = \relative c {
    f\breve*8/16 des\breve*5/16 c4.~ c4 f2~ <aes, f'>2 c4 ees4 g f2
}

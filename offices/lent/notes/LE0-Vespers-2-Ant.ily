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
    I count e -- very -- thing as loss but this: 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
   
    the sur -- pas -- sing worth of know -- ing Christ
    Je -- sus my Lord.
}
sopNotesAnt = \relative e' {
    r8 ees8 des[ f] \bar "" ees[ f] ees des ees \bar "" ees[ aes] aes
    \bar "" g4 \bar "'"
    g8 aes \bar "" f[ g] f f[ g] aes \bar "" bes4 aes8 g8[-- aes] \bar ""
    f([ g] aes4) g8 f \bar "" f4( ees) \bar "||"
}
altoNotesAnt = \relative c' {
    c4 des c\breve*5/16 ees4.~ ees2 des2. f\breve*5/16 des2. bes2
}
tenorNotesAnt = \relative g {
    ees4 f aes\breve*5/16~ aes4. bes2~ bes2.~ bes\breve*5/16
    aes4( f2) g2
}
bassNotesAnt = \relative c {
    aes2~ aes\breve*5/16 c4. ees2 bes2. des\breve*5/16~ des2. ees2
}

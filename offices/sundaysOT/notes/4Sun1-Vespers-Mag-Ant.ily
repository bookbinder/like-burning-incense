\version "2.20.0"
%% \include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key f \major
antiphon = "M"
psalmtone = "10"
psalmtonestruct = "33"
psalmnum = "Magnificat"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    They all mar -- veled at the \ll "words * "
    that came forth from the mouth of God.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    c4 f8[ bes] \bar "" a[ f] f4 f8 f \bar "" g[( a] g4)
    g8 \bar "" f[ d f] \bar ""
    g4 a8 bes \bar "" c[ d c] c \bar "" f,4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    s4 s2 s2 d\breve*8/16 f2~ f~ f4
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    a4 bes c a2 bes\breve*5/16 a4. bes2~ bes a4    
}
bassNotesAnt = \relative c {
    \global
    \keysig
    f2~ f2. bes\breve*5/16 d,4.~ d2 f2~ f4
}

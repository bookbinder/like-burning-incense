\version "2.20.0"
%% I put lbi_defs.ly in ‘INSTALLDIR/lilypond/usr/share/lilypond/current/ly/’
% \include "lbi_defs.ly"
%% \include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key a \minor
antiphon = "B"
psalmtone = "44"
psalmtonestruct = "32"
psalmnum = "Benedictus"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    Come, fol -- low me, says the \ll "Lord; * "
    I will make you fi -- shers of men.

}
sopNotesAnt = \relative e' {
    \global
    \keysig
    e8[ g] a[ b] a a4 \bar "" g8[ a] g \bar "" g4( e) \bar ","
    e8 e d e \bar "" g[ e] e d \bar "" e4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    e\breve*7/16 d4. c2~
    c2 a2 c4
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    g\breve*7/16~ g4. a2
    g2 f2 e4
}
bassNotesAnt = \relative c {
    \global
    \keysig
    c\breve*7/16 b4. a2
    c2 d2 a4
}

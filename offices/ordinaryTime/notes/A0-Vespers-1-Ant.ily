\version "2.20.0"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key a \minor
antiphon = "1"
psalmtone = "39"
psalmtonestruct = "43"
psalmnum = "Ps_141_1-9"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a
%% Master transposition after accounting for psalm tone
master-from-pitch = a
master-to-pitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    Like burn -- ing in -- cense, Lord,
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
    let my prayer rise up to you.
}
sopNotesAnt = \relative e' {
    % will be populated by an include file in the cantor/organ scores called lbi_defs
    r8 d8 f[ e] d \bar "" e[ f] e \bar "" e4
    \hideNotes e16 \unHideNotes   %so that I can align the * better
    \allowBreak e8
    \allowBreak f
    \allowBreak d[ a']
    \allowBreak a4
    \allowBreak g8
    \allowBreak f
    \allowBreak e4 \bar "||"
}
altoNotesAnt = \relative c' {
    r8 s8 s1 s16 s4
    d4 c d c
}
tenorNotesAnt = \relative g {
    a\breve*5/16~ a4. g4 s16
    c4 a4~ a4~ a4~ a4 \bar "||"
}
bassNotesAnt = \relative c {
    f\breve*5/16 c4.~ c2 s16
    f4 e d a
}

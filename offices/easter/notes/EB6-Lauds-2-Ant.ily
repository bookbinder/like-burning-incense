\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig = \key a \minor
antiphon = "2"
psalmtone = "40"
psalmtonestruct = "43"
psalmnum = "Hab_3_2-4,_13a,_15-19"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a
%% master transposition after accounting for psalm tone
master-from-pitch = a
master-to-pitch = g


text = \lyricmode {
  \set includeGraceNotes = ##t
  You go forth to save your peo -- ple,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  to save your a -- noin -- ted one, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
    
    
    r8 e8 e[ f] e d g a c4 c
    \noBreak \hideNotes c16 \unHideNotes
    \allowBreak c8
    \allowBreak b[ c]
    \allowBreak a
    \allowBreak a
    \allowBreak b
    \allowBreak a
    \allowBreak a4
    \allowBreak g8
    \allowBreak g[ f]
    \allowBreak e4
    \allowBreak e \bar "||"
}
altoNotesAnt = \relative c' {
    
    
    s2. e4~ e\breve*5/16 s16 f\breve*9/16 d4~ d c
}
tenorNotesAnt = \relative g {
    
    
    g2. c4~ c\breve*5/16~ s16 c\breve*9/16 a4~ a2
}
bassNotesAnt = \relative c {
    
    
    c2.~ c4 a'\breve*5/16 s16 f\breve*9/16~ f4 a,2
}

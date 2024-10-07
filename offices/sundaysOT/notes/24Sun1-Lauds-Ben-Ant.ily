\version "2.20.0"
\include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key e \major
antiphon = "Ben."
psalmtone = "10"
psalmtonestruct = "33"
psalmnum = "Benedictus"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = gis


text = \lyricmode {
    \set includeGraceNotes = ##t
    He who lo -- ses his life be -- case of "me * " 
    and for the sake of the Go -- spel shall save it, says the Lord.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    gis4 gis8 fis gis a gis[ b] b cis-- cis-- b4 \bar "'"
    b8 gis b a[ gis] fis e fis4 fis \bar "'"
    gis4 \bar "" b8--[ gis e] e4 \bar "" cis8[ e] fis \bar "" fis4( e) \bar "||"
  }
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    e\breve*9/16~ e4~ e\breve*5/16 cis2 e4 dis2 b\breve*5/16 cis4. gis2
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    b\breve*9/16 a4 gis\breve*5/16 a2 fis2. e\breve*5/16~ e4.~ e2
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    e\breve*9/16~ e4~ e\breve*5/16 fis2 b,2. gis\breve*5/16 a4. e2
}

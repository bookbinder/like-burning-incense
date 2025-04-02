\version "2.20.0"
%% \include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key gis \minor
antiphon = "M"
psalmtone = "56"
psalmtonestruct = "43"
psalmnum = "Magnificat"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = gis


text = \lyricmode {
    \set includeGraceNotes = ##t
    When Je -- sus saw the \ll "crowds, * "
    he went up the moun -- tain; his dis -- ci -- ples
    came and ga -- thered a -- round him, and he
    o -- pened his mouth and be -- gan to teach them.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    cis4 e8[ dis] cis \bar "" b cis \bar "" cis4( gis') \bar ""
    gis8 \bar "" fis[ gis fis] e4 dis8 \bar "" dis[ cis] cis4 r4 \bar ""
    e8 fis \bar "" gis[ ais] b \bar "" b4 b8 ais b ais \bar "" gis4 gis \bar ","
    gis8 \bar "" gis[ b] \bar "" cis[ b cis] b gis \bar ""
    fis4 \bar "" fis8 e \bar "" fis8[ e cis] b \bar "" cis4 cis4 \bar "||"
   }
altoNotesAnt = \relative c' {
    \global
    \keysig
    s2 s4. cis\breve*5/16~ cis4. s4. s2 r4 e4
    fis4. dis2. e\breve*5/16 fis4 e\breve*5/16
    cis2~ cis4 r4 a4 gis
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    gis\breve*5/16 fis4 e\breve*5/16 dis4. gis4. fis4 e2 cis'4
    b4.~ b2.~ b\breve*5/16~ b4 gis\breve*5/16
    a2 gis4 dis e2
}
bassNotesAnt = \relative c {
    \global
    \keysig
    e\breve*5/16 dis4 cis\breve*5/16~ cis2.~ cis2. cis4
    dis4. gis fis e\breve*5/16 dis4 cis\breve*5/16
    a2 cis2~ cis2
}

\version "2.18.2"
\include "../../../lbi_defs.ily"

antiphon = "B"
psalmnum = "Benedictus"
psalmtone = "56"
psalmtonestruct = "43"
antKeysig = \key cis \minor
frompitch = a
topitch = gis


text = \lyricmode {
    \set includeGraceNotes = ##t
    The Lord will set up his stan -- "dard * " in the sight of all the
    na -- tions, and ga -- ther to him -- self the dis -- persed of
    Is -- ra -- el.
}
sopNotesAnt = \relative fis' {

		
    
    
    r8 cis8 cis4 b8 e fis e dis[ cis] cis4 e8 fis gis[ fis] e fis[ gis] fis
    \bar "" gis4 gis4 \bar "," gis8 \bar ""
    b[ cis] b b b \bar "" gis4 fis8 fis \bar "" e([ fis] e4) dis8
    \bar "" e[ dis] cis \bar "" cis4 \bar "||"
}
altoNotesAnt = \relative d' {

    
    
    s2 s2 s4 s4 s4 e4.
    s4. fis4 e4.~ 
    e\breve*5/16 cis2~ cis4 b4. gis4.~ gis4
}    
tenorNotesAnt = \relative g {

    
    
    gis\breve*14/16~ gis4. a4. cis4~ cis4. b\breve*5/16
    a2~ a4 fis4.~ fis4. e4
}
bassNotesAnt = \relative c {

    
    
    e\breve*14/16 cis2.~ cis4~ cis4. gis'\breve*5/16 a2 a,4 b4. cis4.~ cis4
}
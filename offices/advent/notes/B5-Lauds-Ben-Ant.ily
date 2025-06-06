\version "2.18.2"
\include "../../../lbi_defs.ily"

antiphon = "B"
psalmnum = "Benedictus"
psalmtone = "45"
psalmtonestruct = "42"
antKeysig = \key cis \minor
frompitch = a
topitch = gis


text = \lyricmode {
    \set includeGraceNotes = ##t
    I will help you, says the "Lord. * " I am your Sa -- vior, the Ho -- ly
    One of Is -- ra -- el.
}
sopNotesAnt = \relative fis' {

		
    
    
    cis8 dis e[ dis cis] cis4 cis8[ e] e fis4 \bar ","
    gis4 gis8 gis gis[ fis] fis4 \bar "'"
    fis8 e e dis e dis cis cis4 \bar "||"
}
altoNotesAnt = \relative d' {

    
    
    s4 s4. s2 s8 s4 e2 cis\breve*5/16 b2 gis
}    
tenorNotesAnt = \relative g {

    
    
    gis\breve*10/16 b4 gis2 a\breve*5/16 fis2~ fis4 e
}
bassNotesAnt = \relative c {

    
    
    e\breve*10/16 dis4 cis2 a\breve*5/16 b2 cis2
}
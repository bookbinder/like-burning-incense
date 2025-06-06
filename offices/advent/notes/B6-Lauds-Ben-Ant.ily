\version "2.18.2"
\include "../../../lbi_defs.ily"

antiphon = "B"
psalmnum = "Benedictus"
psalmtone = "25"
psalmtonestruct = "34"
antKeysig = \key cis \minor
frompitch = a
topitch = gis


text = \lyricmode {
    \set includeGraceNotes = ##t
    Say to the faint -- hear -- "ted: * " Take cou -- rage! The Lord
    our God is co -- ming to save us.
}
sopNotesAnt = \relative fis' {

		
    
    
    e4 e8 e fis[ gis] gis[ fis] fis4 \bar "'"
    e8[ dis] cis4 cis \bar ","
    b8 cis[ gis'] gis fis4 e8 fis4 e8 dis dis[ cis] cis4 \bar "||"
}
altoNotesAnt = \relative d' {

    
    
    gis,2. cis2 b4 s2 s8 cis2.~ cis2 gis2
}    
tenorNotesAnt = \relative g {

    
    
    e2. a2 fis4 gis\breve*5/16 e4. a4. gis2 fis4 e
}
bassNotesAnt = \relative c {

    
    
    cis2. a2 b4 e\breve*5/16 cis2.~ cis2~ cis2
}
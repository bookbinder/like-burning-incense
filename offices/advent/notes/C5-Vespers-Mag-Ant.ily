\version "2.20.0"
\include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key gis \minor
antiphon = "M"
psalmtone = "39"
psalmtonestruct = "43"
psalmnum = "Magnificat"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = gis


text = \lyricmode {
    \set includeGraceNotes = ##t
    All you who love Je -- ru -- sa -- "lem, * " re -- joice with her
    for -- e -- ver.
}
sopNotesAnt = \relative fis' {

		
    
    
    r8 cis8 e[ dis] cis dis4 e8 fis[ gis] fis fis4 \bar "'"
    fis8 gis4 fis8 e[ fis] e e[ dis] dis4 \bar "||"
}
altoNotesAnt = \relative d' {

    
    
    gis,\breve*5/16 b4. cis4. b4.~ b4. cis4.~ cis4 b4
}    
tenorNotesAnt = \relative g {

    
    
    e\breve*5/16 fis4. e4. dis4. e4. gis4.~ gis2
}
bassNotesAnt = \relative c {

    
    
    cis\breve*5/16 b4.~ b4.~ b4. e4. cis4. gis2
}
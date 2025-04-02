\version "2.18.2"
\include "../../../lbi_defs.ily"

antiphon = "B"
psalmnum = "Benedictus"
psalmtone = "45"
psalmtonestruct = "42"
keysig = \key cis \minor
frompitch = a
topitch = gis


text = \lyricmode {
    \set includeGraceNotes = ##t
    I will help you, says the "Lord. * " I am your Sa -- vior, the Ho -- ly
    One of Is -- ra -- el.
}
sopNotesAnt = \relative fis' {
    \global	% will be populated by an include file
		% in the cantor/organ scores called lbi_defs
    \keysig
    \voiceOne
    cis8 dis e[ dis cis] cis4 cis8[ e] e fis4 \bar ","
    gis4 gis8 gis gis[ fis] fis4 \bar "'"
    fis8 e e dis e dis cis cis4 \bar "||"
}
altoNotesAnt = \relative d' {
    \global
    \keysig
    \voiceTwo
    s4 s4. s2 s8 s4 e2 cis\breve*5/16 b2 gis
}    
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    gis\breve*10/16 b4 gis2 a\breve*5/16 fis2~ fis4 e
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    e\breve*10/16 dis4 cis2 a\breve*5/16 b2 cis2
}
\version "2.20.0"
\include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key e \major
antiphon = "2"
psalmtone = "14"
psalmtonestruct = "43"
psalmnum = "Dan_3_52-57"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = gis


text = \lyricmode {
    \set includeGraceNotes = ##t
    The Lord is "here; * " go out to meet him, say -- ing: Great
    is his birth, e -- ter -- nal his king -- dom, strong God,
    Ru -- ler of all, Prince of peace, al -- le -- lu -- ia.
}
sopNotesAnt = \relative fis' {
    \global	% will be populated by an include file
		% in the cantor/organ scores called lbi_defs
    \keysig
    \voiceOne
    r8 e8 e[ fis] e fis4( gis) \bar "'"
    gis8 gis[ a] gis fis[ gis a] a4 a8[ gis] gis4 \bar ","
    b4 gis8 fis fis4( e) \bar "'"
    gis8 b4 gis8 fis fis[ gis fis] fis4 \bar ","
    gis8[ a] b4 cis8 b a gis4( fis) \bar "'"
    fis8[ gis fis] gis a([ gis] fis4) \bar "'"
    fis8 fis[ gis] e4 e \bar "||"
}
altoNotesAnt = \relative d' {
    \global
    \keysig
    \voiceTwo
    b4 cis4. e\breve*8/16~ e4.~ e4~ e2 dis2
    cis\breve*5/16 dis2 cis\breve*5/16 fis4 e\breve*5/16
    dis2 cis2~ cis4~ cis4.~ cis4~ cis b
}    
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    gis4 a4. b\breve*8/16 a4. cis4 b2~ b2
    gis\breve*5/16~ gis2 e\breve*5/16 a4 gis\breve*5/16 b2
    e,2 fis4 a4.~ a4 gis2
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    e4~ e4.~ e\breve*8/16~ e4.~ e4~ e2 b2 cis\breve*5/16
    gis2 a\breve*5/16~ a4 e'\breve*5/16 b2
    a2~ a4~ a4.~ a4 e'2
}
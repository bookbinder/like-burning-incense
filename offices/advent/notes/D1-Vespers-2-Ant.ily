\version "2.20.0"
\include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key cis \minor
antiphon = "2"
psalmtone = "17"
psalmtonestruct = "33"
psalmnum = "Ps_112"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = gis


text = \lyricmode {
    \set includeGraceNotes = ##t
    Croo -- ked paths will be straigh -- "tened, * "
    and rough ways made smooth.
    Come, O Lord, do not de -- lay, al -- le -- lu -- ia.
}
sopNotesAnt = \relative fis' {
    \global	% will be populated by an include file
		% in the cantor/organ scores called lbi_defs
    \keysig
    \voiceOne
    cis8[ gis'] gis gis4 fis8 gis gis[ fis gis] gis4 \bar "'"
    fis8 e[ dis] fis4 \bar "" e8[ dis] \bar "" dis4( cis4) r4 \bar "|"
    e8--[ fis] dis[ e] \bar "" fis4 fis8 e dis cis[ b] \breathe
    cis8 \bar "" e[ dis] \bar "" cis4 cis \bar "||"
}
altoNotesAnt = \relative d' {
    \global
    \keysig
    \voiceTwo
    gis,\breve*7/16 dis'4. cis4. b4 cis b gis2.
    b2 cis\breve*8/16 b4 gis2

}    
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    e\breve*7/16 fis4. e4. gis4 fis4~ fis~ fis( e2)~
    e2~ e\breve*5/16 dis4. fis4~ fis e
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    cis\breve*7/16~ cis2. gis4 a4 b cis2.
    gis2 a\breve*5/16 b4.~ b4 cis2
}
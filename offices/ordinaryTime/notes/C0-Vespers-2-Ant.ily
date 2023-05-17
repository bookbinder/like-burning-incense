\version "2.20.0"
\include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key cis \minor
antiphon = "2"
psalmtone = "43"
psalmtonestruct = "43"
psalmnum = "Ps_116_10-19"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = gis


text = \lyricmode {
    \set includeGraceNotes = ##t
    I shall take in -- to my hands the sa -- ving cha -- lice " * " 
    and in -- voke the name of the Lord.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    cis8 dis e dis e dis cis[ gis'] gis fis[ gis] gis b[ gis] gis4 \bar "'"
    \hideNotes e16 \unHideNotes   %so that I can align the * better
    gis8 fis e[ fis] e dis([ e] fis4) e8 dis \bar "" dis4( cis) \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    s2. cis4 s8 e4. dis2~
    s16
    dis4 cis4.~ cis2 a4 gis2 \bar "||"
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    e\breve*3/8~ e4 s8 gis4.~ gis2~
    s16
    gis4~ gis4. a2 fis4 e2

}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    cis\breve*3/8~ cis2. gis2
    s16
    b4 cis4.~ cis2.~ cis2

}

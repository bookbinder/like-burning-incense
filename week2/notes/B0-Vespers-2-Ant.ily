\version "2.18.2"
% \include "../../lbi_defs.ily"



global = {
    \key cis \minor
    \cadenzaOn
    \set tieWaitForNote = ##t
    \autoBeamOff
}

text = \lyricmode {
    \set includeGraceNotes = ##t
    When I see your face, O "Lord, * " I shall know the full -- ness of joy, al -- le -- lu -- ia.
}


sopNotesAnt = \relative e' {
    \global
    \override Lyrics.LyricSpace.minimum-distance = #2.0
    \voiceOne
    e8 fis gis[ a] gis gis4 gis8 fis[( gis a gis] fis4) \bar "'" fis8 gis e[ fis] e dis e dis cis4 \bar "'" b8 cis dis[ cis] cis4 \bar "||"
}

altoNotesAnt = \relative c' {
    \global
    \voiceTwo
    b\breve*8/16 cis2. dis4 cis4. b4. cis4 a4 gis2
}

tenorNotesAnt = \relative g {
    \global
    \voiceOne
    gis\breve*1/2 a2.~ a4 gis4.~ gis4. e4 fis4~ fis e
}

bassNotesAnt = \relative d {
    \global
    \voiceTwo
    e\breve*1/2 a,2. b4 cis4. gis4. a4~ a4 cis2
}


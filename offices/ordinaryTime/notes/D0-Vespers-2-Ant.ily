\version "2.20.0"
%% include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key f \minor
antiphon = "2"
psalmtone = "50"
psalmtonestruct = "33"
psalmnum = "Ps_130"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a

text = \lyricmode {
    \set includeGraceNotes = ##t
    From the mor -- ning watch un -- til \ll "night,  * " _
    I have wai -- ted trus -- ting -- ly for the Lord.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    f8 g aes[ g] f c'4 c8 bes[ c] aes4( g) \bar "'"
    \hideNotes e16 \unHideNotes   %so that I can align the * better
    g8 f g[ aes] g bes bes bes aes g g4( f) \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    c\breve*10/16 ees\breve*6/16~
    s16
    ees4. f\breve*5/16 c2
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    aes\breve*10/16 c\breve*6/16
    s16
    bes4.~ bes\breve*5/16~ bes4( aes)
}
bassNotesAnt = \relative c {
    \global
    \keysig
    f\breve*10/16 c\breve*6/16
    s16
    ees4. des\breve*5/16 f2
}

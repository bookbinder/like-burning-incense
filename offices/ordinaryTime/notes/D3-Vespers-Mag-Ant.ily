\version "2.20.0"
%% include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key f \minor
antiphon = "M"
psalmtone = "51"
psalmtonestruct = "34"
psalmnum = "Magnificat"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a

text = \lyricmode {
    \set includeGraceNotes = ##t
    Do great things for us, O \ll "Lord,  * " _
    for you are migh -- ty, and ho -- ly is your name.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    r8 c8 c[ des] c bes ees[ f] aes aes4( g) \bar "'"
    \hideNotes e16 \unHideNotes   %so that I can align the * better
    g8 g aes f ees des f f ees des c4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    s2. ees4.~ ees\breve*7/16
    s16
    des4. bes2 aes4
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    ees4 f2 aes4. bes\breve*7/16~
    s16
    bes4. f2~ f4
}
bassNotesAnt = \relative c {
    \global
    \keysig
    aes4 des2 c4. ees\breve*7/16
    s16
    bes4. des2 f,4
}

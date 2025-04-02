\version "2.20.0"
%% include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key ges \major
antiphon = "2"
psalmtone = "64"
psalmtonestruct = "33"
psalmnum = "Ps_136_10-26"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a

text = \lyricmode {
    \set includeGraceNotes = ##t
    Great and won -- der -- ful are your \ll "deeds,  * " _
    Lord God the Al -- migh -- ty.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    aes8[ bes] aes f ges aes ges[ f] ees des4 \bar "'"
    \hideNotes e16 \unHideNotes   %so that I can align the * better
    des8[ ees des] ces[( ees] ges4) f8 ees ees[ des] des4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    des2. bes4. des4
    s16
    bes4. ces4( des2) aes2
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    f2. ges4. aes4
    s16
    ges4.~ ges4~ ges2~ ges4 f
}
bassNotesAnt = \relative c {
    \global
    \keysig
    des2. ees4. f4
    s16
    ges4. ees4( bes2) des2
}

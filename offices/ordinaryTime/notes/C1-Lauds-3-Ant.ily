\version "2.20.0"
%% include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key aes \major
antiphon = "3"
psalmtone = "48"
psalmtonestruct = "43"
psalmnum = "Ps_148"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a
%% Master transposition after accounting for psalm tone
master-from-pitch = a
master-to-pitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    Praise the Lord  
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
    from the hea -- vens, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
    aes8[ bes] aes g[( aes] f4) \bar ""
    \noBreak \hideNotes e16 \unHideNotes   %so that I can align the * better
    f8 ees f ees des ees ees[ f des] des4 \bar "||"
}
altoNotesAnt = \relative c' {
    ees4. des2.
    s16
    c2 bes4. aes4

}
tenorNotesAnt = \relative g {
    aes4. aes2.~
    s16
    aes2 f4.~ f4
}
bassNotesAnt = \relative c {
    c4. des2.
    s16
    aes2 des4.~ des4
}

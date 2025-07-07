\version "2.20.0"
%% include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key ges \major
antiphon = "2"
psalmtone = "64"
psalmtonestruct = "33"
psalmnum = "Ps_136_10-26"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a
%% Master transposition after accounting for psalm tone
master-from-pitch = ges
master-to-pitch = f

text = \lyricmode {
    \set includeGraceNotes = ##t
    Great and won -- der -- ful are your deeds,  
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
    Lord God the Al -- migh -- ty.
}
sopNotesAnt = \relative e' {
    aes8[ bes] aes f ges aes ges[ f] ees des4 \bar ""
    \noBreak \hideNotes e16 \unHideNotes   %so that I can align the * better
    \allowBreak des8[ ees des]
    \allowBreak ces[( ees] ges4)
    \allowBreak f8
    \allowBreak ees
    \allowBreak ees[ des]
    \allowBreak des4 \bar "||"
}
altoNotesAnt = \relative c' {
    des2. bes4. des4
    s16
    bes4. ces4( des2) aes2
}
tenorNotesAnt = \relative g {
    f2. ges4. aes4
    s16
    ges4.~ ges4~ ges2~ ges4 f
}
bassNotesAnt = \relative c {
    des2. ees4. f4
    s16
    ges4. ees4( bes2) des2
}

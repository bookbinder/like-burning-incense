\version "2.20.0"
%% include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key aes \major
antiphon = "2"
psalmtone = "48"
psalmtonestruct = "43"
psalmnum = "Ps_138"
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
    In the pre -- sence of the an -- gels  
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
    I will sing to you, my God.
}
sopNotesAnt = \relative e' {
    aes8 aes g aes f ees f[ ees des] des4 \bar ""
    \noBreak \hideNotes e16 \unHideNotes   %so that I can align the * better
    \allowBreak des8
    \allowBreak ees
    \allowBreak f[ aes]
    \allowBreak f
    \allowBreak ees[ f]
    \allowBreak ees
    \allowBreak ees4( des) \bar "||"
}
altoNotesAnt = \relative c' {
    ees4 des2~ des4.~ des2
    s16
    c2. aes2
}
tenorNotesAnt = \relative g {
    aes4~ aes2~ aes4. f2~
    s16
    f4. aes f2
}
bassNotesAnt = \relative c {
    c4 des2~ des4.~ des2
    s16
    aes2. des2
}

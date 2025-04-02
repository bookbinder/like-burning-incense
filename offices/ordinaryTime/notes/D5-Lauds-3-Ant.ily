\version "2.20.0"
%% include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key aes \major
antiphon = "3"
psalmtone = "21"
psalmtonestruct = "33"
psalmnum = "Ps_147_1-11"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a

text = \lyricmode {
    \set includeGraceNotes = ##t
    Let us joy -- ful -- ly  \noBreak \markup { \tiny "🞵" } 
    praise the Lord our God.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    ees8 ees g[ aes] f ees4 \bar ""
    \hideNotes e16 \unHideNotes   %so that I can align the * better
    f8[ ees] des f[ g] \allowBreak f \allowBreak ees4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    c4 des4. c4
    s16
    des2. bes4
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    ees4 f4. aes4~
    s16
    aes2. g4
}
bassNotesAnt = \relative c {
    \global
    \keysig
    aes4~ aes4.~ aes4
    s16
    des4. bes ees4

}

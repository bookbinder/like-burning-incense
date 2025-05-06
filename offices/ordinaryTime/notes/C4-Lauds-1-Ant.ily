\version "2.20.0"
%% include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key ges \major
antiphon = "1"
psalmtone = "37"
psalmtonestruct = "33"
psalmnum = "Ps_86"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = aes


text = \lyricmode {
    \set includeGraceNotes = ##t
     Give joy to your ser -- vant, Lord;  \markup \with-color #(x11-color 'gray36) { \tiny \raise #.5 \char ##x1F7B6 } _
    to you I lift up my heart.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    r8 des8 ges4 f8 ges ees[ f] ges aes4
    \hideNotes e16 \unHideNotes   %so that I can align the * better
    aes8 \bar "" ges[ ees] f \bar "" ges4 \bar "" f8 ees \bar ""
    ees4( des) \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    bes2 s4 des4.~ des
    s16
    bes4. ees4 ces aes2
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    des2 s4 ges4. f4.
    s16
    ges4.~ ges2~ ges4( f)
}
bassNotesAnt = \relative c {
    \global
    \keysig
    ges2 s4 bes4. des
    s16
    ees4. ces2 des
}

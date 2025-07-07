\version "2.20.0"
%% include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key ges \major
antiphon = "1"
psalmtone = "37"
psalmtonestruct = "33"
psalmnum = "Ps_86"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = aes
%% Master transposition after accounting for psalm tone
master-from-pitch = ges
master-to-pitch = f


text = \lyricmode {
    \set includeGraceNotes = ##t
     Give joy to your ser -- vant, Lord;  
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
    to you I lift up my heart.
}
sopNotesAnt = \relative e' {
    r8 des8 ges4 f8 ges ees[ f] ges aes4
    \noBreak \hideNotes e16 \unHideNotes   %so that I can align the * better
    \allowBreak aes8
    \allowBreak ges[ ees]
    \allowBreak f
    \allowBreak ges4
    \allowBreak f8
    \allowBreak ees
    \allowBreak ees4( des) \bar "||"
}
altoNotesAnt = \relative c' {
    bes2 s4 des4.~ des
    s16
    bes4. ees4 ces aes2
}
tenorNotesAnt = \relative g {
    des2 s4 ges4. f4.
    s16
    ges4.~ ges2~ ges4( f)
}
bassNotesAnt = \relative c {
    ges2 s4 bes4. des
    s16
    ees4. ces2 des
}

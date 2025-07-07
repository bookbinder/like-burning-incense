\version "2.20.0"
%% include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key ges \major
antiphon = "3"
psalmtone = "37"
psalmtonestruct = "33"
psalmnum = "Rev_11_17-18_and_12_10b-12a"
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
    The Fa -- ther has gi -- ven Christ  
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}  
    all power, ho -- nor and king -- ship;
    all peo -- ple will o -- bey him.
}
sopNotesAnt = \relative e' {
    r8 des8 ges f ges ges[ bes] bes ces([ bes] aes4) \bar ""
    \noBreak \hideNotes e16 \unHideNotes   %so that I can align the * better
    \allowBreak aes8[ bes]
    \allowBreak ges4
    \allowBreak f8
    \allowBreak ges
    \allowBreak ees
    \allowBreak ees[ des]
    \allowBreak des4 \bar "'"
    \allowBreak des8[ ees]
    \allowBreak ces[ ees]
    \allowBreak ges
    \allowBreak f
    \allowBreak ees
    \allowBreak f[ ees des]
    \allowBreak des4 \bar "||"
}
altoNotesAnt = \relative c' {
    s2 s8 des4. ees2
    s16
    des4 bes ces4. aes2
    bes4 ces4.~ ces4 aes4.~ aes4
}
tenorNotesAnt = \relative g {
    ges\breve*5/16~ ges4. ees4( aes)
    s16
    f4 ges~ ges4.~ ges4 f
    ges4~ ges4.~ ges4~ ges4. f4
}
bassNotesAnt = \relative c {
    bes\breve*5/16~ bes4. aes4( ces)
    s16
    des4 ees ces4. des2
    ges,4 aes4. ces4 des4.~ des4
}

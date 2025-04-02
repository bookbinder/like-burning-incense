\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
keysig =  \key f \minor
antiphon = "M"
psalmtone = "22"
psalmtonestruct = "43"
psalmnum = "Magnificat"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a
%% master transposition after accounting for psalm tone
master-from-pitch = a
master-to-pitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    Man can -- not live on bread a -- "lone * " but by e -- very word that
    comes from the mouth of God.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    aes4^"Used different psalm tone below. Does it work?"
    aes8 f[ aes] \bar "" aes8[-- bes c] aes g aes \bar ""
    f8([ ees] des4) \bar "'" des8 ees \bar "" f[ ees] des \bar ""
    ees4 ees8 \bar "" f[ aes] f ees f ees \bar "" ees4( des4) \bar "||"
    }
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    des\breve*5/16 c2. des2. des4. c4. ees2. aes,2
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    aes\breve*5/16~ aes2.~ aes4 f2~ f4. aes4.~ aes2. f2
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    f\breve*5/16 ees2. des2. bes4. aes4. c2. des2
}

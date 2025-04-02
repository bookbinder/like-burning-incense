\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
keysig =  \key aes \major
antiphon = "B"
psalmtone = "21"
psalmtonestruct = "33"
psalmnum = "Benedictus"
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
    Lord, teach us to "pray * " as John taught his dis -- ci -- ples.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    ees4 des8 f aes \bar "" g4( ees) \bar "'" ees8 \bar "" g[ aes] f g4
    f8 \bar "" ees4 ees \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    s4 des4. ees\breve*5/16 c2. bes2
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    aes4~ aes4. bes\breve*5/16 aes2.~ aes4 g
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    c4 f4. ees\breve*5/16~ ees2.~ ees2
}

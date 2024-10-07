\version "2.20.0"
\include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key ges \major
antiphon = "Ben."
psalmtone = "37"
psalmtonestruct = "33"
psalmnum = "Benedictus"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = aes


text = \lyricmode {
    \set includeGraceNotes = ##t
    Ev -- ery -- one heard with a -- maze -- "men t * " 
    what Je -- sus taught, for he spoke with such au -- tho -- ri -- ty.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    aes8 aes aes bes[ aes] ges aes ces[ bes aes] aes4 \bar ""
    aes8 ges[ ees f] ees ees4( des) \bar ""
    des8 ees \bar "" ces[ ees] ges aes4 ges8 \bar "" ees des des4 \bar "||"
  }
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    f4. ges2 ees2.~ ees4 ces aes2
    s4 ces4. ees aes,2
}
tenorNotesAnt = \relative c' {
    \global
    \keysig
    \voiceOne
    des4.~ des2 ces2.~ ces4 ges f2 f4
    ges4.~ ges~ ges4 f
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    des4. ges2 aes2. ces,2 des2 f4
    ees4. ces des2
}

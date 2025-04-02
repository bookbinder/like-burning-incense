\version "2.20.0"
\include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key ges \major
antiphon = "M"
psalmtone = "37"
psalmtonestruct = "33"
psalmnum = "Magnificat"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = aes


text = \lyricmode {
    \set includeGraceNotes = ##t
    You, O "Lord, * " are the One whose co -- ming was fore -- told;
    we long for you to come and set your peo -- ple free.
}
sopNotesAnt = \relative fis' {
    \global	% will be populated by an include file
		% in the cantor/organ scores called lbi_defs
    \keysig
    \voiceOne
    aes8[ f] bes aes4 aes8 aes ges[ aes] ges8 f ges ees f ees4( des) \bar ","
    des8 \bar "" ces[ ees] ges f ges \bar "" aes4 aes8 \bar "" ges ees f ees
    \bar "" des4 \bar "||"
}
altoNotesAnt = \relative d' {
    \global
    \keysig
    \voiceTwo
    des\breve*7/16 bes4. ces2 aes\breve*5/16 ces\breve*5/16
    ees4. des2 aes4
}    
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    f\breve*7/16 ges4.~ ges2 f\breve*5/16 ges\breve*5/16~ ges4.~ ges2 f4
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    des\breve*7/16 ees4. ces2 des\breve*5/16 ees\breve*5/16
    ces4. bes2 des4
}
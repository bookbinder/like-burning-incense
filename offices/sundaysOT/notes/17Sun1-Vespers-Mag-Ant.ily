\version "2.20.0"
%% \include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key aes \major
antiphon = "M"
psalmtone = "48"
psalmtonestruct = "43"
psalmnum = "Magnificat"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    Ask and you will re "ceive, * " seek and you will find, knock and the
    door will be o -- pened to you.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    aes4 aes8 g aes f ees4( des) \bar "'" aes'4 aes8 g[ aes] f ees4( des) \bar "'"
    aes'4 f8 aes \bar "" bes4 aes8 f \bar "" ees8[ f] ees ees des4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    ees4. des s2 c4. des s2 f2~ f2 des~ des4
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    aes4.~ aes4.~ aes2~ aes4.~ aes4. f2 aes2 des bes f4
}
bassNotesAnt = \relative c {
    \global
    \keysig
    c4. des f2 ees4. des4.~ des2~ des~ des~ des~ des4
}

\version "2.20.0"
\include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key aes \major
antiphon = "2"
psalmtone = "21"
psalmtonestruct = "33"
psalmnum = "Dan_3_57-88,_56"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    Moun -- tains and hills shall be le -- "vel, * " croo -- ked
    paths straight, rough ways smooth. Come, Lord, do not de -- lay,
    al -- le -- lu -- ia.
}
sopNotesAnt = \relative fis' {
    \global	% will be populated by an include file
		% in the cantor/organ scores called lbi_defs
    \keysig
    \voiceOne
    aes4 g8 aes f[ ees] des8 ees f[ ees] ees4 \bar "'"
    aes4 g8 f[ g aes] aes4 \bar "'"
    bes4 aes8[ f] ees4 r4 \bar "|"
    ees8[ f ees] des([ f] aes4) \bar "'"
    aes8 g[ aes] f ees4 \bar "'"
    f8 f[ g] ees4 ees \bar "||"
}
altoNotesAnt = \relative d' {
    \global
    \keysig
    \voiceTwo
    ees2 des2 c2 des4. c4. f4 des2 bes c4.
    des\breve*5/16~ des4. bes4. c4 bes2
}    
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    aes2~ aes~ aes~ aes2.~ aes4~ aes2 g2
    aes4.~ aes\breve*5/16~ aes4. g4. aes4~ aes g4
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    c2 des aes f'4. g4. des4 bes2 ees2 aes4. f\breve*5/16
    des4. ees4.~ ees4~ ees2
}
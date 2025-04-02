\version "2.20.0"
%% \include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key ges \major
antiphon = "M"
psalmtone = "30"
psalmtonestruct = "32"
psalmnum = "Magnificat"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    You are Christ, the Son of the li -- ving "God. * " 
    Bles -- sed are you, Si -- mon, son of John.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    aes8[ bes] aes ces([ bes] aes4) bes8 ces[ bes] aes ges aes[ bes] ges aes4 \bar "'"
    des,8 ees des ces[ ees] \bar "" ges4 ges8 \bar "" f[ ges] ees \bar "" des4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    des4. ees\breve*9/16 des4.~ des4 bes4. ces4 des4. ces4. aes4
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    f4. ges\breve*9/16~ ges4. f4 ges4.~ ges4~ ges4.~ ges4. f4
}
bassNotesAnt = \relative c {
    \global
    \keysig
    des4. ces\breve*9/16 ges4. des'4 ges4. ees4 bes4. ces des4
}

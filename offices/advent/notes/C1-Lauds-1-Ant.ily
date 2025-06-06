\version "2.20.0"
\include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key aes \major
antiphon = "1"
psalmtone = "50"
psalmtonestruct = "33"
psalmnum = "Ps_93"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    The Lord is co -- ming with -- out de -- "ay. * " He will re -- veal things
    kept hid -- den and show him -- self to all man -- kind, al -- le -- lu -- ia.
}
sopNotesAnt = \relative fis' {

		
    
    
    r8 f8 f[ ees] f g aes bes aes4 g8 g4( f) \bar "," f8 ees f \bar "" aes[ bes]
    aes4 aes8[ c] \bar "" c[ bes] bes4 \bar "'" bes8 \bar "" aes[ bes] aes
    \bar "" g[ aes] g
    \bar "" bes[ aes] g \bar "" g4( f) \bar "'" ees8 \bar "" ees[ f]
    \bar "" f4 f4 \bar "||"
}
altoNotesAnt = \relative d' {

    
    
    s2 s8 ees2. c\breve*7/16 ees2.~ ees4~ ees4.
    c4. ees4. f4. des\breve*5/16 ees4 c2
}    
tenorNotesAnt = \relative g {

    
    
    c4 bes4.~ bes2. aes\breve*7/16~ aes2.~ aes4 g4. aes4. c4.
    bes4.~ bes\breve*5/16~ bes4~ bes aes
}
bassNotesAnt = \relative c {

    
    
    aes'4 g4. ees2. aes\breve*7/16 c,2. ees4~ ees4. f4.
    c4. des4. bes\breve*5/16 c4 f2
}
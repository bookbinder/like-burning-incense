\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key aes \major
antiphon = "3"
psalmtone = "21"
psalmtonestruct = "33"
psalmnum = ""
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
    Turn to us, O "Lord, * " make haste to help your peo -- ple.
}
sopNotesAnt = \relative e' {

    
    
    aes8[ g] f g f f4( ees) \bar "'" ees8 des[ f] f g4 f8 f[ ees] ees4 \bar "||"
}
altoNotesAnt = \relative c' {

    
    
    ees4. des4 c\breve*5/16 des2. bes2
}
tenorNotesAnt = \relative g {

    
    
    aes4.~ aes4~ aes\breve*5/16~ aes2.~ aes4 g4
}
bassNotesAnt = \relative c {

    
    
    c4. des4 aes\breve*5/16 bes4. des4. ees2
}

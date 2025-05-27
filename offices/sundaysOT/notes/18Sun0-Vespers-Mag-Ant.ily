\version "2.20.0"
%% \include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key f \minor
antiphon = "M"
psalmtone = "50"
psalmtonestruct = "33"
psalmnum = "Magnificat"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a
%% transposition after accounting for psalm tone
master-from-pitch = a
master-to-pitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    A great crowd ga -- thered a -- round Je --  sus, 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
    and they had no -- thing to eat. He called his dis -- ci -- ples and said:
    I have com -- pas -- sion on all these peo -- ple.
}
sopNotesAnt = \relative e' {
    
    
    r8 f8 aes[ g] g4 g8 aes g f[ ees] g[ f] f4 \bar "'" f8 g aes4 c bes8 aes g4 \bar "|"
    r8 g8 \bar "" aes([ g] f4) f8 g aes[ g] f f \bar "" ees([ f] g4)
    \bar "'" g4 g8[ aes]
    g \bar "" f[ ees c] c4 c8 \bar "" c[ ees] ees \bar "" f4 f \bar "||"
}
altoNotesAnt = \relative c' {
    
    
    c4 ees\breve*9/16 c2. ees2.~ ees4~ ees4 c\breve*10/16 ees\breve*9/16
    c2. bes4. des4 c
}
tenorNotesAnt = \relative g {
    
    
    aes4 bes\breve*7/16~ bes4 aes2.~ aes2. bes4~ bes aes\breve*10/16 g\breve*9/16
    aes2. g4. aes2
}
bassNotesAnt = \relative c {
    
    
    f4 ees\breve*7/16 g4 aes2. c,2. ees4~ ees f\breve*10/16 c\breve*9/16
    f2.~ f4.~ f2
}

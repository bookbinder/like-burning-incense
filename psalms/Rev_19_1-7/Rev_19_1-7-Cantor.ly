\version "2.24.3"

%% \header {
%%   psalm_title = "Canticle, See Revelation 19:1-7"
%%   psalm_subtitle = "The wedding of the lamb"
%% }

\include "/home/ryan/scores/like-burning-incense/lbi_defs.ily"


textA = \lyricmode {
  \set includeGraceNotes = ##t
  \set stanza = # "1. "
  Al -- le -- lu -- ia.
  \ll "Salvation, glory" and 
  \ll "pow'r to our" God: Al -- le -- lu -- ia  
  \ll "his judgments" are 
  \ll "honest and" true. Al -- le -- lu -- ia, Al -- le -- lu -- ia. 
}
textB = \lyricmode {
  \set includeGraceNotes = ##t
  \set stanza = # "2. "
  \set stanza = # "2. "
  Al -- le -- lu -- ia.
  \ll "Sing praise to our God," all \ll "you his" servants,
  Al -- le -- lu -- ia.
  \ll "all who worship him reverent" -- ly, \ll "great and" small.
  Al -- le -- lu -- ia, Al -- le -- lu -- ia.
}
textC = \lyricmode {
  \set includeGraceNotes = ##t
  \set stanza = # "3. "
  \set stanza = # "3. "
  Al -- le -- lu -- ia.
  \ll "The Lord our all-power" -- ful \ll "God is" King;
  Al -- le -- lu -- ia.
  \ll "let us rejoice, sing praise," and \ll "give him" glory.
  Al -- le -- lu -- ia, Al -- le -- lu -- ia.
}
textD = \lyricmode {
  \set includeGraceNotes = ##t
  \set stanza = # "4. "
  \set stanza = # "4. "
  Al -- le -- lu -- ia.
  \ll "The wedding feast of" the \ll "Lamb has be" -- gun,
  Al -- le -- lu -- ia.
  \ll "and his bride is" pre -- \ll "pared to" \ll "welcome him."
  Al -- le -- lu -- ia, Al -- le -- lu -- ia.
}

textE = \lyricmode {
  \set includeGraceNotes = ##t
  \set stanza = # "5. "
  \set stanza = # "5. "
  Al -- le -- lu -- ia.
  \ll "Glory to the Father and to the Son,
    and to" the Holy Spirit:
  Al -- le -- lu -- ia.
  \ll "as it was in the beginning, is now,
    and will be" for \ll "ever. A" -- men.
  Al -- le -- lu -- ia, Al -- le -- lu -- ia.
}


sopMusic = \relative e' {
  r8 g8 a[ b] a4 a \bar "|" g\breve fis8 a\breve b4 \bar "||"
  g8 g e d4 \bar "||"
  g\breve fis8 a\breve b4 \bar "||"
  r8 b8 b[ a] a g e g[ a] a[ g] g4 \bar "|."
}

\score {
  \new Staff ="up"
  <<
    \clef treble
    \key g \major
    \accidentalStyle forget
    \new Voice = "Soprano" { \oneVoice \global \sopMusic }
    \new Lyrics \lyricsto Soprano \textA
    \new Lyrics \lyricsto Soprano \textB
    \new Lyrics \lyricsto Soprano \textC
    \new Lyrics \lyricsto Soprano \textD
    \new Lyrics \lyricsto Soprano \textE
  >>
  
  \layout { 
    \context { 
      \Staff 
      \remove Time_signature_engraver 
    } 
  } 
}
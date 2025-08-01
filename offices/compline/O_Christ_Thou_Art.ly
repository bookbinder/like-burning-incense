\version "2.24.3"
\include "comp_defs.ily"

% \include "gregorian.ly"

% \paper {
%   top-system-spacing.basic-distance = #10
%   score-system-spacing.basic-distance = #20
%   system-system-spacing.basic-distance = #20
%   last-bottom-spacing.basic-distance = #10
% }

global = {
  \key c \major
  \cadenzaOn
  \autoBeamOff
}

\header {
  % title = "Hymn A"
}

sopMusic = \relative g' {
  r8 g8 g e g a b c a4 \bar "'"
  g8 b a c g \bar "" a[ b] b b4 \bar ","
  a8 \bar "" c d b[ a] c b c \bar "" a([ g] f4) \bar "'"
  a8 \bar "" a[ g]  c b[ c] a g f[ g] \bar "" g4 \bar "||"
  g8[ a g] \bar "" f4( g) \bar "||"
}
sopWordsA = \lyricmode {
    \set stanza = # "1. "
    O Christ, thou art our Light and Day,
    Who drive night's ter -- ror far a -- way!
    We know thee as the Light of Light,
    Il -- lu -- mi -- na -- ting mor -- tal sight.
  }
sopWordsB = \lyricmode {
    \set stanza = # "2. "
    And while our eyes their slum -- ber take,
    Still be the heart to thee a -- wake;
    Be thy right hand up -- held a -- bove
    Thy ser -- vants res -- ting in thy love.
  }
sopWordsC = \lyricmode {
    \set stanza = # "3. "
    O Fa -- ther, this we ask be done
    Through Je -- sus Christ, thine on -- ly Son,
    Who, with the Pa -- ra -- clete and thee,
    Now lives and reigns e -- ter -- nal -- ly.
    A -- men.
  }

altoMusic = \relative c' {
  c\breve*8/16 e\breve*7/16 d2.
  g\breve*7/16 f4~ f4. d\breve*9/16 b4 c4. a4( b)
}
altoWords = \lyricmode {}

tenorMusic = \relative e {
  e\breve*8/16 g\breve*7/16~ g2.~
  g\breve*7/16 a4~ a4.
  <<
    {f\breve*9/16 s4}
    \new Voice {\voiceTwo \stemUp \tieUp \noBreak \hideNotes d\breve*9/16~ \unHideNotes d4 \stemDown \tieDown}
  >>
  e4. d2
}
tenorWords = \lyricmode {}

bassMusic = \relative c {
  c\breve*8/16~ c\breve*7/16 g'2.
  e\breve*7/16 f4( d4.)~ d\breve*9/16 g,4~
  g4.~ g2
}
bassWords = \lyricmode {}


\score {
  \transpose g f {
  \new ChoirStaff <<
    % \new Lyrics = "sopranos" \with {
      % this is needed for lyrics above a staff
      % \override VerticalAxisGroup.staff-affinity = #DOWN
    % }
    \new Staff = "women" \with {\omit TimeSignature} <<
      \new Voice = "sopranos" {
        \voiceOne
        << \global \sopMusic >>
      }
      \new Lyrics \lyricsto "sopranos" \sopWordsA
      \new Lyrics \lyricsto "sopranos" \sopWordsB
      \new Lyrics \lyricsto "sopranos" \sopWordsC
      \new Voice = "altos" {
        \voiceTwo
        << \global \altoMusic >>
      }
    >>
    \new Lyrics = "altos"
    \new Lyrics = "tenors" \with {
      % this is needed for lyrics above a staff
      % \override VerticalAxisGroup.staff-affinity = #DOWN
    }
    \new Staff = "men" \with {\omit TimeSignature} <<
      \clef bass
      \new Voice = "tenors" {
        \voiceOne
        << \global \tenorMusic >>
      }
      \new Voice = "basses" {
        \voiceTwo << \global \bassMusic >>
      }
    >>
    % \new Lyrics = "basses"
    % \context Lyrics = "sopranos" \lyricsto "sopranos" \sopWords
    % \context Lyrics = "altos" \lyricsto "altos" \altoWords
    % \context Lyrics = "tenors" \lyricsto "tenors" \tenorWords
    % \context Lyrics = "basses" \lyricsto "basses" \bassWords
  >>
}
  }
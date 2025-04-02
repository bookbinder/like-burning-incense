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
  \key g \major
  \cadenzaOn
  \autoBeamOff
}

\header {
  % title = "Hymn A"
}

sopMusic = \relative g' {
  r8 g8 g a b a a g fis \bar "'"
  a \bar "" fis g \bar "" e d \bar "" g a g4 \bar "|"
  g8 \bar "" g a b a \bar "" a g \bar "" fis4 \bar "'"
  a8 \bar "" fis g \bar "" e d \bar "" fis[ g] e \bar "" e4 \bar "||"
  e8[ fis e] \bar "" d4( e4) \bar "||"
}
sopWordsA = \lyricmode {
    \set stanza = # "1. "
    Lord Je -- sus Christ a -- bide with us,
    Now that the sun has run its course;
    Let hope not be ob -- scured by night,
    But may faith's dark -- ness be as light.
  }
sopWordsB = \lyricmode {
  \set stanza = # "2. "
  Lord Je -- sus Christ grant us your peace,
  And when the trials of earth shall cease,
  Grant us the mor -- ning light of grace,
  The ra -- diant splen -- dor or your face.
  }
sopWordsC = \lyricmode {
  \set stanza = # "3. "
  Im -- mor -- tal, Ho -- ly, Three -- fold Light
  Yours be the king -- dom, pow'r, and might;
  All glo -- ry be e -- ter -- nal -- ly
  To you, life -- gi -- ving Tri -- ni -- ty! A -- men.
  }

altoMusic = \relative c' {
  r4 d2~ d2~ d4 e8 d8~ d2 r8 d2~ d2*5/4~ d4 r4 b2*5/4 b4.~ b4
  <a c>8[ <g b>]
}
altoWords = \lyricmode {}

tenorMusic = \relative e {
  r4 g2 a2 b4 c4~ c4 b4 r8 g2 fis4 a4*3/2 b4 c4
  b4*3/2 g4 e4. fis4 s4
}
tenorWords = \lyricmode {}

bassMusic = \relative c' {
  r4 g2 fis2 r2 g2
  r8 b,2 d2*5/4 r2 e2 s8 g,4. b4 a8[ e]
}
bassWords = \lyricmode {}


\score {
  \transpose g g {
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
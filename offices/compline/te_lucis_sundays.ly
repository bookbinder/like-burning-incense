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
  \key bes \major
  \cadenzaOn
  \autoBeamOff
}

\header {
  % title = "Hymn A"
}

sopMusic = \relative g' {
  r8 f8 a g bes bes bes a g \bar "'"
  g bes bes bes f g f ees4 \bar ","
  g8 g f bes a g f g[ a g] \bar "'"
  g8 g f ees f g f f4 \bar "||"
  f8[ g f] ees4( f) \bar "||"
}
sopWordsA = \lyricmode {
    \set stanza = # "1. "
    Te lú -- cis án -- te tér -- mi -- num,
    Ré -- rum Cre -- á -- tor, pó -- sci -- mus,
    Ut só -- li -- ta cle -- mén -- ti -- a
    sis præ -- sul ad cus -- tó -- di -- am.
  }
sopWordsB = \lyricmode {
  \set stanza = # "2. "
  Te cor -- da nos -- tra sóm -- ni -- ent,
  te per so -- pó -- rem sén -- ti -- ant,
  tu -- ám -- que sem -- per gló -- ri -- am
  vi -- cí -- na lu -- ce cón -- ci -- nant.
  }
sopWordsC = \lyricmode {
  \set stanza = # "3. "
  Vi -- tam sa -- lúb -- rem trí -- bu -- e,
  nos -- trum ca -- ló -- rem ré -- fi -- cie,
  tæ -- tram noc -- tis ca -- lí -- gi -- nem
  tu -- a col -- lús -- tret clá -- ri -- tas.
  }
sopWordsD = \lyricmode {
  \set stanza = # "4. "
  Præ -- sta, Pa -- ter om -- ní -- po -- tens,
  per Ie -- sum Chris -- tum Dó -- mi -- num
  qui te -- cum in per -- pé -- tu -- um
  re -- gnat cum San -- cto Spí -- ri -- tu. A -- men.
  }

altoMusic = \relative c' {
  r8 f8~ f[ g] f4 g4 d4 f2 ees4 bes4
  r8 d2~ d2~ d4 ees2~ ees4 c4 bes4.~ bes4 a
}
altoWords = \lyricmode {}

tenorMusic = \relative c' {
  r4 c4 d4~ d4 bes4~ bes2~ bes4 g4
  r8 bes2~ bes4 g4~ g4 bes2~ bes4 a4 d,4. ees4 c4
}
tenorWords = \lyricmode {}

bassMusic = \relative f {
  r4 f4 d'4 g,2 d2 ees2
  r8 r2 bes2~ bes4 ees4 g,4 ees4 f4 bes4. g4 f
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
      \new Lyrics \lyricsto "sopranos" \sopWordsD
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
#(set-global-staff-size 17)

\paper {
    %line-width = 7.3\in
    % print-page-number = #f
    % ragged-last = ##t 

  #(define fonts
    (make-pango-font-tree
     "Linux Libertine O"
     "Linux Biolinum O"
     "DejaVu Sans Mono"
     (/ staff-height pt 20)
   ))
    
        % scoreTitleMarkup = \markup {       
    %     \fill-line {
    %         \fontsize #2 \bold \fromproperty #'header:psalm_title  %% User-defined field
    %         \fontsize #2 \italic \fromproperty #'header:psalm_subtitle %% User-defined field
    %     }
    %   }

    
}

ll = {  
    \once \override LyricText.self-alignment-X = #LEFT
}
lr = {  
    \once \override LyricText.self-alignment-X = #RIGHT
}

lyricsize = #1.6
mylyricsize = { \override LyricText.font-size = #1.5 }


global = {  
    \cadenzaOn
    \set tieWaitForNote = ##t
    \autoBeamOff
    % \override Lyrics.LyricSpace.minimum-distance = #0.8
    \set forbidBreakBetweenBarLines = ##f
}

midi_instrument = { 
    \set Staff.midiInstrument = # "drawbar organ" 
  }
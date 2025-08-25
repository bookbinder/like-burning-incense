s/\\with {//
/instrumentName/,/<</d
/midi/i\    <<
s/Soprano \\text/Soprano { \\override LyricText.font-size = \\lyricsize\n                                      \\text }/
s/\\midi/%% &/
s/treble/& \\antKeysig/
s/\\sopNotesAnt/\\mark \\markup { \\small \\psalmtone } \\global \\oneVoice &/
/layout/a\    ragged-last = ##t

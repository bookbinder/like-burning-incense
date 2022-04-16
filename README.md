# About

“Like Burning Incense” (LBI) is the name of an antiphonary for the Liturgy of
the Hours (Divine Office or Breviary) created for the Monastery of the Blessed
Sacrament in Michigan. This repository is a
partial digitization of that project. This repository contains Lauds and
Vespers (Morning Prayer and Evening Prayer) from LBI where each antiphon and
accompanying Psalm/Canticle is completely written out for the organist, so that
the organist doesn’t need to memorize the two harmonizations for all 50+ psalm
tones. Because the music for a chanted Psalm is just a single psalm-tone
repeated throughout, the computer can simply repeat the psalm-tone the required
number of times, saving the need to write out each psalm accompaniment by hand.

# The Original Project

The original project is contained in the pdf files under
`pdf/originalAntiphonary`.

Information about the original project:

Monastery of the Blessed Sacrament
Cloistered Dominican Nuns
29575 Middlebelt Road
Farmington Hills, MI, 48018

NAME: We have given the name LIKE BURNING INCENSE to this Antiphonary.

CONTENTS: Musical settings for all the texts of the four-volume Breviary (with
the exception of the Office of Readings).

COMPOSER: A trappist monk who is extraordinarily gifted. He wishes to remain in
anonymity.

STYLE OF MUSIC: English chant form.

PSALM TONES: These are indicated at the end of each Antiphon by a little
musical formula or pattern. A sheet explaining the method of pointing the text
of the psalm as well as how to interpret the psalm-tone pattern is enclosed.

PRICE: There is no charge for this music. Some communities have wished to offer
donations to help with the expenses of printing and mailing, etc. These we
accept with deep gratitude, but we do not ask any monetary return for what we
are so privileged to share.

PSALMS: We do not print the psalms. All of us simply use our Breviaries for the
singing of the psalms. Here we marked the accents when we received our
Breviaries. However, after a rather short time, we found that it is not
necessary to mark all the accents -- one becomes so used to them. From there on
we marked only the “unusual” accents. (Please see the Psalm Tone explanation
sheet regarding these.)

OUR WORK ON THIS PROJECT: As you will notice, we have been graciously given the
copyright on this music. Our aim in accepting this copyright is to protect the
music from being taken over, perhaps by some rather unscrupulous publisher.
Father does not want his music in the hands of a publisher to be sold. Father
has sent on to us all his manuscript copies of the music. Our work is to retype
texts AND notation, make masters for printing, and then collate and send on the
music to all on our mailing list. This work must be fitted into our monastic
schedule; and so progress is rather slow. We would want all of you to
understand our situation in this regard.

# Structure of the Repository

Files for this repository were created using Lilypond and LaTeX. Given the file
name `A2-Vespers-1-Ant-Organ.ly`, the “A” stands for week 1 of the Psalter (B,
C, and D would be weeks 2, 3, and 4). The “2” following “A” stands for the day,
where Day 1 is Sunday, Day 2 is Monday, etc., through Day 7, Saturday. Day 0 is
the first Vespers of the week, or Saturday night. The next part of the name
indicates either Lauds or Vespers. The “1” following Lauds or Vespers can be
either “1”, “2”, “3”, “Ben” (Benedictus), or “Mag” (Magnificat), depending on
which of the four psalms/canticles for that office is found in the file. Next is
either “Ant” or “Psalm”, and finally “Organ” or “Cantor”. So the file above
contains the organ score for the first antiphon of Monday Evening Prayer, Week
1. The file `A2-Vespers-1-Ant-Cantor.ly` would contain the cantor’s score for
the antiphon. And the file `A2-Vespers-1-Psalm-Organ.ly` would contain the
organ score for the psalm attached to the antiphon. These files just contain
the scores. The notes are imported. For the antiphon, the notes are found in
the `notes` subdirectory, and for the psalm, the notes are found in the
`psalmtones/notes` directory. Separating the notes from the scores allows the
notes to be imported into different files. More information on the directory
structure:

- the `pdf` directory contains pdfs ready to be printed. There are organ scores
  and cantor scores.
- `psalms` directory: contains folders of all the psalms and canticles by
  title. Each folder contains a `.txt` file of the text of the psalm and an
  `.ily` file containing the organ score. Because all the LBI psalm tones are
  two lines long, the structure of the organ score is constant no matter which
  psalm tone is being used. However, the text of the psalm needs to be pointed
  differently depending on the psalm tone. There are seven different ways of
  pointing the text depending on which psalm tone is being used. If the first
  line of the psalm tone has a total of 3 beats, and the second line a title of
  2 beats, then the pointed psalm text can be found in the `32` subfolder of
  the given psalm. Given the different feasts and commons, any given psalm
  could end up being pointed in different ways throughout the liturgical year,
  since the psalm tone for the psalm depends on the antiphon.
- `psalmtones` directory: contains the psalm tones. The root portion of the
  folder contains the organ scores for the tones. The notes for the tones are
  in the `notes` subdirectory. The `AltogetherNew` lytex files produce
  printouts of all the tones.  There is a pdf of psalm tones organized by
  psalm-tone number (something I assigned), and there is a pdf of the psalm
  tones organized by the structure of the tone. Thus all the tones that have 3
  beats in the first line and  3 beats in the second line are grouped together.
  This is helpful because the antiphons in the original project are followed by
  an unreferenced psalm tone. It is easier to find the right psalm tone when
  you know you are looking for--say, a tone with 3 beats in both lines.
- the `scripts` directory contains scripts that were supposed to automate
  certain things
- the `skel` director contains “skeleton” files, or templates when creating new
  antiphon or psalm files
- `week1` contains Week 1 of the psalter, week2 contains Week 2, etc. There is
  also a lytex file to build the score for the whole week using
  `lilypond-book`. In the future, folders such as `Lent` or `Christmas` will be
  added.
- the root directory contains a `Makefile` to facilitate building the project.
  It also has `lbi_defs.ily` which contains project-wide default settings.

I’m a hobbyist so this is probably pretty hacky. A few things have made it
easier. I use the editor Vim. If I want to work on, say, the first antiphon and
psalm for Tuesday Evening Prayer, Week 3, then I need to open several files:
organ scores for the antiphon and psalm, notes file for the antiphon, and text of
the psalm for pointing. I wrote a function to handle that. So I enter `:Lbi
C3-Vespers-1` and it opens the necessary files for editing.

```
function! Lbi(office)
    let s:antfile =  "/lbi/week3/".fnameescape(a:office)."-Ant-Organ.ly"
    let s:psalmfile =  " /lbi/week3/".fnameescape(a:office)."-Psalm-Organ.ly"
    let s:notesfile =  " /lbi/week3/notes/".fnameescape(a:office)."-Ant.ily"
    execute "args ".s:antfile.s:psalmfile.s:notesfile
endfunction
command! -nargs=1 Lbi call Lbi(<f-args>)
```

# To do

- finish the 4-week psalter
- proper of seasons (with directory structure)
- proper of saints (with directory structure)

If you are interested in helping, please let me know. This is a resource that
could be valuable for many religious communities. Some communities are getting
smaller and may not have a good keyboardist. By writing out all the
accompaniments, someone with only a basic knowledge of the keyboard would be
able to accompany. Everything can be sight-read. It can also be valuable for
parishes or small groups that would like to chant the psalms on certain
occassions.

Apparently a new translation of the Liturgy of the Hours will be coming out in
several years. At that point I would need to alter the individual files in the
repository with the new translations. The musical accompaniment to the
antiphons would need to be altered in places too. I’m not sure if I would be
able to do that very well. But the structure of the project would remain the
same, so hopefully it won’t present too great a challenge.

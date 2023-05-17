import itertools as it

def filenames(weeks=list("ABCD")):
    """Return two lists of file names. The first is file names for the scores
    directory. The second is file names for the notes subdirectory. The input
    gives the prefixes for the file names."""

    days = "01234567"
    offices = ["Lauds", "Vespers"]
    ants = ["1", "2", "3", "Ben", "Mag"]
    kind = ["Ant", "Psalm"]
    performer = ["Organ", "Cantor"]

    scoresdir = sorted([
        '-'.join(z).replace('-', '', 1) + '.ly'
        for z in list(it.product(weeks, days, offices, ants, kind, performer))
        if not (z[1] == '0' and z[2] == 'Lauds')
        if not (z[1] == '7' and z[2] == 'Vespers')
        if not (z[2] == 'Lauds' and z[3] == 'Mag')
        if not (z[2] == 'Vespers' and z[3] == 'Ben')
        if not (z[4] == 'Psalm' and z[5] == 'Cantor')
        if not (''.join(weeks) == "ABCD" and z[1] in "01" and z[3] in 'BenMag')
    ])
    notesdir = sorted(
        list(set(['-'.join(z.split('-')[:3]) + '.ily' for z in scoresdir]))
    )
    return scoresdir, notesdir

# # For example, in Lent:
# scoresdir, notesdir = filenames(["Lent" + z for z in "ABCDE"])
# (Ordinary time in the 4-week Psalter is the default list("ABCD"))

def filenames2(weeks=list("ABCD")):
    "Same as above but only week/day/office. Produces A0-Vespers"
    days = "01234567"
    offices = ["Lauds", "Vespers"]
    return [f"{z[0]}{z[1]}-{z[2]}"
            for z in list(it.product(weeks, days, offices))
            if not (z[1] == '0' and z[2] == 'Lauds')
            if not (z[1] == '7' and z[2] == 'Vespers')]

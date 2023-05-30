import itertools as it

def filenames(
    weeks=list("ABCD"),
    days="01234567",
    offices=["Lauds", "Vespers"],
    ants=["1", "2", "3", "Ben", "Mag"],
    kind=["Ant", "Psalm"],
    performer=["Organ", "Cantor"]
):
    """
    Return three lists of file names. The first two, lyFiles and lytexFiles,
    go in the scores directory. The third is file names for the notes
    subdirectory. The input gives the prefixes for the file names.
    For example, in Lent:
    lyFiles, lytexFiles, ilyFiles = filenames(["Lent" + z for z in "ABCDE"])
    """

    # .ly files for the scores directory
    # e.g. A0-Vespers-1-Ant-Cantor.ly
    lyFiles = sorted([
        '-'.join(z).replace('-', '', 1) + '.ly'
        for z in list(it.product(weeks, days, offices, ants, kind, performer))
        if not (z[1] == '0' and z[2] == 'Lauds')
        if not (z[1] == '7' and z[2] == 'Vespers')
        if not (z[2] == 'Lauds' and z[3] == 'Mag')
        if not (z[2] == 'Vespers' and z[3] == 'Ben')
        if not (z[4] == 'Psalm' and z[5] == 'Cantor')
        if not (''.join(weeks) == "ABCD" and z[1] in "01" and z[3] in 'BenMag')
    ])

    # .lytex files for the scores directory
    # e.g. A0-Vespers-Organ.lytex
    lytexFiles = sorted([
        f"{z[0]}{z[1]}-{z[2]}" for z in list(it.product(weeks, days, offices))
        if not (z[1] == '0' and z[2] == 'Lauds')
        if not (z[1] == '7' and z[2] == 'Vespers')
    ])

    # .ily files for the notes subdirectory
    ilyFiles = sorted(
        list(set(['-'.join(z.split('-')[:3]) + '.ily' for z in lyFiles]))
    )
    return lyFiles, lytexFiles, ilyFiles


def filenamesSunOT():
    """
    Same as above but customized for the Gospel Canticles for Sundays in
    Ordinary Time.
    Return three lists of file names. The first two, lyFiles and lytexFiles,
    go in the scores directory. The third is file names for the notes
    subdirectory.
    """

    weeks = ["1Sun", "2Sun", "3Sun", "4Sun", "5Sun", "6Sun", "7Sun", "8Sun",
            "9Sun", "10Sun", "11Sun", "12Sun", "13Sun", "14Sun", "15Sun",
            "16Sun", "17Sun", "18Sun", "19Sun", "20Sun", "21Sun", "22Sun",
            "23Sun", "24Sun", "25Sun", "26Sun", "27Sun", "28Sun", "29Sun",
            "30Sun", "31Sun", "32Sun", "33Sun"]
    days = "01"
    offices = ["Lauds", "Vespers"]
    ants = ["Ben", "Mag"]
    kind = ["Ant", "Psalm"]
    performer = ["Organ", "Cantor"]

    # .ly files for the scores directory
    # e.g. 1Sun0-Vespers-1-Ant-Cantor.ly
    lyFiles = sorted([
        '-'.join(z).replace('-', '', 1) + '.ly'
        for z in list(it.product(weeks, days, offices, ants, kind, performer))
        if not (z[1] == '0' and z[2] == 'Lauds')
        if not (z[1] == '7' and z[2] == 'Vespers')
        if not (z[2] == 'Lauds' and z[3] == 'Mag')
        if not (z[2] == 'Vespers' and z[3] == 'Ben')
        if not (z[4] == 'Psalm' and z[5] == 'Cantor')
        if not (''.join(weeks) == "ABCD" and z[1] in "01" and z[3] in 'BenMag')
    ])

    # .lytex files for the scores directory
    # e.g. 1Sun-Organ.lytex
    lytexFiles = sorted([
        f"{z[0]}-{z[1]}.lytex" for z in list(it.product(weeks, performer))
    ])

    # .ily files for the notes subdirectory
    ilyFiles = sorted(
        list(set(['-'.join(z.split('-')[:3]) + '.ily' for z in lyFiles]))
    )
    return lyFiles, lytexFiles, ilyFiles

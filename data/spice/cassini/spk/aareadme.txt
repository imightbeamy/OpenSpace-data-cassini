 
CASSINI SPK files
===========================================================================
 
     This ``aareadme.txt'' file describes contents of the kernels/spk
     directory of the CASSINI SPICE data server. It was last modified on
     September 11, 2007. Contact Chuck Acton (818-354-3869,
     Chuck.Acton@jpl.nasa.gov), or Boris Semenov (818-354-8136,
     Boris.Semenov@jpl.nasa.gov) if you have any questions regarding the
     data files provided in this directory.
 
 
Brief summary
--------------------------------------------------------
 
     This directory contains the SPICE SP-Kernel files for the CASSINI
     orbiter spacecraft and probe trajectory and SP-Kernel file with
     planetary and satellite ephemerides used by the CASSINI project. All
     files are in IEEE binary format. Most of the files in this directory
     have been automatically copied from the CASSINI Project Database
     (DOM.)
 
 
SPK File Naming Scheme
--------------------------------------------------------
 
     This section describes the CASSINI SPK file naming convention. It is
     divided into two parts, one for files created before May, 2003 and one
     for files created after that time.
 
 
SPKs Produced by CASSINI NAV Team after May 2003.
 
     The SPK files produced by the CASSINI NAV team, after May 2003, are
     named as follows:
 
        [DeliveryDate][V][T]_[Description]_[StartEvent]_[EndEvent].[Ext]
 
     where:
 
           [DeliveryDate]   Approximate date that the file was delivered
                            (YYMMDD);
 
           [V]              File version (optional, used only when
                            applicable). It is specified as consecutive
                            letters ``A'', ``B'', ``C'', etc. for each
                            corresponding new version of the same file.
 
           [T]              Type of the data in the file (optional, used
                            only when applicable). If present, it is a
                            single letter indicating predict trajectory
                            file (``P'') or reconstructed trajectory file
                            (``R'').
 
           [Description]    File description. This field can be ``SK'' for
                            orbiter spacecraft trajectory SPK file, ``OPK''
                            for orbiter and probe trajectory SPK file,
                            ``PE'' for planetary ephemeris SPK file, ``SE''
                            for major satellite ephemeris SPK file, ``RE''
                            for minor satellite ephemeris SPK file,
                            ``IRRE'' for outer irregular satellite
                            ephemeris SPK file, or ``SCPSE'' for a merged
                            S/C, Planetary and Satellite Ephemerides file.
                            More file descriptors can be made up when
                            necessary. Normally the new descriptors are
                            limited to five characters.
 
           [StartEvent]     Identifier of the file coverage start event.
                            This field is a string consisting of two
                            elements, <YY>, and <DOY>, where <YY>
                            represents the last two digits of the year in
                            which the event started and <DOY> is the day of
                            the year. ``NA'' indicates not applicable.
 
           [EndEvent]       Identifier of the file coverage end event. This
                            field follows the same rules as the
                            [StartEvent] field.
 
           [Ext]            Standard SPICE extension for SPK files: ``bsp''
                            for binary SPK files, ``xsp'' or ``tsp'' for
                            transfer format SPK files.
 
     For example, the file:
 
        040901AP_SK_04192_05058.bsp
 
     is a binary SPK file delivered on 040901 (Sept. 1, 2004). It is the
     first version (A) of a Predicted SPK file covering from 2004 doy 192
     to 2005 doy 058.
 
     Note that except where indicated, all file name components are
     required. The total number of characters in filenames should not
     exceed 30.
 
     Also note that a few reconstructed trajectory files delivered in
     2005-2006 were named incorrectly. They had the version ([V]) and type
     ([T]) tokens swapped. These files are:
 
        000331RB_SK_V1P32_V2P12.bsp
        050105RB_SCPSE_04247_04336.bsp
        050414RB_SCPSE_05034_05060.bsp
        050513RB_SCPSE_05097_05114.bsp
        061129RB_SCPSE_06292_06308.bsp
 
 
SPKs Produced by CASSINI NAV Team prior to May 2003.
 
     The SPK files produced by the CASSINI NAV team, prior to May 2003, are
     named as follows:
 
        [DeliveryDate][V][T]_[Description]_[StartEvent]_[EndEvent].[Ext]
 
     where:
 
           [DeliveryDate]   Approximate date that the file was delivered
                            (YYMMDD);
 
           [V]              File version (optional, used only when
                            applicable). It is specified as consecutive
                            letters ``A'', ``B'', ``C'', etc. for each
                            corresponding new version of the same file.
 
           [T]              Type of the data in the file (optional, used
                            only when applicable). If present, it is a
                            single letter indicating predict trajectory
                            file (``P'') or reconstructed trajectory file
                            (``R'').
 
           [Description]    File description. This field can be ``SK'' for
                            orbiter spacecraft trajectory SPK file, ``OPK''
                            for orbiter and probe trajectory SPK file,
                            ``PE'' for planetary ephemeris SPK file, or
                            ``SE'' for satellite ephemeris SPK file. More
                            file descriptors can be made up when necessary.
                            Normally the new descriptors are limited to two
                            characters. More than two characters are
                            allowed in cases where ``NA'' is placed as the
                            [StartEvent] and [EndEvent] fields.
 
           [StartEvent]     Identifier of the file coverage start event.
                            This field is a string consisting of three
                            sub-elements -- <P>, <P,M>, and <D> --
                            described below. This field can also be set to
                            ``NA'' value when this field is not applicable
                            or to ``YYMMDD'' value to indicate start of the
                            coverage for planetary and satellite
                            ephemerides.
 
           <P>              is a descriptor indicating planetary or
                            satellite swingby. It can have any of the
                            following values: ``L'' -- Launch, ``V1'' --
                            Venus1, ``V2'' -- Venus2, ``E'' -- Earth, ``J''
                            -- Jupiter, ``S'' -- Saturn, or the satellite's
                            first letter or first two letters (in cases
                            where there is a conflict) for the satellite
                            tour.
 
           <P,M>            is used to denote timing in reference to a
                            planetary or satellite swingby date. Use P for
                            plus (after the swingby) or M for minus (before
                            the swingby).
 
           <D>              is the number of days from closest approach
                            date.
 
           [EndEvent]       Identifier of the file coverage end event. This
                            field follows the same rules as the
                            [StartEvent] field.
 
           [Ext]            Standard SPICE extension for SPK files: ``bsp''
                            for binary SPK files, ``xsp'' or ``tsp'' for
                            transfer format SPK files.
 
     For example, the file:
 
        971026AP_SK_LP15_SP0.bsp
 
     is a binary SPK file delivered on 971026 (Oct. 26, 1997.) It is the
     first version (A) of a Predicted SPK file covering from Launch plus 15
     days to Saturn plus 0 days (or SOI).
 
 
Other SPKs
 
     The SPKs that don't follows the naming scheme described in the
     previous section are special products created by NAV Team or NAIF.
 
     Some of these files -- the ones with the names starting with ``de''
     and ``sat'' -- are planetary and satellite ephemerides SPK files.
 
     For the others, the file naming scheme is TBD.
 
 
Supplementary/Meta Information Files
--------------------------------------------------------
 
     The only kind of supplementary/meta information files provided with
     the SPK files are detached label files.
 
 
Label Files
 
     Detached label files have the same names as the corresponding SPK
     files with the additional extension ".lbl" appended at the end.
 
     The labels file do NOT have any specific structure and they contain
     rather ``raw'' information combined from the following sources: file
     SFDU label (if such was present), contents of the comment area, and
     summary of the file contents produced by BRIEF utility program. Most
     of these labels were created automatically "on the fly" and will be
     re-processed before final data archiving with the PDS.
 

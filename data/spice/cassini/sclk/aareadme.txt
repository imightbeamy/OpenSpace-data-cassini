 
CASSINI SCLK files
===========================================================================
 
     This ``aareadme.txt'' file describes contents of the kernels/sclk
     directory of the CASSINI SPICE data server. It was last modified on
     January 22, 2003. Contact Chuck Acton (818-354-3869,
     Chuck.Acton@jpl.nasa.gov), Lee Elson (818-354-4223,
     Lee.Elson@jpl.nasa.gov), or Boris Semenov (818-354-8136,
     Boris.Semenov@jpl.nasa.gov) if you have any questions regarding the
     data files provided in this directory.
 
 
Brief summary
--------------------------------------------------------
 
     This directory contains the SPICE SCLK files for the CASSINI
     spacecraft on-board clock. All files are text files following the UNIX
     end-of-line convention (lines terminated by <LF> only.) Most of the
     files in this directory have been automatically copied from the
     CASSINI Project Database (DOM.)
 
 
SCLK File Naming Scheme
--------------------------------------------------------
 
     This section describes the CASSINI SCLK file naming convention.
 
 
SCLKs Produced by CASSINI SCO Team
 
     The SCLK files produced by the CASSINI SCO team are named as follows:
 
        [cas][VVVVV].[Ext]
 
     where:
 
           [cas]     Constant prefix indicating CASSINI SCLK file;
 
           [VVVVV]   File Version. This version is the same as the version
                     of the TMOD SCLKvSCET file number from which the SCLK
                     file was generated;
 
           [Ext]     Standard SPICE extension for SCLK files: ``tsc'' text
                     SCLK files.
 
 
Supplementary/Meta Information Files
--------------------------------------------------------
 
     The only kind of supplementary/meta information files provided with
     the SCLK files are detached label files.
 
 
Label Files
 
     Detached label files have the same names as the corresponding SCLK
     files with the additional extension ".lbl" appended at the end.
 
     The labels file do NOT have any specific structure and they contain
     rather ``raw'' information extracted from a single source -- the
     file's SFDU label. Most of these labels were created automatically "on
     the fly" and will be re-processed before final data archiving with the
     PDS.
 

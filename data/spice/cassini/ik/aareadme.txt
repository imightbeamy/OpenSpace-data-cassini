 
CASSINI IK files
===========================================================================
 
     This ``aareadme.txt'' file describes contents of the kernels/ik
     directory of the CASSINI SPICE data server. It was last modified on
     January 22, 2003. Contact Chuck Acton (818-354-3869,
     Chuck.Acton@jpl.nasa.gov), Lee Elson (818-354-4223,
     Lee.Elson@jpl.nasa.gov), or Boris Semenov (818-354-8136,
     Boris.Semenov@jpl.nasa.gov) if you have any questions regarding the
     data files provided in this directory.
 
 
Brief summary
--------------------------------------------------------
 
     This directory contains the SPICE I-kernel files for the CASSINI
     spacecraft science instruments. All files are text files following the
     UNIX end-of-line convention (lines terminated by <LF> only.) Most of
     the files in this directory have been automatically copied from the
     CASSINI Project Database (DOM.) The following files are present in
     this directory:
 
           cas_caps_v##       Cassini Plasma Spectrometer (CAPS) IK file
                              containing references to mounting alignment,
                              internal and FOV geometry, and mode timing;
 
           cas_cda_v##        Cassini Cosmic Dust Analyzer (CDA) IK file
                              containing references to mounting alignment,
                              internal and FOV geometry, and mode timing;
 
           cas_cirs_v##       Cassini Composite Infrared Spectrometer
                              (CIRS) IK file containing references to
                              mounting alignment, internal and FOV
                              geometry, and mode timing;
 
           cas_inms_v##       Cassini Ion and Neutral Mass Spectrometer
                              (INMS) IK file containing references to
                              mounting alignment, internal and FOV
                              geometry, and mode timing;
 
           cas_iss_v##        Cassini Imaging Science Subsystem (ISS) IK
                              file containing references to mounting
                              alignment, internal and FOV geometry, and
                              mode timing;
 
           cas_mag_v##        Cassini Magnetometer (MAG) IK file containing
                              references to mounting alignment, internal
                              and FOV geometry, and mode timing;
 
           cas_mimi_v##       Cassini Magnetospheric Imaging Instrument
                              (MIMI) IK file containing references to
                              mounting alignment, internal and FOV
                              geometry, and mode timing;
 
           cas_radar_v##      Cassini RADAR (RADAR) IK file containing
                              references to mounting alignment, internal
                              and FOV geometry, and mode timing;
 
           cas_rpws_v##       Cassini Radio and Plasma Wave Science (RPWS)
                              IK file containing references to mounting
                              alignment, internal and FOV geometry, and
                              mode timing;
 
           cas_rss_v##        Cassini Radio Science Subsytem (RSS) IK file
                              containing references to mounting alignment,
                              internal and FOV geometry, and mode timing;
 
           cas_sru_v##        Cassini Stellar Reference Unit (SRU)
                              detectors IK file containing references to
                              mounting alignment, internal and FOV
                              geometry, and mode timing;
 
           cas_uvis_v##       Cassini Ultraviolet Imaging Spectograph
                              (UVIS) IK file containing references to
                              mounting alignment, internal and FOV
                              geometry, and mode timing;
 
           cas_vims_v##       Cassini Visible and Infrared Mapping
                              Spectrometer (VIMS) IK file containing
                              references to mounting alignment, internal
                              and FOV geometry, and mode timing;
 
           release            Text file documenting release notes and
                              required frame kernel versions; see the
                              Release Notes section below for details.
 
 
IK File Naming Scheme
--------------------------------------------------------
 
     This section describes the CASSINI IK file naming convention.
 
     The IK files produced by the CASSINI IO team are named as follows:
 
        [cas]_[IIIII]_v[VV].[Ext]
 
     where:
 
           [cas]     Constant prefix indicating CASSINI IK file;
 
           [IIIII]   Instrument or subsystem acronym;
 
           [VV]      File Version;
 
           [Ext]     Standard SPICE extension for IK files: ``ti'' text
                     instrument kernels.
 
 
Release Notes and History
--------------------------------------------------------
 
     A release history containing previous sets of instrument kernels as
     well as documentation describing which frame kernel version was
     distributed with the set is present in this directory.
 
 
release.txt
 
     This text file contains a release history, documenting major changes
     and references to frame kernel version, for each set of instrument
     kernels. The contents of the file are structured as follows:
 
        current: (cas_v33.tf)
 
           Date: March 12, 2002
           Notes:
            -- Added CASSINI_CIRS_FPB mode timing keywords
               to cas_cirs_v08.ti.
 
        release.05: (cas_v33.tf)
 
           Date: February 20, 2002
           Notes:
            -- The updated frame kernel should be used with
               this I-kernel set.
 
           Date: January 28, 2002
           Notes:
            -- Added CASSINI_CIRS_FPB FOV definition to
               cas_cirs_v07.ti.
            -- Corrected CASSINI_CIRS_FP3 and CASSINI_CIRS_FP4
               FOV definitions.
            -- N0052 is now available, and users requiring
               GETFOV or getfov_c should update their toolkit
               installations.
 
     The label ``current:'' indicates the release notes for the set
     currently in kernels/ik. The label ``release.##:'' indicates the
     release notes for the set stored in the directory
     kernels/ik/release.##. The frame kernel that appears in parentheses
     after the label is the name of the frame kernel that should be used
     with this set. As additions and revisions are made to the frame
     kernel, compatibility with a future and previous I-kernel sets may be
     an issue.
 
 
release.##
 
     This directory contains all of the I-kernels from a particular (##)
     release set, as documented in kernels/ik/release.txt.
 

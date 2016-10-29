 
CASSINI EK files
==============================================================================
 
   This ``aareadme.txt'' file describes contents of the kernels/ek directory
   of the CASSINI SPICE data server. It was last modified on March 14, 2005.
   Contact Chuck Acton (818-354-3869, Chuck.Acton@jpl.nasa.gov), Lee Elson
   (818-354-4223, Lee.Elson@jpl.nasa.gov), or Boris Semenov (818-354-8136,
   Boris.Semenov@jpl.nasa.gov) if you have any questions regarding this data.
 
 
Brief summary
----------------------------------------------------------
 
   This directory contains the SPICE Event Kernel (EK) files for the CASSINI
   spacecraft. All files are in IEEE binary format and suitable for ftp binary
   transfer to use on UNIX workstations and MACs. For use on PC's (Linux and
   Windows) copy the transfer format file (the extension starts with "x" as in
   ".xes") in ASCII mode. Most of the files in this directory have been
   automatically copied from the CASSINI Project Database (DOM.)
 
 
   The following CASSINI EK files files are present in this directory.
 
                           Spacecraft Sequence EK files have two forms:
                           Background Sequence and Status files and Noise
                           files. Sequence EK files always have the filename
                           extension ".bes". The transfer form of these files
                           has the extension ".xes".
 
                           Command Dictionary EK files always have the
                           filename extension ".bdb". The transfer form of
                           these files has the extension ".xdb".
 
                           Science Plan EK files always have the filename
                           extension ".bep". The transfer form of these files
                           has the extension ".xep".
 
                           Experimenter's Notebook EK files always have the
                           filename extension ".ben". The transfer form of
                           these files has the extension ".xen".
 
 
EK File Naming Scheme
----------------------------------------------------------
 
   This section describes the CASSINI EK file naming convention.
 
 
Spacecraft Sequence EK files
 
 
   The CASSINI spacecraft Sequence EK files naming schema is as follows:
 
           [Seqnum]_[Type]_[p][v].bes
           [Seqnum]_[Type]_[p][v].xes
 
 
   where:
 
              [Seqnum]   is the SVT sequence number (example: "C27");
 
              [Type]     is either "cmd" or "status";
 
              [p]        is either "p" for predicted Events based upon
                         completed sequence or "v" for flown events with
                         changes to sequence incorporated;
 
              [v]        is the version string taken from PEF filename verison
                         (example "a");
 
 
Spacecraft Sequence EK files
 
 
   The CASSINI spacecraft Sequence EK files naming schema is as follows:
 
           [Seqnum]_[Id]noise_[v].bes
           [Seqnum]_[Id]noise_[v].xes
 
   where:
 
              [Seqnum]   is the SVT sequence number (example: "C27");
 
              [Id]       is the seqgen subsystem id (example "73");
 
              [v]        is the version string taken from the XML input file
                         version (example "a");
 
 
Spacecraft Dictionary EK files
 
 
   The CASSINI Dictionary EK files naming schema is as follows:
 
           [Ver].bdb
           [Ver].xdb
 
   where:
 
              [Ver]   is the command database version (example "7D");
 
 
Spacecraft Science Plan EK files
 
 
   The CASSINI Science Plan EK files naming schema is as follows:
 
           [Seqnum]_[v].bep
           [Seqnum]_[v].xep
 
   where:
 
              [Seqnum]   is the SVT sequence number (example: "C27");
 
              [v]        is the version string (example "a");
 
 
Spacecraft Experimenter's Notebook EK files
 
 
   The CASSINI Experimenter's Notebook EK files naming schema is as follows:
 
           [Seqnum]_[v].ben
           [Seqnum]_[v].xen
 
   where:
 
              [Seqnum]   is the SVT sequence number (example: "C27");
 
              [v]        is the version string (example "a");
 

KPL/FK
 
 
Cassini Spacecraft Frame Definitions Kernel
==============================================================================
 
   This frame kernel contains the Cassini spacecraft, science instrument, and
   communication antennae frame definitions.
 
 
Version and Date
----------------------------------------------------------
 
   The TEXT_KERNEL_ID stores version information of loaded project text
   kernels. Each entry associated with the keyword is a string that consists
   of four parts: the kernel name, version, entry date, and type. For example,
   the ISS I-kernel might have an entry as follows:
 
           TEXT_KERNEL_ID += 'CASSINI_ISS V0.0.0 29-SEPTEMBER-1999 IK'
                                  |          |         |            |
                                  |          |         |            |
              KERNEL NAME <-------+          |         |            |
                                             |         |            V
                             VERSION <-------+         |       KERNEL TYPE
                                                       |
                                                       V
                                                  ENTRY DATE
 
   Cassini Frame Kernel Version:
 
           \begindata
 
           TEXT_KERNEL_ID += 'CASSINI_FRAMES V2.7.0 10-JULY-2000 FK'
 
           \begintext
 
   Version 2.7 -- July 7, 2000 -- Scott Turner
 
            --   Added the following frame entries RPWS requested:
                 CASSINI_RPWS_EXPLUS, CASSINI_RPWS_EXMINUS,
                 CASSINI_RPWS_EZPLUS, CASSINI_RPWS_LP to the prototype frame
                 section. See [14] for details.
 
            --   Changed the following frame names: CASSINI_HGA_X ->
                 CASSINI_XBAND, CASSINI_HGA_S -> CASSINI_SBAND, CASSINI_HGA_KA
                 -> CASSINI_KABAND, CASSINI_HGA_KU -> CASSINI_KUBAND.
 
            --   Halved the Euler angles associated with the CASSINI_CIRS_FP3
                 and CASSINI_FP4 frames. See [15] for details.
 
   Version 2.6 -- June 26, 2000 -- Scott Turner
 
            --   The RSS frame entries in the prototype section were renamed
                 to HGA based frames.
 
            --   Removed the CASSINI_MAG frame and replaced it with the
                 CASSINI_MAG_PLUS and CASSINI_MAG_MINUS frames.
 
   Version 2.5 -- April 2, 2000 -- Scott Turner
 
            --   Added CASSINI_VIMS.
 
            --   Added CASSINI_UVIS_FUV, CASSINI_UVIS_EUV,
                 CASSINI_UVIS_FUV_OCC, CASSINI_UVIS_EUV_OCC, CASSINI_UVIS_HSP,
                 and CASSINI_UVIS_HDAC.
 
            --   Fixed the keywords defining the CASSINI_HGA frame to use the
                 proper ID code, -82101.
 
            --   Updated CASSINI_ISS_NAC and CASSINI_ISS_WAC to reflect the
                 latest boresight information available in ECR's 100078 and
                 100079.
 
   Version 2.4 -- March 27, 2000 -- Scott Turner
 
            --   Added the CIRS Focal Plane Boresight frame, CASSINI_CIRS_FPB.
 
            --   CASSINI_CIRS_FP1, CASSINI_CIRS_FP3, CASSINI_CIRS_FP2 are no
                 longer relative to CASSINI_SC_COORD but to the intermediate
                 frame CASSINI_CIRS_FPB.
 
            --   Migrated the CASSINI_UVIS frame from the prototype section
                 and added the CASSINI_UVIS_OCC frame.
 
            --   Added the TEXT_KERNEL_ID keyword to make version information
                 accessible to programs at runtime.
 
   Version 2.3 -- March 9, 2000 -- Scott Turner
 
            --   Updated the Euler angles for CASSINI_CIRS_FP1,
                 CASSINI_CIRS_FP3, and CASSINI_CIRS_FP4. Migrated them from
                 the prototype section into the CIRS Section of the FK.
 
   Version 2.2 -- September 10, 1999 -- Scott Turner
 
            --   Removed TKFRAME_[ID]_BORESIGHT keyword for all but the
                 antenna frames present. This information can now be found in
                 the instrument kernel with the keyword: INS[ID]_BORESIGHT.
 
            --   Added a frame for the Stellar Reference Unit (SRU).
 
            --   Added prototype frame entries for several instruments. The
                 transformations stored here for these frames are NOT for any
                 real calculations, and in some cases are not connected with
                 the actual instrument pointing at all. These frames will
                 migrate from the prototype section as the kernel evolves.
 
            --   Changed CASSINI_SC_BUS to CASSINI_SC_COORD.
 
            --   Changed the LGA frame name definitions to CASSINI_LGA1 and
                 CASSINI_LGA2 to accomodate simple translation to flight
                 software frame names.
 
            --   Changed NAC and WAC ID codes from -82010 and -82020 to -82360
                 and -82361 respectively. This is to conform to the new ID
                 code scheme proposed by Jeff Boyer.
 
            --   Altered the textual description of the spacecraft coordinate
                 system to conform with [8].
 
            --   Added some text from [8] to the ISS_NAC frame description.
 
   Version 2.1 -- July 14, 1999 -- Scott Turner
 
            --   Fixed incorrect comments regarding the NAC images.
 
            --   Fixed an improperly specified transformation for LGA2.
 
            --   Added TKFRAME_[ID]_BORESIGHT keyword for the frames present.
 
   Version 2.0 -- May 5, 1999 -- Scott Turner
 
            --   Added ISS NAC and WAC instrument frames.
 
   Version 1.0 -- May 14, 1998 -- Jeff Bytof
 
            --   Initial Release.
 
 
References
----------------------------------------------------------
 
            1.   ``C-kernel Required Reading''
 
            2.   ``Kernel Pool Required Reading''
 
            3.   ``Frames Required Reading''
 
            4.   Cassini spacecraft blueprints. Provided by Kevin Tong, JPL.
 
            5.   ``Cassini Science Instruments and Investigations'', Revised
                 Second Printing. Stephen J. Edberg.
 
            6.   ``Determination of the ISS Boresights in Cassini Spacecraft
                 Coordinate System.'' Carolyn Porco and Vance Haemmerle.
 
            7.   Email from Vance Haemmerle regarding WAC alignment.
 
            8.   Cassini Document No. 699-406 ``Project Guidance Analysis
                 Book''
 
            9.   CASPER CIRS I-kernel Version 3.2
 
           10.   CIRS Fields-of-View PDF attached in an email from Stephen
                 Edberg to Diane Conner.
 
           11.   Cassini Engineering Change Request #100078
 
           12.   Cassini Engineering Change Request #100079
 
           13.   CASPER VIMS I-kernel Version Version 4.2
 
           14.   Email from Terry Averkamp regarding new RPWS frame entries.
 
           15.   Email from Richard Achterberg regarding the CIRS frame
                 entries.
 
 
Contact Information
----------------------------------------------------------
 
   Direct questions, comments, or concerns about the contents of this kernel
   to:
 
           Scott Turner, NAIF/JPL, (818)-354-3157, sturner@spice.jpl.nasa.gov
           Jeff Bytof,   NAIF/JPL, (818)-354-3504, jbytof@spice.jpl.nasa.gov
 
 
Implementation Notes
----------------------------------------------------------
 
   This file is used by the SPICE system as follows: programs that make use of
   this frame kernel must `load' the kernel, normally during program
   initialization. Loading the kernel associates data items with their names
   in a data structure called the `kernel pool'. The SPICELIB routine LDPOOL
   loads a kernel file into the pool as shown below:
 
           CALL LDPOOL ( frame_kernel_name )
 
   In order for a program or subroutine to extract data from the pool, the
   SPICELIB routines GDPOOL and GIPOOL are used. See [2] for more details.
 
   This file was created and may be updated with a text editor or word
   processor.
 
   Note: the keyword TKFRAME_[ID]_BORESIGHT defines the instrument or antenna
   boresight axis in the instrument or antenna frame.
 
 
Cassini Frames
----------------------------------------------------------
 
   The following Cassini frames are defined in this kernel file:
 
           Frame Name                  Relative To            Type     NAIF ID
           =========================   ====================   =======  =======
 
           AACS Body Frame:
           ----------------
            CASSINI_SC_COORD            J2000                 CK       -82000
            CASSINI_SRU                 CASSINI_SC_COORD      FIXED    -82001
 
           Antenna Frames (-821xx):
           ------------------------
            CASSINI_HGA                 CASSINI_SC_COORD      FIXED    -82101
            CASSINI_LGA1                CASSINI_SC_COORD      FIXED    -82102
            CASSINI_LGA2                CASSINI_SC_COORD      FIXED    -82103
 
           ISS Frames (-8236x):
           ------------------------
            CASSINI_ISS_NAC             CASSINI_SC_COORD      FIXED    -82360
            CASSINI_ISS_WAC             CASSINI_SC_COORD      FIXED    -82361
 
           CIRS Frames (-8289x):
           ------------------------
            CASSINI_CIRS_FP1            CASSINI_CIRS_FPB      FIXED    -82890
            CASSINI_CIRS_FP3            CASSINI_CIRS_FPB      FIXED    -82891
            CASSINI_CIRS_FP4            CASSINI_CIRS_FPB      FIXED    -82892
            CASSINI_CIRS_FPB            CASSINI_SC_COORD      FIXED    -82893
 
           UVIS Frames (-8284x):
           ------------------------
            CASSINI_UVIS_FUV            CASSINI_SC_COORD      FIXED    -82840
            CASSINI_UVIS_FUV_OCC        CASSINI_UVIS_FUV      FIXED    -82841
            CASSINI_UVIS_EUV            CASSINI_SC_COORD      FIXED    -82842
            CASSINI_UVIS_EUV_OCC        CASSINI_UVIS_EUV      FIXED    -82843
            CASSINI_UVIS_HSP            CASSINI_SC_COORD      FIXED    -82844
            CASSINI_UVIS_HDAC           CASSINI_SC_COORD      FIXED    -82845
 
           VIMS Frames (-8283x):
           ------------------------
            CASSINI_VIMS_V              CASSINI_SC_COORD      FIXED    -82370
            CASSINI_VIMS_IR             CASSINI_SC_COORD      FIXED    -82371
 
 
   where: the frame ID codes are built from the spacecraft ID code, the
   instrument subsystem number, and the instrument number in a multiple
   instrument subsystem. The numbers 8 and 9 are reserved for the radiators.
   For example the ISS frame IDs are constructed as follows:
 
              CASSINI_ISS_WAC ID = -82 36  1
                                    |   |  |
                                    |   |  |
           SPACECRAFT ID CODE <-----+   |  +----> INSTRUMENT NUMBER
                                        |
                                        V
                          INSTRUMENT SUBSYSTEM NUMBER
 
   The following frames are included for the completeness of the kernel. The
   transformations implemented under these names should not be used for any
   real computations. The status and definition of the frames listed below may
   change as the kernel evolves. Wherever possible nominal values for the
   frame transformation are implemented.
 
           Frame Name                  Relative To            Type     NAIF ID
           =========================   ====================   =======  =======
 
           ISS Frames (-8236x):
           ------------------------
            CASSINI_ISS_NAC_RAD         CASSINI_SC_COORD      FIXED    -82368
            CASSINI_ISS_WAC_RAD         CASSINI_SC_COORD      FIXED    -82369
 
           Antenna Frames (-8220x):
           ------------------------
            CASSINI_XBAND               CASSINI_SC_COORD      FIXED    -82104
            CASSINI_KABAND              CASSINI_SC_COORD      FIXED    -82105
            CASSINI_KUBAND              CASSINI_SC_COORD      FIXED    -82106
            CASSINI_SBAND               CASSINI_SC_COORD      FIXED    -82107
 
           MAG Frames (-8235x):
           ------------------------
            CASSINI_MAG                 CASSINI_SC_COORD      FIXED    -82350
 
           VIMS Frames (-8237x):
           ------------------------
            CASSINI_VIMS_RAD            CASSINI_SC_COORD      FIXED    -82378
 
           RPWS Frames (-8273x):
           ------------------------
            CASSINI_RPWS                CASSINI_SC_COORD      FIXED    -82730
            CASSINI_RPWS_EXPLUS         CASSINI_SC_COORD      FIXED    -82731
            CASSINI_RPWS_EXMINUS        CASSINI_SC_COORD      FIXED    -82732
            CASSINI_RPWS_EZPLUS         CASSINI_SC_COORD      FIXED    -82733
            CASSINI_RPWS_LP             CASSINI_SC_COORD      FIXED    -82734
 
           INMS Frames (-8274x):
           ------------------------
            CASSINI_INMS                CASSINI_SC_COORD      FIXED    -82740
 
           MIMI Frames (-8276x):
           ------------------------
            CASSINI_MIMI_CHEMS          CASSINI_SC_COORD      FIXED    -82760
            CASSINI_MIMI_INCA           CASSINI_SC_COORD      FIXED    -82761
            CASSINI_MIMI_LEMMS1         CASSINI_SC_COORD      CK       -82762
            CASSINI_MIMI_LEMMS2         CASSINI_SC_COORD      CK       -82763
 
           CDA Frames (-8279x):
           ------------------------
            CASSINI_CDA                 CASSINI_SC_COORD      CK       -82790
 
           RADAR Frames (-8281x):
           ------------------------
            CASSINI_RADAR_1             CASSINI_SC_COORD      FIXED    -82810
            CASSINI_RADAR_2             CASSINI_SC_COORD      FIXED    -82811
            CASSINI_RADAR_3             CASSINI_SC_COORD      FIXED    -82812
            CASSINI_RADAR_4             CASSINI_SC_COORD      FIXED    -82813
            CASSINI_RADAR_5             CASSINI_SC_COORD      FIXED    -82814
 
           CAPS Frames (-8282x):
           ------------------------
            CASSINI_CAPS                CASSINI_SC_COORD      CK       -82820
 
           CIRS Frames (-8289x):
           ------------------------
            CASSINI_CIRS_RAD            CASSINI_SC_COORD      FIXED    -82898
 
 
 
Cassini Frames Hierarchy
----------------------------------------------------------
 
   The diagram below shows the Cassini frames hierarchy:
 
   Note: This diagram is subject to major revisions as this kernel evolves to
   suit the needs of each instrument.
 
 
             'IAU_EARTH' (EARTH BODY FIXED)
              |
              |<--- pck
              |
           'J2000' INERTIAL
              |
              |<--- ck
              |
             'CASSINI_SC_COORD'
                  |
                 'CASSINI_SRU'
                  |
                 'CASSINI_HGA'
                  |
                 'CASSINI_LGA1'
                  |
                 'CASSINI_LGA2'
                  |
                 'CASSINI_ISS_NAC'
                  |
                 'CASSINI_ISS_WAC'
                  |
                 'CASSINI_CIRS_FPB'
                  |   |
                  |  'CASSINI_CIRS_FP1'
                  |   |
                  |  'CASSINI_CIRS_FP3'
                  |   |
                  |  'CASSINI_CIRS_FP4'
                  |
                 'CASSINI_UVIS_FUV'
                  |   |
                  |  'CASSINI_UVIS_FUV_OCC'
                  |
                 'CASSINI_UVIS_EUV'
                  |   |
                  |  'CASSINI_UVIS_EUV_OCC'
                  |
                 'CASSINI_UVIS_HSP'
                  |
                 'CASSINI_UVIS_HDAC'
                  |
                 'CASSINI_VIMS'
 
 
 
Spacecraft Frame
----------------------------------------------------------
 
   From [8]: (Note: The figures referenced below can not be reproduced here.
   There is a diagram below that basically illustrates what is contained
   there.)
 
   ``The Stellar refernce Unit (SRU) detector is a CCD. Its coordinate system
   is defined according to the geometry of the detector. Figure 2.1.2a depicts
   the SRU orientation and coordinates relative to the S/C coordinates. From
   the ACS point of view, the S/C coordinate system is defined with respect to
   the SRU coordinate frame, such that :
 
   +X = +b (SRU boresight)
 
   +Y = +v
 
   +Z = -h
 
   Therefore, by definition, there are no misalignments between the SRU and
   the S/C coordinate frames.
 
   The SRU coordinate system is defined by the pixel and line shift directions
   defined in Figure 2.1.2b. These directions are represented by unit vectors
   h and v respectively. Both h and v pass through the origin which is located
   at the exact center of the 1024 x 1024 array. As indicated in Figure
   2.1.2b, the SRU boresight b passes through this point, is normal to both h
   and v, and points outward through the optics towards the scene being
   viewed.''
 
   Stellar Reference Unit Frame:
 
 
                                     Cassini Spacecraft
 
                                            /\
                             ----------------------------------
                             \                                /
                              \                              /    HGA
                               \                            /
               MAG Boom          --------------------------
            ... =================|                        |
                                 |           h            |
                                  \          ^           /
                                   |         |          |
                                   |         |          |
                       Y   <-------|   v <---o          |
                        sc         |           b, X     |
                                   |               sc   |
                                   |                    |
                                   |                    |
                                   |                    |
                                   |                    |
                                   ----------------------
                                          /      \
                                         /        \  Main Rocket Engine
                                         ----------
                                             |
                                             |
                                             |
                                             V
 
                                             Z
                                              sc
 
           where b and X   point out of the screen or page.
                        sc
 
 
   From [8]:
 
   ``The spacecraft basebody coordinate system is a body fixed coordinate
   system. It is a structural coordinate system defined when the spacecraft is
   assembled. The primary geometrical and mass properties are fixed to this
   system. The (X,Y,Z) coordinate system is not observable in space.
 
   Referring to Figure 2.1.1, the origin of the spacecraft coordinate system
   lies at the center of the field joint between the bus and the upper
   equipment module (UEM) upper shell structure assembly [7]. This location is
   defined by bolt holes A, D, and H (as shown on the Configuration lay out
   10129891, Figure 3). The Z-axis emanates from the origin and is
   perpendicular to a plane generated by the mating surfaces of the bus at
   bolt holes A, D, and H. The +Z-axis is on the propulsion module side of the
   interface. The X-axis emanates from the origin and is parallel to the line
   through the true centers of bolt holes A and H at the bus and the UEM upper
   shell structure assembly interface. The -X-axis points towards the Huygens
   probe. The Y-axis is mutually perpendicular to the X and Z axes, with the
   +Y axis oriented along the magnetometer boom.''
 
   Spacecraft bus attitude with respect to an inertial frame is provided by a
   C kernel (see [1] for more information).
 
           \begindata
 
           FRAME_CASSINI_SC_COORD   = -82000
           FRAME_-82000_NAME        = 'CASSINI_SC_COORD'
           FRAME_-82000_CLASS       = 3
           FRAME_-82000_CLASS_ID    = -82000
           FRAME_-82000_CENTER      = -82
           CK_-82000_SCLK           = -82
           CK_-82000_SPK            = -82
 
           \begintext
 
   The nominal definition of the Stellar Reference Unit frame is displayed
   below. As described above and in [8], the boresight axis lies along the
   spacecraft +X axis. The rotation matrix that takes vectors from the SRU
   frame into the spacecraft frame is computed:
 
           [     ]    [     ]  [       ]  [     ]
           [ ROT ]  = [ 0.0 ]  [ -90.0 ]  [ 0.0 ]
           [     ]    [     ]  [       ]  [     ]
                             Z          Y        X
 
           where [x]  represents the rotation matrix of a given angle x about
                    i
           axis i.
 
           \begindata
 
           FRAME_CASSINI_SRU        = -82001
           FRAME_-82001_NAME        = 'CASSINI_SRU'
           FRAME_-82001_CLASS       = 4
           FRAME_-82001_CLASS_ID    = -82001
           FRAME_-82001_CENTER      = -82
           TKFRAME_-82001_SPEC      = 'ANGLES'
           TKFRAME_-82001_RELATIVE  = 'CASSINI_SC_COORD'
           TKFRAME_-82001_ANGLES    = ( 0.0,  -90.0,  0.0 )
           TKFRAME_-82001_AXES      = (  3,       2,    1 )
           TKFRAME_-82001_UNITS     = 'DEGREES'
 
           \begintext
 
 
Antenna Frame Definitions
----------------------------------------------------------
 
   This section of the frames kernel defines the Cassini spacecraft antenna
   frames. The ID codes associated with each of the frames are determined by
   subtracting the three digit antenna code (101-103) from the DSN Cassini
   spacecraft bus ID code (-82000).
 
   Note the angles in the frame definitions are specified for the "from
   antenna to (relative to) base frame" transformation.
 
 
High Gain Antenna (HGA)
 
   The high gain antenna points nominally along the spacecraft -Z axis. As
   such the rotation matrix required that takes vectors represented in the
   high gain antenna frame into the spacecraft frame is constructed as
   follows:
 
           [     ]    [     ]  [        ]  [     ]
           [ ROT ]  = [ 0.0 ]  [ +180.0 ]  [ 0.0 ]
           [     ]    [     ]  [        ]  [     ]
                             Z           Y        X
 
           where [x]  represents the rotation matrix of a given angle x about
                    i
           axis i.
 
           \begindata
 
           FRAME_CASSINI_HGA        = -82101
           FRAME_-82101_NAME        = 'CASSINI_HGA'
           FRAME_-82101_CLASS       = 4
           FRAME_-82101_CLASS_ID    = -82101
           FRAME_-82101_CENTER      = -82
           TKFRAME_-82101_SPEC      = 'ANGLES'
           TKFRAME_-82101_RELATIVE  = 'CASSINI_SC_COORD'
           TKFRAME_-82101_ANGLES    = ( 0.0,  180.0,  0.0 )
           TKFRAME_-82101_AXES      = (  3,      2,    1  )
           TKFRAME_-82101_UNITS     = 'DEGREES'
           TKFRAME_-82101_BORESIGHT = ( 0.0, 0.0, 1.0 )
 
           \begintext
 
 
Low Gain Antenna One (LGA1)
 
   The first low gain antenna points nominally along the spacecraft -Z axis.
   As such the rotation matrix required that takes vectors represented in the
   first low gain antenna frame into the spacecraft frame is constructed as
   follows:
 
           [     ]    [     ]  [        ]  [     ]
           [ ROT ]  = [ 0.0 ]  [ +180.0 ]  [ 0.0 ]
           [     ]    [     ]  [        ]  [     ]
                             Z           Y        X
 
           where [x]  represents the rotation matrix of a given angle x about
                    i
           axis i.
 
           \begindata
 
           FRAME_CASSINI_LGA1       = -82102
           FRAME_-82102_NAME        = 'CASSINI_LGA1'
           FRAME_-82102_CLASS       = 4
           FRAME_-82102_CLASS_ID    = -82102
           FRAME_-82102_CENTER      = -82
           TKFRAME_-82102_SPEC      = 'ANGLES'
           TKFRAME_-82102_RELATIVE  = 'CASSINI_SC_COORD'
           TKFRAME_-82102_ANGLES    = ( 0.0,   180.0,  0.0 )
           TKFRAME_-82102_AXES      = (  3,      2,     1  )
           TKFRAME_-82102_UNITS     = 'DEGREES'
           TKFRAME_-82102_BORESIGHT = ( 0.0, 0.0, 1.0 )
 
           \begintext
 
 
Low Gain Antenna Two (LGA2)
 
   The second low gain antenna points nominally along the spacecraft -X axis.
   As such the rotation matrix required that takes vectors represented in the
   second low gain antenna frame into the spacecraft frame is constructed as
   follows:
 
           [     ]    [     ]  [      ]  [     ]
           [ ROT ]  = [ 0.0 ]  [ 90.0 ]  [ 0.0 ]
           [     ]    [     ]  [      ]  [     ]
                             Z         Y        X
 
           where [x]  represents the rotation matrix of a given angle x about
                    i
           axis i.
 
           \begindata
 
           FRAME_CASSINI_LGA2       = -82103
           FRAME_-82103_NAME        = 'CASSINI_LGA2'
           FRAME_-82103_CLASS       = 4
           FRAME_-82103_CLASS_ID    = -82103
           FRAME_-82103_CENTER      = -82
           TKFRAME_-82103_SPEC      = 'ANGLES'
           TKFRAME_-82103_RELATIVE  = 'CASSINI_SC_COORD'
           TKFRAME_-82103_ANGLES    = ( 0.0,     90.0,     0.0 )
           TKFRAME_-82103_AXES      = (   3,       2,       1  )
           TKFRAME_-82103_UNITS     = 'DEGREES'
           TKFRAME_-82103_BORESIGHT = ( 0.0, 0.0, 1.0 )
 
           \begintext
 
 
ISS Frames
----------------------------------------------------------
 
   The Narrow Angle Camera (NAC) and Wide Angle Camera (WAC) are mounted on
   the remote sensing pallet on the +X side of the Cassini spacecraft, and
   nominally directed along the -Y axis of the AACS body frame.
 
   Note the angles in the frame definitions are specified for the "from
   antenna to (relative to) base frame" transformation.
 
 
Imaging Science Subsystem Narrow Angle Camera (ISS_NAC)
 
   The ISS NAC points nominally along the spacecraft -Y axis. The following
   frame definition encapsulates this nominal frame.
 
   From [8]:
 
   ``The Narrow Angle Camera (NAC) detector is a CCD. Its coordinate system is
   defined according to the geometry of the detector. The narrow angle
   coordinate system is defined in the same manner as the SRU coordinate
   systems defined above and the four central pixels of center of the full CCD
   are selected for the definition of the origin of the coordinate system.
 
   The Narrow Angle Camera is the primary instrument on the Remote Sensing
   Pallet (RSP). AACS is responsible for providing pointing knowledge of the
   boresight vector of this instrument. All other RSP instruments use the
   pointing provided to the NAC as their reference for determining their
   pointing.''
 
           Nominal Frame Definition:
 
           FRAME_CASSINI_ISS_NAC    = -82360
           FRAME_-82360_NAME        = 'CASSINI_ISS_NAC'
           FRAME_-82360_CLASS       = 4
           FRAME_-82360_CLASS_ID    = -82360
           FRAME_-82360_CENTER      = -82
           TKFRAME_-82360_SPEC      = 'ANGLES'
           TKFRAME_-82360_RELATIVE  = 'CASSINI_SC_COORD'
           TKFRAME_-82360_ANGLES    = (   -90.0,     0.0,     90.0 )
           TKFRAME_-82360_AXES      = (     1,       2,        3   )
           TKFRAME_-82360_UNITS     = 'DEGREES'
 
 
   [6] describes the inflight calibration of the ISS that was the result of
   the CICLOPS (Cassini Imaging Central Laboratory for Operations) analysis of
   8 NAC images that were taken during ICO (Instrument Checkout). The rotation
   matrix that takes vectors represented in the ISS_NAC frame into the
   spacecraft frame follows:
 
           [     ]    [            ]  [              ]  [           ]
           [ ROT ]  = [ -90.024236 ]  [ -0.047029483 ]  [ 89.892082 ]
           [     ]    [            ]  [              ]  [           ]
                                    X                 Y              Z
 
           where [x]  represents the rotation matrix of a given angle x about
                    i
           axis i.
 
   The angles were taken directly from [6].
 
 
           FRAME_CASSINI_ISS_NAC    = -82360
           FRAME_-82360_NAME        = 'CASSINI_ISS_NAC'
           FRAME_-82360_CLASS       = 4
           FRAME_-82360_CLASS_ID    = -82360
           FRAME_-82360_CENTER      = -82
           TKFRAME_-82360_SPEC      = 'ANGLES'
           TKFRAME_-82360_RELATIVE  = 'CASSINI_SC_COORD'
           TKFRAME_-82360_ANGLES    = ( -90.024236, -0.047029483,  89.892082 )
           TKFRAME_-82360_AXES      = (   1,         2,             3        )
           TKFRAME_-82360_UNITS     = 'DEGREES'
 
 
   From [10]:
 
   ``The NAC boresight is not precisely aligned with the S/C -Y body vector.
   Its alignment was determined during ICO-1 ISS observations of Spica, when
   the spacecraft was using SRU-B for orientation determination. The alignment
   parameters cited under Change Requested take into account the offset, as
   determined by AACS, between SRU-A and SRU-B.''
 
   [10] also describes a series of frame transformations that convert the
   CASSINI_ISS_NAC frame into the CASSINI_SC_COORD frame, accounting for the
   offset between SRU-A and SRU-B. This results in following frame definition:
 
   The rotation matrix that takes vectors represented in the ISS_NAC frame
   into the spacecraft frame follows:
 
           [     ]    [              ]  [             ]  [             ]
           [ ROT ]  = [ -89.99231636 ]  [ -0.03586589 ]  [ 89.93339682 ]
           [     ]    [              ]  [             ]  [             ]
                                      X                Y                Z
 
           where [x]  represents the rotation matrix of a given angle x about
                    i
           axis i.
 
           \begindata
 
           FRAME_CASSINI_ISS_NAC    = -82360
           FRAME_-82360_NAME        = 'CASSINI_ISS_NAC'
           FRAME_-82360_CLASS       = 4
           FRAME_-82360_CLASS_ID    = -82360
           FRAME_-82360_CENTER      = -82
           TKFRAME_-82360_SPEC      = 'ANGLES'
           TKFRAME_-82360_RELATIVE  = 'CASSINI_SC_COORD'
           TKFRAME_-82360_ANGLES    = (-89.99231636, -0.03586589, 89.93339682)
           TKFRAME_-82360_AXES      = (  1,           2,           3         )
           TKFRAME_-82360_UNITS     = 'DEGREES'
 
           \begintext
 
 
Imaging Science Subsystem Wide Angle Camera (ISS_WAC)
 
   The ISS WAC points nominally along the spacecraft -Y axis. The following
   frame definition encapsulates this nominal frame.
 
           Nominal Frame Definition:
 
           FRAME_CASSINI_ISS_WAC    = -82361
           FRAME_-82361_NAME        = 'CASSINI_ISS_WAC'
           FRAME_-82361_CLASS       = 4
           FRAME_-82361_CLASS_ID    = -82361
           FRAME_-82361_CENTER      = -82
           TKFRAME_-82361_SPEC      = 'ANGLES'
           TKFRAME_-82361_RELATIVE  = 'CASSINI_SC_COORD'
           TKFRAME_-82361_ANGLES    = (   -90.0,     0.0,     90.0 )
           TKFRAME_-82361_AXES      = (     1,       2,        3   )
           TKFRAME_-82361_UNITS     = 'DEGREES'
 
 
   [6] describes the inflight calibration of ISS that was the result of the
   CICLOPS (Cassini Imaging Central Laboratory for Operations) analysis of 36
   WAC images taken during ICO (Instrument Checkout). At this time the images
   taken were only sufficient to develop the location of the WAC's optical
   axis. There are three determinations of this axes location in the
   spacecraft frame. In [7] V.Haemmerle suggests that the 2-parameter fit
   average coupled with nominal twist would be the safest assumption to
   determine the frame transformation from ISS_WAC to the AACS body frame. The
   rotation matrix that takes ISS_WAC vectors into the spacecraft frame would
   be constructed as follows:
 
           [     ]    [             ]  [              ]  [     ]
           [ ROT ]  = [ +89.9116120 ]  [ -90.00059931 ]  [ 0.0 ]
           [     ]    [             ]  [              ]  [     ]
                                     Z                 Y        Z
 
           where [x]  represents the rotation matrix of a given angle x about
                    i
           axis i.
 
   These angles were computed using the assumption that the WAC optical axis
   lies along the vector:
 
                                     [  0.00154266 ]
           WAC Optical Axis Vector = [ -0.99999881 ]
                                     [ -0.00001046 ]
 
   in AACS body coordinates. Further we assume nominal twist, hence the first
   rotation about Z is 0.0 degrees.
 
 
           FRAME_CASSINI_ISS_WAC    = -82361
           FRAME_-82361_NAME        = 'CASSINI_ISS_WAC'
           FRAME_-82361_CLASS       = 4
           FRAME_-82361_CLASS_ID    = -82361
           FRAME_-82361_CENTER      = -82
           TKFRAME_-82361_SPEC      = 'ANGLES'
           TKFRAME_-82361_RELATIVE  = 'CASSINI_SC_COORD'
           TKFRAME_-82361_ANGLES    = (   89.9116120,  -90.00059931,  0.0 )
           TKFRAME_-82361_AXES      = (            3,             2,    3 )
           TKFRAME_-82361_UNITS     = 'DEGREES'
 
 
   From [11]:
 
   ``The WAC boresight is not precisely aligned with the S/C -Y body vector.
   Its alignment was determined during ICO-1 ISS observations of Spica, when
   the spacecraft was using SRU-B for orientation determination. The alignment
   parameters cited under Change Request take into account the offset, as
   determined by AACS, between SRU-A and SRU-B.''
 
   Taking the boresight from the ECR ([11]):
 
                                     [  0.0013481161  ]
           WAC Optical Axis Vector = [ -0.99999894    ]
                                     [  0.00054612156 ]
 
   and assuming no twist, we derive the following angles:
 
           [     ]    [             ]  [              ]  [     ]
           [ ROT ]  = [ +89.9227586 ]  [ -89.96870954 ]  [ 0.0 ]
           [     ]    [             ]  [              ]  [     ]
                                     Z                 Y        Z
 
           where [x]  represents the rotation matrix of a given angle x about
                    i
           axis i.
 
   These angles were computed using the assumption that the WAC optical axis
   lies along the vector:
 
   in AACS body coordinates. Further we assume nominal twist, hence the first
   rotation about Z is 0.0 degrees.
 
           \begindata
 
           FRAME_CASSINI_ISS_WAC    = -82361
           FRAME_-82361_NAME        = 'CASSINI_ISS_WAC'
           FRAME_-82361_CLASS       = 4
           FRAME_-82361_CLASS_ID    = -82361
           FRAME_-82361_CENTER      = -82
           TKFRAME_-82361_SPEC      = 'ANGLES'
           TKFRAME_-82361_RELATIVE  = 'CASSINI_SC_COORD'
           TKFRAME_-82361_ANGLES    = (   89.9227586,  -89.96870954,  0.0 )
           TKFRAME_-82361_AXES      = (            3,             2,    3 )
           TKFRAME_-82361_UNITS     = 'DEGREES'
 
           \begintext
 
 
CIRS Frames
----------------------------------------------------------
 
   The Composite Infrared Spectrometer (CIRS) is mounted on the remote sensing
   pallet on the +X side of the Cassini spacecraft, and nominally directed
   along the -Y axis of the AACS body frame.
 
   Note the angles in the frame definitions are specified for the "from
   instrument to (relative to) base frame" transformation.
 
 
Composite Infrared Spectrometer Focal Plane Boresight (CIRS_FPB)
 
   The CIRS FPB points nominally along the spacecraft -Y axis. The rotation
   matrix that takes vectors represented in the CIRS_FPB frame into the
   spacecraft frame follows:
 
           [     ]    [     ]  [      ]  [     ]
           [ ROT ]  = [ 0.0 ]  [-90.0 ]  [ 0.0 ]
           [     ]    [     ]  [      ]  [     ]
                             Z         X        Y
 
           where [x]  represents the rotation matrix of a given angle x about
                    i
           axis i.
 
   The following frame definition encapsulates this nominal frame:
 
           \begindata
 
           FRAME_CASSINI_CIRS_FPB    = -82893
           FRAME_-82893_NAME         = 'CASSINI_CIRS_FPB'
           FRAME_-82893_CLASS        = 4
           FRAME_-82893_CLASS_ID     = -82893
           FRAME_-82893_CENTER       = -82
           TKFRAME_-82893_SPEC       = 'ANGLES'
           TKFRAME_-82893_RELATIVE   = 'CASSINI_SC_COORD'
           TKFRAME_-82893_ANGLES     = (  0.0,    -90.0,    0.0 )
           TKFRAME_-82893_AXES       = (    3,        1,      2 )
           TKFRAME_-82893_UNITS      = 'DEGREES'
 
           \begintext
 
 
Composite Infrared Spectrometer Focal Plane #1 (CIRS_FP1)
 
   The CIRS FP1 points nominally along the spacecraft -Y axis. The following
   frame definition encapsulates this nominal frame.
 
           Nominal Frame Definition:
 
           FRAME_CASSINI_CIRS_FP1    = -82890
           FRAME_-82890_NAME         = 'CASSINI_CIRS_FP1'
           FRAME_-82890_CLASS        = 4
           FRAME_-82890_CLASS_ID     = -82890
           FRAME_-82890_CENTER       = -82
           TKFRAME_-82890_SPEC       = 'ANGLES'
           TKFRAME_-82890_RELATIVE   = 'CASSINI_SC_COORD'
           TKFRAME_-82890_ANGLES     = (  -90.0,     0.0,    90.0 )
           TKFRAME_-82890_AXES       = (      1,       2,       3 )
           TKFRAME_-82890_UNITS      = 'DEGREES'
 
 
   [9] and [10] describe the most up to date values the orientation of the
   CIRS focal planes. The rotation matrix that takes vectors represented in
   the CIRS_FP1 frame into the CIRS_FPB frame follows:
 
           [     ]    [     ]  [     ]  [            ]
           [ ROT ]  = [ 0.0 ]  [ 0.0 ]  [ 0.23319382 ]
           [     ]    [     ]  [     ]  [            ]
                             Z        X               Y
 
           where [x]  represents the rotation matrix of a given angle x about
                    i
           axis i.
 
   The angles were computed from [10].
 
           \begindata
 
           FRAME_CASSINI_CIRS_FP1    = -82890
           FRAME_-82890_NAME         = 'CASSINI_CIRS_FP1'
           FRAME_-82890_CLASS        = 4
           FRAME_-82890_CLASS_ID     = -82890
           FRAME_-82890_CENTER       = -82
           TKFRAME_-82890_SPEC       = 'ANGLES'
           TKFRAME_-82890_RELATIVE   = 'CASSINI_CIRS_FPB'
           TKFRAME_-82890_ANGLES     = (  0.0,     0.0,   -0.23319382 )
           TKFRAME_-82890_AXES       = (    3,       1,             2 )
           TKFRAME_-82890_UNITS      = 'DEGREES'
 
           \begintext
 
 
Composite Infrared Spectrometer Focal Plane #3 (CIRS_FP3)
 
   The CIRS FP3 points nominally along the spacecraft -Y axis. The following
   frame definition encapsulates this nominal frame.
 
           Nominal Frame Definition:
 
           FRAME_CASSINI_CIRS_FP3    = -82891
           FRAME_-82891_NAME         = 'CASSINI_CIRS_FP3'
           FRAME_-82891_CLASS        = 4
           FRAME_-82891_CLASS_ID     = -82891
           FRAME_-82891_CENTER       = -82
           TKFRAME_-82891_SPEC       = 'ANGLES'
           TKFRAME_-82891_RELATIVE   = 'CASSINI_SC_COORD'
           TKFRAME_-82891_ANGLES     = (  -90.0,     0.0,    90.0 )
           TKFRAME_-82891_AXES       = (      1,       2,       3 )
           TKFRAME_-82891_UNITS      = 'DEGREES'
 
 
   [9] and [10] describe the most up to date values the orientation of the
   CIRS focal planes. The rotation matrix that takes vectors represented in
   the CIRS_FP3 frame into the CIRS_FPB frame follows:
 
           [     ]    [     ]  [     ]  [            ]
           [ ROT ]  = [ 0.0 ]  [ 0.0 ]  [ 0.05099324 ]
           [     ]    [     ]  [     ]  [            ]
                             Z        X               Y
 
           where [x]  represents the rotation matrix of a given angle x about
                    i
           axis i.
 
   The angles were computed from [10] with updates from [15].
 
           \begindata
 
           FRAME_CASSINI_CIRS_FP3    = -82891
           FRAME_-82891_NAME         = 'CASSINI_CIRS_FP3'
           FRAME_-82891_CLASS        = 4
           FRAME_-82891_CLASS_ID     = -82891
           FRAME_-82891_CENTER       = -82
           TKFRAME_-82891_SPEC       = 'ANGLES'
           TKFRAME_-82891_RELATIVE   = 'CASSINI_CIRS_FPB'
           TKFRAME_-82891_ANGLES     = ( 0.0,     0.0,   0.02549662 )
           TKFRAME_-82891_AXES       = (   3,       1,            2 )
           TKFRAME_-82891_UNITS      = 'DEGREES'
 
           \begintext
 
 
Composite Infrared Spectrometer Focal Plane #4 (CIRS_FP4)
 
   The CIRS FP4 points nominally along the spacecraft -Y axis. The following
   frame definition encapsulates this nominal frame.
 
           Nominal Frame Definition:
 
           FRAME_CASSINI_CIRS_FP4    = -82892
           FRAME_-82892_NAME         = 'CASSINI_CIRS_FP4'
           FRAME_-82892_CLASS        = 4
           FRAME_-82892_CLASS_ID     = -82892
           FRAME_-82892_CENTER       = -82
           TKFRAME_-82892_SPEC       = 'ANGLES'
           TKFRAME_-82892_RELATIVE   = 'CASSINI_SC_COORD'
           TKFRAME_-82892_ANGLES     = (  -90.0,     0.0,    90.0 )
           TKFRAME_-82892_AXES       = (      1,       2,       3 )
           TKFRAME_-82892_UNITS      = 'DEGREES'
 
 
   [9] and [10] describe the most up to date values the orientation of the
   CIRS focal planes. The rotation matrix that takes vectors represented in
   the CIRS_FP4 frame into the CIRS_FPB frame follows:
 
           [     ]    [     ]  [     ]  [             ]
           [ ROT ]  = [ 0.0 ]  [ 0.0 ]  [ -0.05099324 ]
           [     ]    [     ]  [     ]  [             ]
                             Z        X                Y
 
           where [x]  represents the rotation matrix of a given angle x about
                    i
           axis i.
 
   The angles were taken directly from [10] with updates from [15].
 
           \begindata
 
           FRAME_CASSINI_CIRS_FP4    = -82892
           FRAME_-82892_NAME         = 'CASSINI_CIRS_FP4'
           FRAME_-82892_CLASS        = 4
           FRAME_-82892_CLASS_ID     = -82892
           FRAME_-82892_CENTER       = -82
           TKFRAME_-82892_SPEC       = 'ANGLES'
           TKFRAME_-82892_RELATIVE   = 'CASSINI_CIRS_FPB'
           TKFRAME_-82892_ANGLES     = ( 0.0,     0.0,   -0.02549662 )
           TKFRAME_-82892_AXES       = (   3,       1,             2 )
           TKFRAME_-82892_UNITS      = 'DEGREES'
 
           \begintext
 
 
UVIS Frames
----------------------------------------------------------
 
   The Ultraviolet Imaging Spectrograph (UVIS) is mounted on the remote
   sensing pallet on the +X side of the Cassini spacecraft, and nominally
   directed along the -Y axis of the AACS body frame.
 
   Note the angles in the frame definitions are specified for the "from
   instrument to (relative to) base frame" transformation.
 
 
Ultraviolet Imaging Spectrograph Far Ultraviolet Spectrograph (UVIS_FUV)
 
   An examination of [5] reveals that UVIS_FUV points nominally along the
   spacecraft -Y axis. The rotation matrix that takes vectors represented in
   the UVIS_FUV frame into the spacecraft frame follows:
 
           [     ]    [     ]  [     ]  [       ]
           [ ROT ]  = [ 0.0 ]  [ 0.0 ]  [ -90.0 ]
           [     ]    [     ]  [     ]  [       ]
                             Z        Y          X
 
           where [x]  represents the rotation matrix of a given angle x about
                    i
           axis i.
 
   The following frame definition describes this nominal frame:
 
           \begindata
 
           FRAME_CASSINI_UVIS_FUV    = -82840
           FRAME_-82840_NAME         = 'CASSINI_UVIS_FUV'
           FRAME_-82840_CLASS        = 4
           FRAME_-82840_CLASS_ID     = -82840
           FRAME_-82840_CENTER       = -82
           TKFRAME_-82840_SPEC       = 'ANGLES'
           TKFRAME_-82840_RELATIVE   = 'CASSINI_SC_COORD'
           TKFRAME_-82840_ANGLES     = ( 0.0,     0.0,   -90.0 )
           TKFRAME_-82840_AXES       = (   3,       2,       1 )
           TKFRAME_-82840_UNITS      = 'DEGREES'
 
           \begintext
 
 
Ultraviolet Imaging Spectrograph Far Ultraviolet Occultation Port
(UVIS_FUV_OCC)
 
   Looking at reference [5] demonstrates that the UVIS FUV Occultation port
   points nominally 20 degrees offset from the UVIS boresight in the -Y
   direction of the UVIS_FUV frame. The rotation matrix that takes vectors
   represented in the UVIS_FUV_OCC frame into the UVIS_FUV frame follows:
 
           [     ]    [     ]  [     ]  [       ]
           [ ROT ]  = [ 0.0 ]  [ 0.0 ]  [ -20.0 ]
           [     ]    [     ]  [     ]  [       ]
                             Z        Y          X
 
           where [x]  represents the rotation matrix of a given angle x about
                    i
           axis i.
 
           \begindata
 
           FRAME_CASSINI_UVIS_FUV_OCC  = -82841
           FRAME_-82841_NAME           = 'CASSINI_UVIS_FUV_OCC'
           FRAME_-82841_CLASS          = 4
           FRAME_-82841_CLASS_ID       = -82841
           FRAME_-82841_CENTER         = -82
           TKFRAME_-82841_SPEC         = 'ANGLES'
           TKFRAME_-82841_RELATIVE     = 'CASSINI_UVIS_FUV'
           TKFRAME_-82841_ANGLES       = ( 0.0,     0.0,   -20.0 )
           TKFRAME_-82841_AXES         = (   3,       2,       1 )
           TKFRAME_-82841_UNITS        = 'DEGREES'
 
           \begintext
 
 
Ultraviolet Imaging Spectrograph Extreme Ultraviolet Spectrograph (UVIS_EUV)
 
   An examination of [5] reveals that the UVIS_EUV points nominally along the
   spacecraft -Y axis. The rotation matrix that takes vectors represented in
   the UVIS_EUV frame into the spacecraft frame follows:
 
           [     ]    [     ]  [     ]  [       ]
           [ ROT ]  = [ 0.0 ]  [ 0.0 ]  [ -90.0 ]
           [     ]    [     ]  [     ]  [       ]
                             Z        Y          X
 
           where [x]  represents the rotation matrix of a given angle x about
                    i
           axis i.
 
   The following frame definition describes this nominal frame:
 
           \begindata
 
           FRAME_CASSINI_UVIS_EUV    = -82842
           FRAME_-82842_NAME         = 'CASSINI_UVIS_EUV'
           FRAME_-82842_CLASS        = 4
           FRAME_-82842_CLASS_ID     = -82842
           FRAME_-82842_CENTER       = -82
           TKFRAME_-82842_SPEC       = 'ANGLES'
           TKFRAME_-82842_RELATIVE   = 'CASSINI_SC_COORD'
           TKFRAME_-82842_ANGLES     = ( 0.0,     0.0,   -90.0 )
           TKFRAME_-82842_AXES       = (   3,       2,       1 )
           TKFRAME_-82842_UNITS      = 'DEGREES'
 
           \begintext
 
 
Ultraviolet Imaging Spectrograph Far Ultraviolet Occultation Port
(UVIS_EUV_OCC)
 
   [5] illustrates that the UVIS EUV Occultation port points nominally 20
   degrees offset from the UVIS boresight in the -Y direction of the UVIS_EUV
   frame. The rotation matrix that takes vectors represented in the
   UVIS_EUV_OCC frame into the UVIS_EUV frame follows:
 
           [     ]    [     ]  [     ]  [       ]
           [ ROT ]  = [ 0.0 ]  [ 0.0 ]  [ -20.0 ]
           [     ]    [     ]  [     ]  [       ]
                             Z        Y          X
 
           where [x]  represents the rotation matrix of a given angle x about
                    i
           axis i.
 
           \begindata
 
           FRAME_CASSINI_UVIS_EUV_OCC  = -82843
           FRAME_-82843_NAME           = 'CASSINI_UVIS_EUV_OCC'
           FRAME_-82843_CLASS          = 4
           FRAME_-82843_CLASS_ID       = -82843
           FRAME_-82843_CENTER         = -82
           TKFRAME_-82843_SPEC         = 'ANGLES'
           TKFRAME_-82843_RELATIVE     = 'CASSINI_UVIS_EUV'
           TKFRAME_-82843_ANGLES       = ( 0.0,     0.0,   -20.0 )
           TKFRAME_-82843_AXES         = (   3,       2,       1 )
           TKFRAME_-82843_UNITS        = 'DEGREES'
 
           \begintext
 
 
Ultraviolet Imaging Spectrograph High Speed Photometer (UVIS_HSP)
 
   An examination of [5] reveals that the UVIS_HSP points nominally along the
   spacecraft -Y axis. The rotation matrix that takes vectors represented in
   the UVIS_HSP frame into the spacecraft frame follows:
 
           [     ]    [     ]  [     ]  [       ]
           [ ROT ]  = [ 0.0 ]  [ 0.0 ]  [ -90.0 ]
           [     ]    [     ]  [     ]  [       ]
                             Z        Y          X
 
           where [x]  represents the rotation matrix of a given angle x about
                    i
           axis i.
 
   The following frame definition describes this nominal frame:
 
           \begindata
 
           FRAME_CASSINI_UVIS_HSP    = -82844
           FRAME_-82844_NAME         = 'CASSINI_UVIS_HSP'
           FRAME_-82844_CLASS        = 4
           FRAME_-82844_CLASS_ID     = -82844
           FRAME_-82844_CENTER       = -82
           TKFRAME_-82844_SPEC       = 'ANGLES'
           TKFRAME_-82844_RELATIVE   = 'CASSINI_SC_COORD'
           TKFRAME_-82844_ANGLES     = ( 0.0,     0.0,   -90.0 )
           TKFRAME_-82844_AXES       = (   3,       2,       1 )
           TKFRAME_-82844_UNITS      = 'DEGREES'
 
           \begintext
 
 
Ultraviolet Imaging Spectrograph Hydrogen - Deuterium Absorption Cell
(UVIS_HDAC)
 
   An examination of [5] reveals that the UVIS_HDAC points nominally along the
   spacecraft -Y axis. The rotation matrix that takes vectors represented in
   the UVIS_HSP frame into the spacecraft frame follows:
 
           [     ]    [     ]  [     ]  [       ]
           [ ROT ]  = [ 0.0 ]  [ 0.0 ]  [ -90.0 ]
           [     ]    [     ]  [     ]  [       ]
                             Z        Y          X
 
           where [x]  represents the rotation matrix of a given angle x about
                    i
           axis i.
 
   The following frame definition describes this nominal frame:
 
           \begindata
 
           FRAME_CASSINI_UVIS_HDAC   = -82845
           FRAME_-82845_NAME         = 'CASSINI_UVIS_HDAC'
           FRAME_-82845_CLASS        = 4
           FRAME_-82845_CLASS_ID     = -82845
           FRAME_-82845_CENTER       = -82
           TKFRAME_-82845_SPEC       = 'ANGLES'
           TKFRAME_-82845_RELATIVE   = 'CASSINI_SC_COORD'
           TKFRAME_-82845_ANGLES     = ( 0.0,     0.0,   -90.0 )
           TKFRAME_-82845_AXES       = (   3,       2,       1 )
           TKFRAME_-82845_UNITS      = 'DEGREES'
 
           \begintext
 
 
VIMS Frames
----------------------------------------------------------
 
   The Visible and Infrared Mapping Spectrometer is mounted on the remote
   sensing pallet on the +X side of the Cassini spacecraft, and nominally
   directed along the -Y axis of the AACS body frame.
 
   Note the angles in the frame definitions are specified for the ``from
   antenna to (relative to) base frame'' transformation.
 
 
Visible and Infrared Mapping Spectrometer (VIMS)
 
   The VIMS detector points nominally along the spacecraft -Y axis. The
   following frame definition encapsulates this nominal frame.
 
   From [13]:
 
           [     ]    [     ]  [     ]  [       ]
           [ ROT ]  = [ 0.0 ]  [ 0.0 ]  [ -90.0 ]
           [     ]    [     ]  [     ]  [       ]
                             Z        Y          X
 
           where [x]  represents the rotation matrix of a given angle x about
                    i
           axis i.
 
           \begindata
 
           FRAME_CASSINI_VIMS_V      = -82370
           FRAME_-82370_NAME         = 'CASSINI_VIMS_V'
           FRAME_-82370_CLASS        = 4
           FRAME_-82370_CLASS_ID     = -82370
           FRAME_-82370_CENTER       = -82
           TKFRAME_-82370_SPEC       = 'ANGLES'
           TKFRAME_-82370_RELATIVE   = 'CASSINI_SC_COORD'
           TKFRAME_-82370_ANGLES     = (  0.0,     0.0,    -90.0 )
           TKFRAME_-82370_AXES       = (    3,       2,        1 )
           TKFRAME_-82370_UNITS      = 'DEGREES'
 
           \begintext
 
           \begindata
 
           FRAME_CASSINI_VIMS_IR     = -82371
           FRAME_-82371_NAME         = 'CASSINI_VIMS_IR'
           FRAME_-82371_CLASS        = 4
           FRAME_-82371_CLASS_ID     = -82371
           FRAME_-82371_CENTER       = -82
           TKFRAME_-82371_SPEC       = 'ANGLES'
           TKFRAME_-82371_RELATIVE   = 'CASSINI_SC_COORD'
           TKFRAME_-82371_ANGLES     = (  0.0,     0.0,    -90.0 )
           TKFRAME_-82371_AXES       = (    3,       2,        1 )
           TKFRAME_-82371_UNITS      = 'DEGREES'
 
           \begintext
 
 
Prototype Frames
----------------------------------------------------------
 
   The following frame definitions are included for the completeness of the
   kernel. Wherever possible the nominal values of the transformation are
   used, but do not rely on their correctness or accuracy. Frame definitions
   will migrate from this section of the kernel as it evolves. In most of the
   cases the follow the transformations present only align the boresight with
   the nominal configuration.
 
 
ISS Radiators
 
           \begindata
 
           FRAME_CASSINI_ISS_NAC_RAD = -82368
           FRAME_-82368_NAME         = 'CASSINI_ISS_NAC_RAD'
           FRAME_-82368_CLASS        = 4
           FRAME_-82368_CLASS_ID     = -82368
           FRAME_-82368_CENTER       = -82
           TKFRAME_-82368_SPEC       = 'ANGLES'
           TKFRAME_-82368_RELATIVE   = 'CASSINI_SC_COORD'
           TKFRAME_-82368_ANGLES     = (   0.0,     0.0,     0.0 )
           TKFRAME_-82368_AXES       = (     1,       2,       3 )
           TKFRAME_-82368_UNITS      = 'DEGREES'
 
           \begintext
 
           \begindata
 
           FRAME_CASSINI_ISS_WAC_RAD = -82369
           FRAME_-82369_NAME         = 'CASSINI_ISS_WAC_RAD'
           FRAME_-82369_CLASS        = 4
           FRAME_-82369_CLASS_ID     = -82369
           FRAME_-82369_CENTER       = -82
           TKFRAME_-82369_SPEC       = 'ANGLES'
           TKFRAME_-82369_RELATIVE   = 'CASSINI_SC_COORD'
           TKFRAME_-82369_ANGLES     = (   0.0,     0.0,     0.0 )
           TKFRAME_-82369_AXES       = (     1,       2,       3 )
           TKFRAME_-82369_UNITS      = 'DEGREES'
 
           \begintext
 
 
MAG Frames
 
           \begindata
 
           FRAME_CASSINI_MAG_PLUS    = -82350
           FRAME_-82350_NAME         = 'CASSINI_MAG_PLUS'
           FRAME_-82350_CLASS        = 4
           FRAME_-82350_CLASS_ID     = -82350
           FRAME_-82350_CENTER       = -82
           TKFRAME_-82350_SPEC       = 'ANGLES'
           TKFRAME_-82350_RELATIVE   = 'CASSINI_SC_COORD'
           TKFRAME_-82350_ANGLES     = (   0.0,   -90.0,     0.0 )
           TKFRAME_-82350_AXES       = (     1,       2,       3 )
           TKFRAME_-82350_UNITS      = 'DEGREES'
 
           \begintext
 
           \begindata
 
           FRAME_CASSINI_MAG_MINUS   = -82351
           FRAME_-82351_NAME         = 'CASSINI_MAG_MINUS'
           FRAME_-82351_CLASS        = 4
           FRAME_-82351_CLASS_ID     = -82351
           FRAME_-82351_CENTER       = -82
           TKFRAME_-82351_SPEC       = 'ANGLES'
           TKFRAME_-82351_RELATIVE   = 'CASSINI_SC_COORD'
           TKFRAME_-82351_ANGLES     = (   0.0,    90.0,     0.0 )
           TKFRAME_-82351_AXES       = (     1,       2,       3 )
           TKFRAME_-82351_UNITS      = 'DEGREES'
 
           \begintext
 
           \begindata
 
           FRAME_CASSINI_VIMS_RAD    = -82378
           FRAME_-82378_NAME         = 'CASSINI_VIMS_RAD'
           FRAME_-82378_CLASS        = 4
           FRAME_-82378_CLASS_ID     = -82378
           FRAME_-82378_CENTER       = -82
           TKFRAME_-82378_SPEC       = 'ANGLES'
           TKFRAME_-82378_RELATIVE   = 'CASSINI_SC_COORD'
           TKFRAME_-82378_ANGLES     = (   0.0,     0.0,     0.0 )
           TKFRAME_-82378_AXES       = (     1,       2,       3 )
           TKFRAME_-82378_UNITS      = 'DEGREES'
 
           \begintext
 
 
RPWS Frames
 
           \begindata
 
           FRAME_CASSINI_RPWS        = -82730
           FRAME_-82730_NAME         = 'CASSINI_RPWS'
           FRAME_-82730_CLASS        = 4
           FRAME_-82730_CLASS_ID     = -82730
           FRAME_-82730_CENTER       = -82
           TKFRAME_-82730_SPEC       = 'ANGLES'
           TKFRAME_-82730_RELATIVE   = 'CASSINI_SC_COORD'
           TKFRAME_-82730_ANGLES     = (   0.0,    90.0,     0.0 )
           TKFRAME_-82730_AXES       = (     1,       2,       3 )
           TKFRAME_-82730_UNITS      = 'DEGREES'
 
           \begintext
 
   The following four frame definitions were provided in [14].
 
           \begindata
 
           FRAME_CASSINI_RPWS_EXPLUS = -82731
           FRAME_-82731_NAME         = 'CASSINI_RPWS_EXPLUS'
           FRAME_-82731_CLASS        = 4
           FRAME_-82731_CLASS_ID     = -82731
           FRAME_-82731_CENTER       = -82
           TKFRAME_-82731_SPEC       = 'ANGLES'
           TKFRAME_-82731_RELATIVE   = 'CASSINI_SC_COORD'
           TKFRAME_-82731_ANGLES     = ( -16.9,  -107.6,     0.0 )
           TKFRAME_-82731_AXES       = (     3,       2,       1 )
           TKFRAME_-82731_UNITS      = 'DEGREES'
 
           \begintext
 
           \begindata
 
           FRAME_CASSINI_RPWS_EXMINUS= -82732
           FRAME_-82732_NAME         = 'CASSINI_RPWS_EXMINUS'
           FRAME_-82732_CLASS        = 4
           FRAME_-82732_CLASS_ID     = -82732
           FRAME_-82732_CENTER       = -82
           TKFRAME_-82732_SPEC       = 'ANGLES'
           TKFRAME_-82732_RELATIVE   = 'CASSINI_SC_COORD'
           TKFRAME_-82732_ANGLES     = (-163.1,  -107.6,     0.0 )
           TKFRAME_-82732_AXES       = (     3,       2,       1 )
           TKFRAME_-82732_UNITS      = 'DEGREES'
 
           \begintext
 
           \begindata
 
           FRAME_CASSINI_RPWS_EZPLUS = -82733
           FRAME_-82733_NAME         = 'CASSINI_RPWS_EZPLUS'
           FRAME_-82733_CLASS        = 4
           FRAME_-82733_CLASS_ID     = -82733
           FRAME_-82733_CENTER       = -82
           TKFRAME_-82733_SPEC       = 'ANGLES'
           TKFRAME_-82733_RELATIVE   = 'CASSINI_SC_COORD'
           TKFRAME_-82733_ANGLES     = ( -91.2,   -31.4,     0.0 )
           TKFRAME_-82733_AXES       = (     3,       2,       1 )
           TKFRAME_-82733_UNITS      = 'DEGREES'
 
           \begintext
 
           \begindata
 
           FRAME_CASSINI_RPWS_LP     = -82734
           FRAME_-82734_NAME         = 'CASSINI_RPWS_LP'
           FRAME_-82734_CLASS        = 4
           FRAME_-82734_CLASS_ID     = -82734
           FRAME_-82734_CENTER       = -82
           TKFRAME_-82734_SPEC       = 'ANGLES'
           TKFRAME_-82734_RELATIVE   = 'CASSINI_SC_COORD'
           TKFRAME_-82734_ANGLES     = ( 180.0,   -90.0,     0.0 )
           TKFRAME_-82734_AXES       = (     3,       2,       1 )
           TKFRAME_-82734_UNITS      = 'DEGREES'
 
           \begintext
 
 
INMS Frames
 
   The INMS boresight points nominally along the -X spacecraft axis.
 
           \begindata
 
           FRAME_CASSINI_INMS        = -82740
           FRAME_-82740_NAME         = 'CASSINI_INMS'
           FRAME_-82740_CLASS        = 4
           FRAME_-82740_CLASS_ID     = -82740
           FRAME_-82740_CENTER       = -82
           TKFRAME_-82740_SPEC       = 'ANGLES'
           TKFRAME_-82740_RELATIVE   = 'CASSINI_SC_COORD'
           TKFRAME_-82740_ANGLES     = (  00.0,   -90.0,     0.0 )
           TKFRAME_-82740_AXES       = (     1,       2,       3 )
           TKFRAME_-82740_UNITS      = 'DEGREES'
 
           \begintext
 
 
MIMI Frames
 
           \begindata
 
           FRAME_CASSINI_MIMI_CHEMS  = -82760
           FRAME_-82760_NAME         = 'CASSINI_MIMI_CHEMS'
           FRAME_-82760_CLASS        = 4
           FRAME_-82760_CLASS_ID     = -82760
           FRAME_-82760_CENTER       = -82
           TKFRAME_-82760_SPEC       = 'ANGLES'
           TKFRAME_-82760_RELATIVE   = 'CASSINI_SC_COORD'
           TKFRAME_-82760_ANGLES     = (   0.0,  -90.0,     0.0 )
           TKFRAME_-82760_AXES       = (     1,      2,       3 )
           TKFRAME_-82760_UNITS      = 'DEGREES'
 
           \begintext
 
           \begindata
 
           FRAME_CASSINI_MIMI_INCA   = -82761
           FRAME_-82761_NAME         = 'CASSINI_MIMI_INCA'
           FRAME_-82761_CLASS        = 4
           FRAME_-82761_CLASS_ID     = -82761
           FRAME_-82761_CENTER       = -82
           TKFRAME_-82761_SPEC       = 'ANGLES'
           TKFRAME_-82761_RELATIVE   = 'CASSINI_SC_COORD'
           TKFRAME_-82761_ANGLES     = ( -90.0,   0.0,     0.0 )
           TKFRAME_-82761_AXES       = (     1,     2,       3 )
           TKFRAME_-82761_UNITS      = 'DEGREES'
 
           \begintext
 
           \begindata
 
           FRAME_CASSINI_MIMI_LEMMS1 = -82762
           FRAME_-82762_NAME         = 'CASSINI_MIMI_LEMMS1'
           FRAME_-82762_CLASS        = 3
           FRAME_-82762_CLASS_ID     = -82762
           FRAME_-82762_CENTER       = -82
           CK_-82762_SCLK            = -82
           CK_-82762_SPK             = -82
 
           \begintext
 
           \begindata
 
           FRAME_CASSINI_MIMI_LEMMS2 = -82763
           FRAME_-82763_NAME         = 'CASSINI_MIMI_LEMMS2'
           FRAME_-82763_CLASS        = 3
           FRAME_-82763_CLASS_ID     = -82763
           FRAME_-82763_CENTER       = -82
           CK_-82763_SCLK            = -82
           CK_-82763_SPK             = -82
 
           \begintext
 
 
CDA Frames
 
   The CDA frame is currently listed as a CK based frame. This may change once
   decisions are made as to exactly how the CDA frame chain is enumerated.
 
           \begindata
 
           FRAME_CASSINI_CDA        = -82790
           FRAME_-82790_NAME        = 'CASSINI_CDA'
           FRAME_-82790_CLASS       = 3
           FRAME_-82790_CLASS_ID    = -82790
           FRAME_-82790_CENTER      = -82
           CK_-82790_SCLK           = -82
           CK_-82790_SPK            = -82
 
           \begintext
 
 
RADAR Frames
 
   The RADAR instrument has it's boresight along the spacecraft -Z axis.
 
           \begindata
 
           FRAME_CASSINI_RADAR_1     = -82810
           FRAME_-82810_NAME         = 'CASSINI_RADAR_1'
           FRAME_-82810_CLASS        = 4
           FRAME_-82810_CLASS_ID     = -82810
           FRAME_-82810_CENTER       = -82
           TKFRAME_-82810_SPEC       = 'ANGLES'
           TKFRAME_-82810_RELATIVE   = 'CASSINI_SC_COORD'
           TKFRAME_-82810_ANGLES     = ( 177.8,     0.0,     0.0 )
           TKFRAME_-82810_AXES       = (     1,       2,       3 )
           TKFRAME_-82810_UNITS      = 'DEGREES'
 
           \begintext
 
           \begindata
 
           FRAME_CASSINI_RADAR_2     = -82811
           FRAME_-82811_NAME         = 'CASSINI_RADAR_2'
           FRAME_-82811_CLASS        = 4
           FRAME_-82811_CLASS_ID     = -82811
           FRAME_-82811_CENTER       = -82
           TKFRAME_-82811_SPEC       = 'ANGLES'
           TKFRAME_-82811_RELATIVE   = 'CASSINI_SC_COORD'
           TKFRAME_-82811_ANGLES     = ( 179.15,     0.0,     0.0 )
           TKFRAME_-82811_AXES       = (      1,       2,       3 )
           TKFRAME_-82811_UNITS      = 'DEGREES'
 
           \begintext
 
           \begindata
 
           FRAME_CASSINI_RADAR_3     = -82812
           FRAME_-82812_NAME         = 'CASSINI_RADAR_3'
           FRAME_-82812_CLASS        = 4
           FRAME_-82812_CLASS_ID     = -82812
           FRAME_-82812_CENTER       = -82
           TKFRAME_-82812_SPEC       = 'ANGLES'
           TKFRAME_-82812_RELATIVE   = 'CASSINI_SC_COORD'
           TKFRAME_-82812_ANGLES     = ( 180.0,     0.0,     0.0 )
           TKFRAME_-82812_AXES       = (     1,       2,       3 )
           TKFRAME_-82812_UNITS      = 'DEGREES'
 
           \begintext
 
           \begindata
 
           FRAME_CASSINI_RADAR_4     = -82813
           FRAME_-82813_NAME         = 'CASSINI_RADAR_4'
           FRAME_-82813_CLASS        = 4
           FRAME_-82813_CLASS_ID     = -82813
           FRAME_-82813_CENTER       = -82
           TKFRAME_-82813_SPEC       = 'ANGLES'
           TKFRAME_-82813_RELATIVE   = 'CASSINI_SC_COORD'
           TKFRAME_-82813_ANGLES     = ( 180.85,     0.0,     0.0 )
           TKFRAME_-82813_AXES       = (      1,       2,       3 )
           TKFRAME_-82813_UNITS      = 'DEGREES'
 
           \begintext
 
           \begindata
 
           FRAME_CASSINI_RADAR_5     = -82814
           FRAME_-82814_NAME         = 'CASSINI_RADAR_5'
           FRAME_-82814_CLASS        = 4
           FRAME_-82814_CLASS_ID     = -82814
           FRAME_-82814_CENTER       = -82
           TKFRAME_-82814_SPEC       = 'ANGLES'
           TKFRAME_-82814_RELATIVE   = 'CASSINI_SC_COORD'
           TKFRAME_-82814_ANGLES     = ( 182.2,     0.0,     0.0 )
           TKFRAME_-82814_AXES       = (     1,       2,       3 )
           TKFRAME_-82814_UNITS      = 'DEGREES'
 
           \begintext
 
 
CAPS Frames
 
   The CAPS frame is currently listed as a CK based frame. This may change
   once decisions are made as to exactly how the CAPS frame chain is
   enumerated.
 
           \begindata
 
           FRAME_CASSINI_CAPS       = -82820
           FRAME_-82820_NAME        = 'CASSINI_CAPS'
           FRAME_-82820_CLASS       = 3
           FRAME_-82820_CLASS_ID    = -82820
           FRAME_-82820_CENTER      = -82
           CK_-82820_SCLK           = -82
           CK_-82820_SPK            = -82
 
           \begintext
 
 
CIRS Radiator
 
           \begindata
 
           FRAME_CASSINI_CIRS_RAD    = -82898
           FRAME_-82898_NAME         = 'CASSINI_CIRS_RAD'
           FRAME_-82898_CLASS        = 4
           FRAME_-82898_CLASS_ID     = -82898
           FRAME_-82898_CENTER       = -82
           TKFRAME_-82898_SPEC       = 'ANGLES'
           TKFRAME_-82898_RELATIVE   = 'CASSINI_SC_COORD'
           TKFRAME_-82898_ANGLES     = (   0.0,     0.0,     0.0 )
           TKFRAME_-82898_AXES       = (     1,       2,       3 )
           TKFRAME_-82898_UNITS      = 'DEGREES'
 
           \begintext
 
 
Antenna Frames
 
   These frames are implemented using the nominal definitions established for
   each antenna frame. The XBAND, KABAND, KUBAND, and SBAND frames are all
   frames associated with the orbiter's High Gain Antenna. For reasons of
   consistency with AACS, PDT, and sequencing software these names were
   chosen.
 
           \begindata
 
           FRAME_CASSINI_XBAND       = -82104
           FRAME_-82104_NAME         = 'CASSINI_XBAND'
           FRAME_-82104_CLASS        = 4
           FRAME_-82104_CLASS_ID     = -82104
           FRAME_-82104_CENTER       = -82
           TKFRAME_-82104_SPEC       = 'ANGLES'
           TKFRAME_-82104_RELATIVE   = 'CASSINI_SC_COORD'
           TKFRAME_-82104_ANGLES     = (   0.0,  0.0,  180.0 )
           TKFRAME_-82104_AXES       = (     3,    2,      1 )
           TKFRAME_-82104_UNITS      = 'DEGREES'
 
           \begintext
 
           \begindata
 
           FRAME_CASSINI_KABAND      = -82105
           FRAME_-82105_NAME         = 'CASSINI_KABAND'
           FRAME_-82105_CLASS        = 4
           FRAME_-82105_CLASS_ID     = -82105
           FRAME_-82105_CENTER       = -82
           TKFRAME_-82105_SPEC       = 'ANGLES'
           TKFRAME_-82105_RELATIVE   = 'CASSINI_SC_COORD'
           TKFRAME_-82105_ANGLES     = (   0.0,  0.0, 180.0 )
           TKFRAME_-82105_AXES       = (     3,    2,     1 )
           TKFRAME_-82105_UNITS      = 'DEGREES'
 
           \begintext
 
           \begindata
 
           FRAME_CASSINI_KUBAND      = -82106
           FRAME_-82106_NAME         = 'CASSINI_KUBAND'
           FRAME_-82106_CLASS        = 4
           FRAME_-82106_CLASS_ID     = -82106
           FRAME_-82106_CENTER       = -82
           TKFRAME_-82106_SPEC       = 'ANGLES'
           TKFRAME_-82106_RELATIVE   = 'CASSINI_SC_COORD'
           TKFRAME_-82106_ANGLES     = (   0.0,  0.0,  180.0 )
           TKFRAME_-82106_AXES       = (     3,    2,      1 )
           TKFRAME_-82106_UNITS      = 'DEGREES'
 
           \begintext
 
           \begindata
 
           FRAME_CASSINI_SBAND       = -82107
           FRAME_-82107_NAME         = 'CASSINI_SBAND'
           FRAME_-82107_CLASS        = 4
           FRAME_-82107_CLASS_ID     = -82107
           FRAME_-82107_CENTER       = -82
           TKFRAME_-82107_SPEC       = 'ANGLES'
           TKFRAME_-82107_RELATIVE   = 'CASSINI_SC_COORD'
           TKFRAME_-82107_ANGLES     = (   0.0, 0.0, 180.0 )
           TKFRAME_-82107_AXES       = (     3,   2,     1 )
           TKFRAME_-82107_UNITS      = 'DEGREES'
 
           \begintext
 

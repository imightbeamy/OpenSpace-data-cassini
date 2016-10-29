KPL/IK
 
Cassini Antenna Frame Kernel 
===========================================================================
 
     This frame kernel contains the Cassini communication 
     antenna frame rotations relative to the Cassini spacecraft 
     bus frame. 

 
Version and Date
--------------------------------------------------------

     Version 2.0 -- 29 Sep 1998 -- Jeff Bytof

        Corrected Euler angle rotation for LGA-2.

        Added an identifier for each antenna to define
        the boresight vector in the antenna frame.

     Version 1.0 -- 14 May 1998 -- Jeff Bytof
     
        Initial Release. Based on visual examination of the 
        Cassini spacecraft blueprints.  Calibrated values
        not yet available.
 

References
--------------------------------------------------------
 
         1.   Kevin Tong, JPL, provided the Cassini spacecraft 
			     blueprints.               

         2.   ``C-kernel Required Reading''

         3.   ``Kernel Pool Required Reading''

         4.   ``Frames Required Reading''


 
Implementation Notes
--------------------------------------------------------
 
     This file is used by the SPICE system as follows: programs that make
     use of this frame kernel must `load' the kernel, normally during program
     initialization. Loading the kernel associates data items with their
     names in a data structure called the `kernel pool'. The SPICELIB
     routine LDPOOL loads a kernel file into the pool as shown below.
 
 
        CALL LDPOOL ( frame_kernel_name )
 
 
     In order for a program or subroutine to extract data from the pool,
     the SPICELIB routines GDPOOL and GIPOOL are used. See [3] for more details.
 
     This file was created and may be updated with a text editor or word
     processor.

 
Naming Conventions
--------------------------------------------------------
 
     All names referencing values in this frame kernel start with the
     characters `FRAME', 'CK' or `TKFRAME' followed by the Cassini
     spacecraft bus ID number (-82000) added to zero or the three digit antenna
     number (101-103).  
 
     The remainder of the name is an underscore character followed by the
     unique name of the data item. For example, the Cassini antenna offsets 
     relative to the spacecraft frame, given as three Euler angles, are 
     specified using two items:
 
        TKFRAME_-82101_ANGLES    = (    0.0,    180.0,     0.0 )
        TKFRAME_-82101_AXES      = (     3,        2,       1  )
 
     The upper bound on the length of the name of any data item is 32
     characters.
 
     If the same item is included in more then one file, or if the same
     item appears more than once within a single file, the latest value
     supersedes any earlier values.
	  
     See [4] for a discussion of the FRAME and CK keywords.
 
 
TKFRAME Keyword Description
--------------------------------------------------------
 
     This section describes the TKFRAME keywords. The rotational offsets 
     can be given as three angles -- ROLL, PITCH and YAW, from which 
     a rotation matrix can be constructed that will transform the components of 
     a vector expressed in the spacecraft frame to components expressed in 
     the antenna fixed frame. For example, if x, y and z are the components of 
     a vector expressed in the spacecraft frame, X, Y and Z will be the 
     components of the same vector expressed in the antenna fixed frame: 
 
 
        [ X ]    [     ]  [ x ]
        | Y |  = | ROT |  | y |
        [ Z ]    [     ]  [ z ]
 
 
     where ROT is the rotation matrix constructed from the rotation angles
     as follows:
     
        [     ]   [     ]  [       ]  [      ]
        [ ROT ] = [ YAW ]  [ PITCH ]  [ ROLL ]
        [     ]   [     ]  [       ]  [      ]
                         Z          Y         X
                         
     where each of three matrixes on the right side represent a coordinate
     frame rotation by the given angle around the indicated axis. See the
     SPICELIB routine EUL2M for more information about constructing
     a rotation matrix from a set of rotation angles.
 
     Following are some examples of use of the TKFRAME keywords:
	  
     The keyword that indicates which frame the axis rotations are
     referred to is:
	  
	     TKFRAME_-82101_RELATIVE  = 'CASSINI_SC_BUS'

	         
     The keyword TKFRAME_-82101_ANGLES contain these values, in radians, 
     in the following order:
	  
                                       ``YAW''    ``PITCH''  ``ROLL''   

        TKFRAME_-82101_ANGLES    = (     0.0,       180.0,     0.0  )
        
     The keyword TKFRAME_-82101_AXES contains integer codes of the 
     corresponding axes of rotations (1 -- X, 2 -- Y, 3 -- Z).
	  
        TKFRAME_-82101_AXES      = (     3,         2,          1  )

	  
     The keyword TKFRAME_-82101_UNITS gives the units of the angles.
     
        TKFRAME_-82101_UNITS     = 'DEGREES'
 


Spacecraft Bus
--------------------------------------------------------
 
     The following data represents the basic spacecraft bus, to 
     which the Cassini antenna orientations are related by a constant set of
     rotations.  Spacecraft bus attitude with respect to an inertial frame is
     provided by a C kernel (see [2] for more information).

\begindata

   FRAME_CASSINI_SC_BUS     = -82000
   FRAME_-82000_NAME        = 'CASSINI_SC_BUS'
   FRAME_-82000_CLASS       = 3
   FRAME_-82000_CLASS_ID    = -82000
   FRAME_-82000_CENTER      = -82000
   CK_-82000_SCLK           = -82
   CK_-82000_SPK            = -82


\begintext 
 

Antenna Frame Definitions
--------------------------------------------------------

     Here are the antenna frame definitions for Cassini.  These will be utilized 
     by SPICE's FRAMES subsystem to provide automatic state transformations 
     to/from the Cassini frame.  Note that SPICE toolkit version N0047 
     or higher is required to use fixed-offset frames.
   
     Note that angles in the frame definitions are specified for the "from
     instrument to base (relative to) frame" transformation.


\begintext 

        HGA = High Gain Antenna (points approximately along S/C -Z axis)  
 
\begindata

        FRAME_CASSINI_HGA        = -82101
        FRAME_-82101_NAME        = 'CASSINI_HGA'
        FRAME_-82101_CLASS       = 4
        FRAME_-82101_CLASS_ID    = -82101
        FRAME_-82101_CENTER      = -82
        TKFRAME_-82101_SPEC      = 'ANGLES'
        TKFRAME_-82101_RELATIVE  = 'CASSINI_SC_BUS'
        TKFRAME_-82101_ANGLES    = ( 0.0,  180.0,  0.0 )
        TKFRAME_-82101_AXES      = (  3,      2,    1  )
        TKFRAME_-82101_UNITS     = 'DEGREES'
        TKFRAME_-82101_BORESIGHT = ( 0.0,  0.0,  1.0 )  

\begintext

        LGA-1 = Low Gain Antenna One (points approximately along S/C -Z axis)

\begindata
        
        FRAME_CASSINI_LGA-1      = -82102
        FRAME_-82102_NAME        = 'CASSINI_LGA-1'
        FRAME_-82102_CLASS       = 4
        FRAME_-82102_CLASS_ID    = -82102
        FRAME_-82102_CENTER      = -82
        TKFRAME_-82102_SPEC      = 'ANGLES'
        TKFRAME_-82102_RELATIVE  = 'CASSINI_SC_BUS'
        TKFRAME_-82102_ANGLES    = ( 0.0,   180.0,  0.0 )
        TKFRAME_-82102_AXES      = (   3,      2,     1  ) 
        TKFRAME_-82102_UNITS     = 'DEGREES'
        TKFRAME_-82102_BORESIGHT = ( 0.0,  0.0,  1.0 ) 


\begintext

        LGA-2 = Low Gain Antenna Two (points approximately along S/C -X axis)

\begindata

        FRAME_CASSINI_LGA-2      = -82103
        FRAME_-82103_NAME        = 'CASSINI_LGA-2'
        FRAME_-82103_CLASS       = 4
        FRAME_-82103_CLASS_ID    = -82103
        FRAME_-82103_CENTER      = -82
        TKFRAME_-82103_SPEC      = 'ANGLES'
        TKFRAME_-82103_RELATIVE  = 'CASSINI_SC_BUS'
        TKFRAME_-82103_ANGLES    = (   0.0,     90.0,     0.0 )
        TKFRAME_-82103_AXES      = (     3,        2,       1 ) 
        TKFRAME_-82103_UNITS     = 'DEGREES'
        TKFRAME_-82103_BORESIGHT = ( 0.0,  0.0,  1.0 ) 

\begintext


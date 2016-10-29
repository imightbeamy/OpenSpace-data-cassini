DAFETF NAIF DAF ENCODED TRANSFER FILE
'DAF/CK  '
'2'
'6'
'CASSINI FIXED-OFFSET INSTRUMENT INS TO ART C-KERNEL         '
BEGIN_ARRAY 1 19
'CASSINI: CAPS -> CAPS_ART               '
'217561D756^A'
'D66F7C82C7^A'
'-14384'
'-14385'
'3'
'1'
19
'1^1'
'0^0'
'0^0'
'0^0'
'0^0'
'0^0'
'0^0'
'1^1'
'0^0'
'0^0'
'0^0'
'0^0'
'0^0'
'0^0'
'217561D756^A'
'D66F7C82C7^A'
'217561D756^A'
'1^1'
'2^1'
END_ARRAY 1 19
BEGIN_ARRAY 2 19
'CASSINI: CDA -> CDA_ART                 '
'217561D756^A'
'D66F7C82C7^A'
'-14366'
'-14367'
'3'
'1'
19
'61F78A9ABAA59^0'
'-EC835E79946A3^0'
'0^0'
'0^0'
'0^0'
'0^0'
'0^0'
'61F78A9ABAA59^0'
'-EC835E79946A3^0'
'0^0'
'0^0'
'0^0'
'0^0'
'0^0'
'217561D756^A'
'D66F7C82C7^A'
'217561D756^A'
'1^1'
'2^1'
END_ARRAY 2 19
BEGIN_ARRAY 3 19
'CASSINI: MIMI_LEMMS1 -> MIMI_LEMMS_ART  '
'217561D756^A'
'D66F7C82C7^A'
'-1434A'
'-1434C'
'3'
'1'
19
'B504F333F9DE68^0'
'-B504F333F9DE6^0'
'0^0'
'0^0'
'0^0'
'0^0'
'0^0'
'B504F333F9DE68^0'
'-B504F333F9DE6^0'
'0^0'
'0^0'
'0^0'
'0^0'
'0^0'
'217561D756^A'
'D66F7C82C7^A'
'217561D756^A'
'1^1'
'2^1'
END_ARRAY 3 19
BEGIN_ARRAY 4 19
'CASSINI: MIMI_LEMMS2 -> MIMI_LEMMS_ART  '
'217561D756^A'
'D66F7C82C7^A'
'-1434B'
'-1434C'
'3'
'1'
19
'B504F333F9DE68^0'
'B504F333F9DE6^0'
'0^0'
'0^0'
'0^0'
'0^0'
'0^0'
'B504F333F9DE68^0'
'B504F333F9DE6^0'
'0^0'
'0^0'
'0^0'
'0^0'
'0^0'
'217561D756^A'
'D66F7C82C7^A'
'217561D756^A'
'1^1'
'2^1'
END_ARRAY 4 19
TOTAL_ARRAYS 4
 ~NAIF/SPC BEGIN COMMENTS~

Cassini Instrument Frame to Articulation Frame C-Kernel
==============================================================================

   This C-kernel contains 4 individual segments that prescribe fixed offset
   rotations from the articulation frames CASSINI_<INS>_ART to the instrument
   frames CASSINI_<INS>. Detailed information for each segment and its
   construction follows:


References
----------------------------------------------------------

            1.   ``C-kernel Required Reading''

            2.   ``Kernel Pool Required Reading''

            3.   ``Frames Required Reading''

            4.   Cassini Frames Kernel


Segment #1 ``CASSINI: CAPS_ART -> CAPS''
----------------------------------------------------------

   This segment contains information necessary to connect the frame
   CASSINI_CAPS with CASSINI_CAPS_ART for epochs from launch until the first
   spacecraft clock rollover. Specifics of segment construction:

           Cassini SCLK Used:   cas00054.tsc
           Start Epoch (UTC):   October 15, 1997
           Final Epoch (UTC):   January 1, 2001
           Start Epoch (Ticks): 1.4370326715800E+11
           Final Epoch (Ticks): 9.2099343226300E+11
           Instrument ID Code:  -82820
           Reference ID Code:   -82821

   Since CAPS in its nominal configuration (zero-angle) utilizes the
   spacecraft frame, the boresight is -Y in the instrument frame and the
   articulation axis is Z in the instrument frame. This requires that the
   identity transformation connect the instrument frame with the articulation
   frame as follows:

           [     ]    [     ]  [     ]  [     ]
           [ ROT ]  = [ 0.0 ]  [ 0.0 ]  [ 0.0 ]
           [     ]    [     ]  [     ]  [     ]
                             Z        Y        X

           where [x]  represents the rotation matrix of a given angle x about
                    i
           axis i.

   The matrix ROT when left multiplied into vectors in the CASSINI_CAPS_ART
   frame yields vectors in the CASSINI_CAPS frame.


Segment #2 ``CASSINI: CDA -> CDA_ART''
----------------------------------------------------------

   This segment contains information necessary to connect the frame
   CASSINI_CDA with CASSINI_CDA_ART for epochs from launch until the first
   spacecraft clock rollover. Specifics of segment construction:

           Cassini SCLK Used:   cas00054.tsc
           Start Epoch (UTC):   October 15, 1997
           Final Epoch (UTC):   January 1, 2001
           Start Epoch (Ticks): 1.4370326715800E+11
           Final Epoch (Ticks): 9.2099343226300E+11
           Instrument ID Code:  -82790
           Reference ID Code:   -82791

   The CDA boresight is 135 degrees off of the articulation axis (Z-axis in
   the CASSINI_CDA_ART frame). The CDA boresight is the Z-axis in the
   instrument frame, so construct a frame that performs the necessary
   rotation.

           [     ]    [       ]  [     ]  [     ]
           [ ROT ]  = [ 135.0 ]  [ 0.0 ]  [ 0.0 ]
           [     ]    [       ]  [     ]  [     ]
                               Z        Y        X

           where [x]  represents the rotation matrix of a given angle x about
                    i
           axis i.

   The matrix ROT when left multiplied into vectors in the CASSINI_CDA_ART
   frame yields vectors in the CASSINI_CDA frame.


Segment #3 ``CASSINI: MIMI_LEMMS1 -> MIMI_LEMMS_ART''
----------------------------------------------------------

   This segment contains information necessary to connect the frame
   CASSINI_MIMI_LEMMS1 with CASSINI_MIMI_LEMMS_ART for epochs from launch
   until the first spacecraft clock rollover. Specifics of segment
   construction:

           Cassini SCLK Used:   cas00054.tsc
           Start Epoch (UTC):   October 15, 1997
           Final Epoch (UTC):   January 1, 2001
           Start Epoch (Ticks): 1.4370326715800E+11
           Final Epoch (Ticks): 9.2099343226300E+11
           Instrument ID Code:  -82762
           Reference ID Code:   -82764

   MIMI_LEMMS1's boresight is 90 degrees off the articulation axis (the Z-axis
   in the CASSINI_MIMI_LEMMS_ART frame). Construct a frame that performs the
   necessary rotation.

           [     ]    [      ]  [     ]  [     ]
           [ ROT ]  = [ 90.0 ]  [ 0.0 ]  [ 0.0 ]
           [     ]    [      ]  [     ]  [     ]
                              Z        Y        X

           where [x]  represents the rotation matrix of a given angle x about
                    i
           axis i.

   The matrix ROT when left multiplied into vectors in the
   CASSINI_MIMI_LEMMS_ART frame yields vectors in the CASSINI_MIMI_LEMMS1
   frame.


Segment #4 ``CASSINI: MIMI_LEMMS2 -> MIMI_LEMMS_ART''
----------------------------------------------------------

   This segment contains information necessary to connect the frame
   CASSINI_MIMI_LEMMS2 with CASSINI_MIMI_LEMMS_ART for epochs from launch
   until the first spacecraft clock rollover. Specifics of segment
   construction:

           Cassini SCLK Used:   cas00054.tsc
           Start Epoch (UTC):   October 15, 1997
           Final Epoch (UTC):   January 1, 2001
           Start Epoch (Ticks): 1.4370326715800E+11
           Final Epoch (Ticks): 9.2099343226300E+11
           Instrument ID Code:  -82763
           Reference ID Code:   -82764

   MIMI_LEMMS2's boresight is -90 degrees off the articulation axis (the
   Z-axis in the CASSINI_MIMI_LEMMS_ART frame). Construct a frame that
   performs the necessary rotation.

           [     ]    [       ]  [     ]  [     ]
           [ ROT ]  = [ -90.0 ]  [ 0.0 ]  [ 0.0 ]
           [     ]    [       ]  [     ]  [     ]
                               Z        Y        X

           where [x]  represents the rotation matrix of a given angle x about
                    i
           axis i.

   The matrix ROT when left multiplied into vectors in the
   CASSINI_MIMI_LEMMS_ART frame yields vectors in the CASSINI_MIMI_LEMMS2
   frame.

 ~NAIF/SPC END COMMENTS~

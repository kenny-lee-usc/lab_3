VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_1
        SIGNAL XLXN_2
        SIGNAL XLXN_3
        SIGNAL XLXN_4
        SIGNAL XLXN_5
        SIGNAL XLXN_6
        SIGNAL XLXN_7
        SIGNAL XLXN_8
        SIGNAL match
        SIGNAL datacomp(55:0)
        SIGNAL wildcard(6:0)
        SIGNAL XLXN_13(6:0)
        SIGNAL XLXN_14(6:0)
        SIGNAL XLXN_15(6:0)
        SIGNAL XLXN_16(6:0)
        SIGNAL XLXN_17(6:0)
        SIGNAL XLXN_18(55:0)
        SIGNAL XLXN_19(55:0)
        SIGNAL XLXN_20(55:0)
        SIGNAL XLXN_21(55:0)
        SIGNAL XLXN_22(55:0)
        SIGNAL XLXN_23(55:0)
        SIGNAL XLXN_24(55:0)
        SIGNAL datain(55:0)
        SIGNAL datain(63:8)
        SIGNAL datain(71:16)
        SIGNAL datain(79:24)
        SIGNAL datain(87:32)
        SIGNAL datain(95:40)
        SIGNAL datain(103:48)
        SIGNAL datain(111:56)
        SIGNAL datain(111:0)
        PORT Output match
        PORT Input datacomp(55:0)
        PORT Input wildcard(6:0)
        PORT Input datain(111:0)
        BEGIN BLOCKDEF comparator
            TIMESTAMP 2025 1 31 7 14 21
            RECTANGLE N 64 -192 320 0 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            LINE N 320 -160 384 -160 
        END BLOCKDEF
        BEGIN BLOCKDEF or8
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 48 -64 
            LINE N 0 -128 48 -128 
            LINE N 0 -192 48 -192 
            LINE N 0 -384 48 -384 
            LINE N 0 -448 48 -448 
            LINE N 0 -512 48 -512 
            LINE N 256 -288 192 -288 
            LINE N 0 -320 64 -320 
            LINE N 0 -256 64 -256 
            ARC N 28 -336 204 -160 192 -288 112 -336 
            LINE N 112 -240 48 -240 
            ARC N 28 -416 204 -240 112 -240 192 -288 
            ARC N -40 -344 72 -232 48 -240 48 -336 
            LINE N 112 -336 48 -336 
            LINE N 48 -336 48 -512 
            LINE N 48 -64 48 -240 
        END BLOCKDEF
        BEGIN BLOCK XLXI_2 comparator
            PIN a(55:0) datacomp(55:0)
            PIN b(55:0) datain(55:0)
            PIN amask(6:0) wildcard(6:0)
            PIN match XLXN_1
        END BLOCK
        BEGIN BLOCK XLXI_3 comparator
            PIN a(55:0) datacomp(55:0)
            PIN b(55:0) datain(63:8)
            PIN amask(6:0) wildcard(6:0)
            PIN match XLXN_2
        END BLOCK
        BEGIN BLOCK XLXI_4 comparator
            PIN a(55:0) datacomp(55:0)
            PIN b(55:0) datain(71:16)
            PIN amask(6:0) wildcard(6:0)
            PIN match XLXN_3
        END BLOCK
        BEGIN BLOCK XLXI_5 comparator
            PIN a(55:0) datacomp(55:0)
            PIN b(55:0) datain(79:24)
            PIN amask(6:0) wildcard(6:0)
            PIN match XLXN_4
        END BLOCK
        BEGIN BLOCK XLXI_6 comparator
            PIN a(55:0) datacomp(55:0)
            PIN b(55:0) datain(87:32)
            PIN amask(6:0) wildcard(6:0)
            PIN match XLXN_5
        END BLOCK
        BEGIN BLOCK XLXI_7 comparator
            PIN a(55:0) datacomp(55:0)
            PIN b(55:0) datain(95:40)
            PIN amask(6:0) wildcard(6:0)
            PIN match XLXN_6
        END BLOCK
        BEGIN BLOCK XLXI_8 comparator
            PIN a(55:0) datacomp(55:0)
            PIN b(55:0) datain(103:48)
            PIN amask(6:0) wildcard(6:0)
            PIN match XLXN_7
        END BLOCK
        BEGIN BLOCK XLXI_9 comparator
            PIN a(55:0) datacomp(55:0)
            PIN b(55:0) datain(111:56)
            PIN amask(6:0) wildcard(6:0)
            PIN match XLXN_8
        END BLOCK
        BEGIN BLOCK XLXI_38 or8
            PIN I0 XLXN_8
            PIN I1 XLXN_7
            PIN I2 XLXN_6
            PIN I3 XLXN_5
            PIN I4 XLXN_4
            PIN I5 XLXN_3
            PIN I6 XLXN_2
            PIN I7 XLXN_1
            PIN O match
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_2 992 608 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_3 992 880 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_4 992 1152 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_5 992 1408 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_6 992 1664 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_7 992 1920 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_8 992 2176 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_9 992 2448 R0
        END INSTANCE
        INSTANCE XLXI_38 2016 1584 R0
        BEGIN BRANCH XLXN_1
            WIRE 1376 448 2016 448
            WIRE 2016 448 2016 1072
        END BRANCH
        BEGIN BRANCH XLXN_2
            WIRE 1376 720 1696 720
            WIRE 1696 720 1696 1136
            WIRE 1696 1136 2016 1136
        END BRANCH
        BEGIN BRANCH XLXN_3
            WIRE 1376 992 1680 992
            WIRE 1680 992 1680 1200
            WIRE 1680 1200 2016 1200
        END BRANCH
        BEGIN BRANCH XLXN_4
            WIRE 1376 1248 1696 1248
            WIRE 1696 1248 1696 1264
            WIRE 1696 1264 2016 1264
        END BRANCH
        BEGIN BRANCH XLXN_5
            WIRE 1376 1504 1696 1504
            WIRE 1696 1328 1696 1504
            WIRE 1696 1328 2016 1328
        END BRANCH
        BEGIN BRANCH XLXN_6
            WIRE 1376 1760 1712 1760
            WIRE 1712 1392 1712 1760
            WIRE 1712 1392 2016 1392
        END BRANCH
        BEGIN BRANCH XLXN_7
            WIRE 1376 2016 1728 2016
            WIRE 1728 1456 1728 2016
            WIRE 1728 1456 2016 1456
        END BRANCH
        BEGIN BRANCH XLXN_8
            WIRE 1376 2288 2016 2288
            WIRE 2016 1520 2016 2288
        END BRANCH
        BEGIN BRANCH match
            WIRE 2272 1296 2480 1296
        END BRANCH
        IOMARKER 2480 1296 match R0 28
        BEGIN BRANCH datacomp(55:0)
            WIRE 544 448 784 448
            WIRE 784 448 800 448
            WIRE 800 448 912 448
            WIRE 912 448 992 448
            WIRE 800 448 800 720
            WIRE 800 720 992 720
            WIRE 800 720 800 992
            WIRE 800 992 992 992
            WIRE 800 992 800 1248
            WIRE 800 1248 992 1248
            WIRE 800 1248 800 1504
            WIRE 800 1504 992 1504
            WIRE 800 1504 800 1760
            WIRE 800 1760 992 1760
            WIRE 800 1760 800 2016
            WIRE 800 2016 992 2016
            WIRE 800 2016 800 2288
            WIRE 800 2288 992 2288
        END BRANCH
        IOMARKER 544 448 datacomp(55:0) R180 28
        BEGIN BRANCH wildcard(6:0)
            WIRE 544 576 784 576
            WIRE 784 576 912 576
            WIRE 912 576 992 576
            WIRE 912 576 912 592
            WIRE 912 592 912 848
            WIRE 912 848 992 848
            WIRE 912 848 912 1120
            WIRE 912 1120 992 1120
            WIRE 912 1120 912 1376
            WIRE 912 1376 992 1376
            WIRE 912 1376 912 1632
            WIRE 912 1632 992 1632
            WIRE 912 1632 912 1888
            WIRE 912 1888 912 2144
            WIRE 912 2144 912 2416
            WIRE 912 2416 992 2416
            WIRE 912 2144 992 2144
            WIRE 912 1888 992 1888
        END BRANCH
        IOMARKER 544 576 wildcard(6:0) R180 28
        BEGIN BRANCH datain(55:0)
            WIRE 880 512 992 512
        END BRANCH
        BEGIN BRANCH datain(63:8)
            WIRE 880 784 992 784
        END BRANCH
        BEGIN BRANCH datain(71:16)
            WIRE 880 1056 992 1056
        END BRANCH
        BEGIN BRANCH datain(79:24)
            WIRE 880 1312 992 1312
        END BRANCH
        BEGIN BRANCH datain(87:32)
            WIRE 880 1568 992 1568
        END BRANCH
        BEGIN BRANCH datain(95:40)
            WIRE 880 1824 992 1824
        END BRANCH
        BEGIN BRANCH datain(103:48)
            WIRE 880 2080 992 2080
        END BRANCH
        BEGIN BRANCH datain(111:56)
            WIRE 880 2352 992 2352
        END BRANCH
        BEGIN BRANCH datain(111:0)
            WIRE 528 352 768 352
        END BRANCH
        IOMARKER 528 352 datain(111:0) R180 28
    END SHEET
END SCHEMATIC

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
        SIGNAL XLXN_10
        SIGNAL XLXN_12
        SIGNAL XLXN_15
        SIGNAL XLXN_16
        SIGNAL a(55:0)
        SIGNAL b(55:0)
        SIGNAL amask(6:0)
        SIGNAL amask(6)
        SIGNAL amask(5)
        SIGNAL amask(4)
        SIGNAL amask(3)
        SIGNAL XLXN_7
        SIGNAL XLXN_8
        SIGNAL XLXN_9
        SIGNAL XLXN_11
        SIGNAL XLXN_13
        SIGNAL XLXN_14
        SIGNAL match
        SIGNAL amask(2)
        SIGNAL amask(1)
        SIGNAL amask(0)
        SIGNAL XLXN_40
        SIGNAL b(7:0)
        SIGNAL a(7:0)
        SIGNAL b(15:8)
        SIGNAL a(15:8)
        SIGNAL a(23:16)
        SIGNAL b(23:16)
        SIGNAL a(55:48)
        SIGNAL b(55:48)
        SIGNAL a(47:40)
        SIGNAL b(47:40)
        SIGNAL a(39:32)
        SIGNAL b(39:32)
        SIGNAL a(31:24)
        SIGNAL b(31:24)
        PORT Input a(55:0)
        PORT Input b(55:0)
        PORT Input amask(6:0)
        PORT Output match
        BEGIN BLOCKDEF comp8
            TIMESTAMP 2000 1 1 10 10 10
            RECTANGLE N 64 -384 320 -64 
            LINE N 384 -224 320 -224 
            RECTANGLE N 0 -332 64 -308 
            LINE N 0 -320 64 -320 
            RECTANGLE N 0 -140 64 -116 
            LINE N 0 -128 64 -128 
        END BLOCKDEF
        BEGIN BLOCKDEF and7
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -448 64 -64 
            ARC N 96 -304 192 -208 144 -208 144 -304 
            LINE N 64 -304 144 -304 
            LINE N 144 -208 64 -208 
            LINE N 256 -256 192 -256 
            LINE N 0 -448 64 -448 
            LINE N 0 -384 64 -384 
            LINE N 0 -320 64 -320 
            LINE N 0 -256 64 -256 
            LINE N 0 -192 64 -192 
            LINE N 0 -128 64 -128 
            LINE N 0 -64 64 -64 
        END BLOCKDEF
        BEGIN BLOCKDEF or2b1
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 32 -64 
            CIRCLE N 32 -76 56 -52 
            LINE N 0 -128 64 -128 
            LINE N 256 -96 192 -96 
            LINE N 112 -48 48 -48 
            ARC N 28 -144 204 32 192 -96 112 -144 
            LINE N 112 -144 48 -144 
            ARC N -40 -152 72 -40 48 -48 48 -144 
            ARC N 28 -224 204 -48 112 -48 192 -96 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 comp8
            PIN A(7:0) a(55:48)
            PIN B(7:0) b(55:48)
            PIN EQ XLXN_4
        END BLOCK
        BEGIN BLOCK XLXI_2 comp8
            PIN A(7:0) a(47:40)
            PIN B(7:0) b(47:40)
            PIN EQ XLXN_3
        END BLOCK
        BEGIN BLOCK XLXI_3 comp8
            PIN A(7:0) a(39:32)
            PIN B(7:0) b(39:32)
            PIN EQ XLXN_1
        END BLOCK
        BEGIN BLOCK XLXI_4 comp8
            PIN A(7:0) a(31:24)
            PIN B(7:0) b(31:24)
            PIN EQ XLXN_2
        END BLOCK
        BEGIN BLOCK XLXI_10 comp8
            PIN A(7:0) a(23:16)
            PIN B(7:0) b(23:16)
            PIN EQ XLXN_7
        END BLOCK
        BEGIN BLOCK XLXI_11 comp8
            PIN A(7:0) a(15:8)
            PIN B(7:0) b(15:8)
            PIN EQ XLXN_8
        END BLOCK
        BEGIN BLOCK XLXI_12 comp8
            PIN A(7:0) a(7:0)
            PIN B(7:0) b(7:0)
            PIN EQ XLXN_9
        END BLOCK
        BEGIN BLOCK XLXI_16 or2b1
            PIN I0 amask(4)
            PIN I1 XLXN_1
            PIN O XLXN_15
        END BLOCK
        BEGIN BLOCK XLXI_17 or2b1
            PIN I0 amask(3)
            PIN I1 XLXN_2
            PIN O XLXN_16
        END BLOCK
        BEGIN BLOCK XLXI_15 or2b1
            PIN I0 amask(5)
            PIN I1 XLXN_3
            PIN O XLXN_12
        END BLOCK
        BEGIN BLOCK XLXI_14 or2b1
            PIN I0 amask(6)
            PIN I1 XLXN_4
            PIN O XLXN_10
        END BLOCK
        BEGIN BLOCK XLXI_13 and7
            PIN I0 XLXN_16
            PIN I1 XLXN_15
            PIN I2 XLXN_14
            PIN I3 XLXN_13
            PIN I4 XLXN_12
            PIN I5 XLXN_11
            PIN I6 XLXN_10
            PIN O match
        END BLOCK
        BEGIN BLOCK XLXI_19 or2b1
            PIN I0 amask(2)
            PIN I1 XLXN_7
            PIN O XLXN_11
        END BLOCK
        BEGIN BLOCK XLXI_18 or2b1
            PIN I0 amask(1)
            PIN I1 XLXN_8
            PIN O XLXN_13
        END BLOCK
        BEGIN BLOCK XLXI_20 or2b1
            PIN I0 amask(0)
            PIN I1 XLXN_9
            PIN O XLXN_14
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_10 1984 1216 R0
        INSTANCE XLXI_11 1984 1600 R0
        INSTANCE XLXI_12 1984 1984 R0
        BEGIN BRANCH XLXN_1
            WIRE 1104 1600 1328 1600
        END BRANCH
        INSTANCE XLXI_16 1328 1728 R0
        BEGIN BRANCH XLXN_2
            WIRE 1104 1984 1344 1984
        END BRANCH
        INSTANCE XLXI_17 1344 2112 R0
        BEGIN BRANCH XLXN_3
            WIRE 1104 1216 1360 1216
        END BRANCH
        BEGIN BRANCH XLXN_4
            WIRE 1104 832 1440 832
        END BRANCH
        INSTANCE XLXI_15 1360 1344 R0
        BEGIN BRANCH XLXN_12
            WIRE 1616 1248 1632 1248
            WIRE 1632 1168 1632 1248
            WIRE 1632 1168 2432 1168
            WIRE 2432 1168 2432 1248
            WIRE 2432 1248 3056 1248
        END BRANCH
        BEGIN BRANCH XLXN_15
            WIRE 1584 1632 1600 1632
            WIRE 1600 1552 1600 1632
            WIRE 1600 1552 2864 1552
            WIRE 2864 1440 2864 1552
            WIRE 2864 1440 3056 1440
        END BRANCH
        BEGIN BRANCH XLXN_16
            WIRE 1600 2016 1616 2016
            WIRE 1616 2016 3056 2016
            WIRE 3056 1504 3056 2016
        END BRANCH
        BEGIN BRANCH a(55:0)
            WIRE 240 304 432 304
        END BRANCH
        BEGIN BRANCH b(55:0)
            WIRE 240 384 432 384
        END BRANCH
        IOMARKER 240 304 a(55:0) R180 28
        IOMARKER 240 384 b(55:0) R180 28
        BEGIN BRANCH amask(6:0)
            WIRE 688 304 880 304
        END BRANCH
        IOMARKER 688 304 amask(6:0) R180 28
        BEGIN BRANCH amask(6)
            WIRE 1168 896 1440 896
            BEGIN DISPLAY 1168 896 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH amask(5)
            WIRE 1168 1280 1360 1280
            BEGIN DISPLAY 1168 1280 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH amask(4)
            WIRE 1168 1664 1200 1664
            WIRE 1200 1664 1328 1664
            BEGIN DISPLAY 1168 1664 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH amask(3)
            WIRE 1184 2048 1344 2048
            BEGIN DISPLAY 1184 2048 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_14 1440 960 R0
        BEGIN BRANCH XLXN_10
            WIRE 1696 864 1712 864
            WIRE 1712 752 1712 864
            WIRE 1712 752 3056 752
            WIRE 3056 752 3056 1120
        END BRANCH
        INSTANCE XLXI_1 720 1056 R0
        INSTANCE XLXI_2 720 1440 R0
        INSTANCE XLXI_3 720 1824 R0
        INSTANCE XLXI_4 720 2208 R0
        INSTANCE XLXI_13 3056 1568 R0
        BEGIN BRANCH XLXN_7
            WIRE 2368 992 2464 992
            WIRE 2464 992 2560 992
        END BRANCH
        INSTANCE XLXI_19 2560 1120 R0
        BEGIN BRANCH XLXN_8
            WIRE 2368 1376 2464 1376
            WIRE 2464 1376 2560 1376
        END BRANCH
        INSTANCE XLXI_18 2560 1504 R0
        BEGIN BRANCH XLXN_9
            WIRE 2368 1760 2464 1760
            WIRE 2464 1760 2560 1760
        END BRANCH
        INSTANCE XLXI_20 2560 1888 R0
        BEGIN BRANCH XLXN_11
            WIRE 2816 1024 2928 1024
            WIRE 2928 1024 2928 1184
            WIRE 2928 1184 3056 1184
        END BRANCH
        BEGIN BRANCH XLXN_13
            WIRE 2816 1408 2928 1408
            WIRE 2928 1312 2928 1408
            WIRE 2928 1312 3056 1312
        END BRANCH
        BEGIN BRANCH XLXN_14
            WIRE 2816 1792 2944 1792
            WIRE 2944 1376 2944 1792
            WIRE 2944 1376 3056 1376
        END BRANCH
        BEGIN BRANCH match
            WIRE 3312 1312 3408 1312
        END BRANCH
        BEGIN BRANCH amask(2)
            WIRE 2480 1056 2560 1056
            BEGIN DISPLAY 2480 1056 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH amask(1)
            WIRE 2496 1440 2560 1440
            BEGIN DISPLAY 2496 1440 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH amask(0)
            WIRE 2480 1824 2560 1824
            BEGIN DISPLAY 2480 1824 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(7:0)
            WIRE 1792 1856 1984 1856
        END BRANCH
        BEGIN BRANCH a(7:0)
            WIRE 1792 1664 1984 1664
        END BRANCH
        BEGIN BRANCH b(15:8)
            WIRE 1792 1472 1984 1472
        END BRANCH
        BEGIN BRANCH a(15:8)
            WIRE 1792 1280 1984 1280
        END BRANCH
        BEGIN BRANCH a(23:16)
            WIRE 1792 896 1984 896
        END BRANCH
        BEGIN BRANCH b(23:16)
            WIRE 1792 1088 1984 1088
        END BRANCH
        BEGIN BRANCH a(55:48)
            WIRE 528 736 720 736
        END BRANCH
        BEGIN BRANCH b(55:48)
            WIRE 528 928 720 928
        END BRANCH
        BEGIN BRANCH a(47:40)
            WIRE 528 1120 720 1120
        END BRANCH
        BEGIN BRANCH b(47:40)
            WIRE 528 1312 720 1312
        END BRANCH
        BEGIN BRANCH a(39:32)
            WIRE 528 1504 720 1504
        END BRANCH
        BEGIN BRANCH b(39:32)
            WIRE 528 1696 720 1696
        END BRANCH
        BEGIN BRANCH a(31:24)
            WIRE 528 1888 720 1888
        END BRANCH
        BEGIN BRANCH b(31:24)
            WIRE 528 2080 720 2080
        END BRANCH
        IOMARKER 3408 1312 match R0 28
    END SHEET
END SCHEMATIC

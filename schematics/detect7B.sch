VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_1(111:0)
        SIGNAL pipe0(71:0)
        SIGNAL hwregA(55:0)
        SIGNAL hwregA(62:56)
        SIGNAL pipe0(47:0)
        SIGNAL pipe1(63:0)
        SIGNAL pipe1(71:0)
        SIGNAL hwregA(63:0)
        SIGNAL clk
        SIGNAL ce
        SIGNAL XLXN_12
        SIGNAL XLXN_13
        SIGNAL XLXN_14
        SIGNAL match
        SIGNAL XLXN_16
        SIGNAL XLXN_17
        SIGNAL XLXN_22(111:0)
        SIGNAL XLXN_23
        SIGNAL match_en
        SIGNAL mrst
        SIGNAL XLXN_26
        PORT Input pipe1(71:0)
        PORT Input hwregA(63:0)
        PORT Input clk
        PORT Input ce
        PORT Output match
        PORT Input match_en
        PORT Input mrst
        BEGIN BLOCKDEF reg9b
            TIMESTAMP 2025 1 31 7 21 20
            RECTANGLE N 64 -256 320 0 
            LINE N 64 -224 0 -224 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -236 384 -212 
            LINE N 320 -224 384 -224 
        END BLOCKDEF
        BEGIN BLOCKDEF wordmatch
            TIMESTAMP 2025 1 31 7 23 26
            RECTANGLE N 64 -192 320 0 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            LINE N 320 -160 384 -160 
        END BLOCKDEF
        BEGIN BLOCKDEF busmerge
            TIMESTAMP 2025 1 31 7 21 42
            RECTANGLE N 64 -128 320 0 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -108 384 -84 
            LINE N 320 -96 384 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF fd
            TIMESTAMP 2000 1 1 10 10 10
            RECTANGLE N 64 -320 320 -64 
            LINE N 0 -128 64 -128 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
        END BLOCKDEF
        BEGIN BLOCKDEF fdce
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 0 -32 64 -32 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 64 -112 80 -128 
            LINE N 80 -128 64 -144 
            LINE N 192 -64 192 -32 
            LINE N 192 -32 64 -32 
            RECTANGLE N 64 -320 320 -64 
        END BLOCKDEF
        BEGIN BLOCKDEF and3b1
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 40 -64 
            CIRCLE N 40 -76 64 -52 
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 256 -128 192 -128 
            LINE N 64 -64 64 -192 
            ARC N 96 -176 192 -80 144 -80 144 -176 
            LINE N 144 -80 64 -80 
            LINE N 64 -176 144 -176 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 reg9b
            PIN clk clk
            PIN clr XLXN_13
            PIN ce ce
            PIN d(71:0) pipe1(71:0)
            PIN q(71:0) pipe0(71:0)
        END BLOCK
        BEGIN BLOCK XLXI_2 wordmatch
            PIN datacomp(55:0) hwregA(55:0)
            PIN wildcard(6:0) hwregA(62:56)
            PIN datain(111:0) XLXN_1(111:0)
            PIN match XLXN_23
        END BLOCK
        BEGIN BLOCK XLXI_3 busmerge
            PIN da(47:0) pipe0(47:0)
            PIN db(63:0) pipe1(63:0)
            PIN q(111:0) XLXN_1(111:0)
        END BLOCK
        BEGIN BLOCK XLXI_4 fd
            PIN C clk
            PIN D mrst
            PIN Q XLXN_13
        END BLOCK
        BEGIN BLOCK XLXI_5 fdce
            PIN C clk
            PIN CE XLXN_16
            PIN CLR XLXN_13
            PIN D XLXN_16
            PIN Q match
        END BLOCK
        BEGIN BLOCK XLXI_6 and3b1
            PIN I0 match
            PIN I1 match_en
            PIN I2 XLXN_23
            PIN O XLXN_16
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_1 736 1104 R0
        END INSTANCE
        INSTANCE XLXI_5 2080 1488 R0
        INSTANCE XLXI_4 1488 1776 R0
        BEGIN INSTANCE XLXI_3 608 1408 R0
        END INSTANCE
        BEGIN BRANCH XLXN_1(111:0)
            WIRE 992 1312 1008 1312
            WIRE 1008 1296 1120 1296
            WIRE 1008 1296 1008 1312
        END BRANCH
        BEGIN BRANCH pipe0(71:0)
            WIRE 1120 880 1264 880
        END BRANCH
        BEGIN BRANCH pipe0(47:0)
            WIRE 464 1312 608 1312
        END BRANCH
        BEGIN BRANCH pipe1(63:0)
            WIRE 464 1376 608 1376
        END BRANCH
        BEGIN BRANCH pipe1(71:0)
            WIRE 608 1072 720 1072
            WIRE 720 1072 736 1072
        END BRANCH
        BEGIN BRANCH hwregA(63:0)
            WIRE 512 752 656 752
        END BRANCH
        IOMARKER 512 752 hwregA(63:0) R180 28
        BEGIN BRANCH clk
            WIRE 608 880 704 880
            WIRE 704 880 736 880
            WIRE 704 880 704 1168
            WIRE 704 1168 1056 1168
            WIRE 1056 1168 1056 1360
            WIRE 1056 1360 2080 1360
            WIRE 1056 1360 1056 1648
            WIRE 1056 1648 1360 1648
            WIRE 1360 1648 1488 1648
        END BRANCH
        BEGIN BRANCH ce
            WIRE 608 1008 736 1008
        END BRANCH
        BEGIN BRANCH XLXN_13
            WIRE 368 944 736 944
            WIRE 368 944 368 1776
            WIRE 368 1776 2080 1776
            WIRE 1872 1520 2080 1520
            WIRE 2080 1520 2080 1776
            WIRE 2080 1456 2080 1520
        END BRANCH
        INSTANCE XLXI_6 1568 1360 R0
        BEGIN BRANCH match
            WIRE 1520 1104 1520 1296
            WIRE 1520 1296 1568 1296
            WIRE 1520 1104 2480 1104
            WIRE 2480 1104 2480 1232
            WIRE 2480 1232 2624 1232
            WIRE 2464 1232 2480 1232
        END BRANCH
        BEGIN BRANCH XLXN_16
            WIRE 1824 1232 1952 1232
            WIRE 1952 1232 2080 1232
            WIRE 1952 1232 1952 1296
            WIRE 1952 1296 2080 1296
        END BRANCH
        BEGIN INSTANCE XLXI_2 1120 1328 R0
        END INSTANCE
        BEGIN BRANCH hwregA(55:0)
            WIRE 960 1184 1072 1184
            WIRE 1072 1168 1072 1184
            WIRE 1072 1168 1120 1168
        END BRANCH
        BEGIN BRANCH hwregA(62:56)
            WIRE 960 1232 976 1232
            WIRE 976 1232 1120 1232
        END BRANCH
        BEGIN BRANCH XLXN_23
            WIRE 1504 1168 1568 1168
        END BRANCH
        BEGIN BRANCH match_en
            WIRE 1392 1440 1536 1440
            WIRE 1536 1232 1536 1440
            WIRE 1536 1232 1568 1232
        END BRANCH
        IOMARKER 1392 1440 match_en R180 28
        BEGIN BRANCH mrst
            WIRE 1392 1520 1472 1520
            WIRE 1472 1520 1488 1520
        END BRANCH
        IOMARKER 1392 1520 mrst R180 28
        IOMARKER 608 880 clk R180 28
        IOMARKER 608 1008 ce R180 28
        IOMARKER 608 1072 pipe1(71:0) R180 28
        IOMARKER 2624 1232 match R0 28
    END SHEET
END SCHEMATIC

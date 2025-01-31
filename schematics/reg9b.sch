VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL clk
        SIGNAL clr
        SIGNAL ce
        SIGNAL d(71:0)
        SIGNAL XLXN_5
        SIGNAL XLXN_6
        SIGNAL XLXN_7
        SIGNAL XLXN_8
        SIGNAL XLXN_9
        SIGNAL XLXN_10
        SIGNAL XLXN_11
        SIGNAL XLXN_12
        SIGNAL XLXN_13
        SIGNAL XLXN_14
        SIGNAL XLXN_15
        SIGNAL XLXN_16
        SIGNAL XLXN_17
        SIGNAL XLXN_18
        SIGNAL q(71:0)
        SIGNAL q(15:0)
        SIGNAL q(31:6)
        SIGNAL d(31:16)
        SIGNAL q(47:32)
        SIGNAL d(47:32)
        SIGNAL d(63:48)
        SIGNAL q(63:48)
        SIGNAL q(71:64)
        SIGNAL d(71:64)
        SIGNAL d(15:0)
        PORT Input clk
        PORT Input clr
        PORT Input ce
        PORT Input d(71:0)
        PORT Output q(71:0)
        BEGIN BLOCKDEF fd8ce
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 0 -32 64 -32 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 192 -32 64 -32 
            LINE N 192 -64 192 -32 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
            RECTANGLE N 320 -268 384 -244 
            RECTANGLE N 0 -268 64 -244 
            RECTANGLE N 64 -320 320 -64 
        END BLOCKDEF
        BEGIN BLOCKDEF fd16ce
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 0 -32 64 -32 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
            RECTANGLE N 320 -268 384 -244 
            RECTANGLE N 0 -268 64 -244 
            LINE N 192 -32 64 -32 
            LINE N 192 -64 192 -32 
            RECTANGLE N 64 -320 320 -64 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 fd8ce
            PIN C clk
            PIN CE ce
            PIN CLR clr
            PIN D(7:0) d(71:64)
            PIN Q(7:0) q(71:64)
        END BLOCK
        BEGIN BLOCK XLXI_2 fd16ce
            PIN C clk
            PIN CE ce
            PIN CLR clr
            PIN D(15:0) d(63:48)
            PIN Q(15:0) q(63:48)
        END BLOCK
        BEGIN BLOCK XLXI_3 fd16ce
            PIN C clk
            PIN CE ce
            PIN CLR clr
            PIN D(15:0) d(47:32)
            PIN Q(15:0) q(47:32)
        END BLOCK
        BEGIN BLOCK XLXI_4 fd16ce
            PIN C clk
            PIN CE ce
            PIN CLR clr
            PIN D(15:0) d(31:16)
            PIN Q(15:0) q(31:6)
        END BLOCK
        BEGIN BLOCK XLXI_5 fd16ce
            PIN C clk
            PIN CE ce
            PIN CLR clr
            PIN D(15:0) d(15:0)
            PIN Q(15:0) q(15:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_1 1120 624 R0
        INSTANCE XLXI_2 1120 976 R0
        INSTANCE XLXI_3 1120 1344 R0
        INSTANCE XLXI_4 1120 1712 R0
        INSTANCE XLXI_5 1120 2064 R0
        BEGIN BRANCH clk
            WIRE 400 2096 656 2096
            WIRE 656 2096 880 2096
            WIRE 880 496 1120 496
            WIRE 880 496 880 848
            WIRE 880 848 1120 848
            WIRE 880 848 880 1216
            WIRE 880 1216 1120 1216
            WIRE 880 1216 880 1584
            WIRE 880 1584 1120 1584
            WIRE 880 1584 880 1936
            WIRE 880 1936 880 2096
            WIRE 880 1936 1120 1936
        END BRANCH
        IOMARKER 400 2096 clk R180 28
        BEGIN BRANCH clr
            WIRE 400 2160 656 2160
            WIRE 656 2160 960 2160
            WIRE 960 2160 1120 2160
            WIRE 960 592 1120 592
            WIRE 960 592 960 944
            WIRE 960 944 1120 944
            WIRE 960 944 960 1312
            WIRE 960 1312 1120 1312
            WIRE 960 1312 960 1680
            WIRE 960 1680 1104 1680
            WIRE 1104 1680 1120 1680
            WIRE 960 1680 960 2160
            WIRE 1120 2032 1120 2160
        END BRANCH
        IOMARKER 400 2160 clr R180 28
        BEGIN BRANCH ce
            WIRE 400 2032 656 2032
            WIRE 656 432 1120 432
            WIRE 656 432 656 784
            WIRE 656 784 1120 784
            WIRE 656 784 656 1152
            WIRE 656 1152 1120 1152
            WIRE 656 1152 656 1520
            WIRE 656 1520 1120 1520
            WIRE 656 1520 656 1872
            WIRE 656 1872 1120 1872
            WIRE 656 1872 656 2032
        END BRANCH
        IOMARKER 400 2032 ce R180 28
        BEGIN BRANCH d(71:0)
            WIRE 400 2240 656 2240
        END BRANCH
        IOMARKER 400 2240 d(71:0) R180 28
        BEGIN BRANCH q(71:0)
            WIRE 1568 2208 1760 2208
        END BRANCH
        IOMARKER 1760 2208 q(71:0) R0 28
        BEGIN BRANCH q(15:0)
            WIRE 1504 1808 1632 1808
        END BRANCH
        BEGIN BRANCH q(31:6)
            WIRE 1504 1456 1632 1456
        END BRANCH
        BEGIN BRANCH d(31:16)
            WIRE 992 1456 1120 1456
        END BRANCH
        BEGIN BRANCH q(47:32)
            WIRE 1504 1088 1632 1088
        END BRANCH
        BEGIN BRANCH d(47:32)
            WIRE 992 1088 1120 1088
        END BRANCH
        BEGIN BRANCH d(63:48)
            WIRE 992 720 1120 720
        END BRANCH
        BEGIN BRANCH q(63:48)
            WIRE 1504 720 1632 720
        END BRANCH
        BEGIN BRANCH q(71:64)
            WIRE 1504 368 1632 368
        END BRANCH
        BEGIN BRANCH d(71:64)
            WIRE 992 368 1120 368
        END BRANCH
        BEGIN BRANCH d(15:0)
            WIRE 992 1808 1120 1808
        END BRANCH
    END SHEET
END SCHEMATIC

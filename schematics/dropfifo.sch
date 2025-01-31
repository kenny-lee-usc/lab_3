VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
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
        BEGIN BLOCKDEF fd
            TIMESTAMP 2000 1 1 10 10 10
            RECTANGLE N 64 -320 320 -64 
            LINE N 0 -128 64 -128 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
        END BLOCKDEF
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
        BEGIN BLOCKDEF fdc
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -128 64 -128 
            LINE N 0 -32 64 -32 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            RECTANGLE N 64 -320 320 -64 
            LINE N 64 -112 80 -128 
            LINE N 80 -128 64 -144 
            LINE N 192 -64 192 -32 
            LINE N 192 -32 64 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF comp8
            TIMESTAMP 2000 1 1 10 10 10
            RECTANGLE N 64 -384 320 -64 
            LINE N 384 -224 320 -224 
            RECTANGLE N 0 -332 64 -308 
            LINE N 0 -320 64 -320 
            RECTANGLE N 0 -140 64 -116 
            LINE N 0 -128 64 -128 
        END BLOCKDEF
        BEGIN BLOCKDEF cb8cle
            TIMESTAMP 2000 1 1 10 10 10
            RECTANGLE N 64 -448 320 -64 
            LINE N 0 -192 64 -192 
            LINE N 192 -32 64 -32 
            LINE N 192 -64 192 -32 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
            LINE N 0 -128 64 -128 
            LINE N 0 -32 64 -32 
            LINE N 0 -256 64 -256 
            LINE N 0 -384 64 -384 
            RECTANGLE N 0 -396 64 -372 
            LINE N 384 -384 320 -384 
            LINE N 384 -192 320 -192 
            RECTANGLE N 320 -396 384 -372 
            LINE N 384 -128 320 -128 
        END BLOCKDEF
        BEGIN BLOCKDEF dualportmem
            TIMESTAMP 2025 1 31 7 42 11
            RECTANGLE N 32 0 256 496 
            BEGIN LINE W 0 48 32 48 
            END LINE
            BEGIN LINE W 0 80 32 80 
            END LINE
            LINE N 0 112 32 112 
            LINE N 0 240 32 240 
            BEGIN LINE W 0 272 32 272 
            END LINE
            LINE N 0 464 32 464 
            BEGIN LINE W 256 272 288 272 
            END LINE
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 reg9b
            PIN clk
            PIN clr
            PIN ce
            PIN d(71:0)
            PIN q(71:0)
        END BLOCK
        BEGIN BLOCK XLXI_2 fd
            PIN C
            PIN D
            PIN Q
        END BLOCK
        BEGIN BLOCK XLXI_3 fd
            PIN C
            PIN D
            PIN Q
        END BLOCK
        BEGIN BLOCK XLXI_4 fd
            PIN C
            PIN D
            PIN Q
        END BLOCK
        BEGIN BLOCK XLXI_5 fd8ce
            PIN C
            PIN CE
            PIN CLR
            PIN D(7:0)
            PIN Q(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_6 fd
            PIN C
            PIN D
            PIN Q
        END BLOCK
        BEGIN BLOCK XLXI_7 fdc
            PIN C
            PIN CLR
            PIN D
            PIN Q
        END BLOCK
        BEGIN BLOCK XLXI_8 comp8
            PIN A(7:0)
            PIN B(7:0)
            PIN EQ
        END BLOCK
        BEGIN BLOCK XLXI_9 comp8
            PIN A(7:0)
            PIN B(7:0)
            PIN EQ
        END BLOCK
        BEGIN BLOCK XLXI_10 cb8cle
            PIN C
            PIN CE
            PIN CLR
            PIN D(7:0)
            PIN L
            PIN CEO
            PIN Q(7:0)
            PIN TC
        END BLOCK
        BEGIN BLOCK XLXI_11 cb8cle
            PIN C
            PIN CE
            PIN CLR
            PIN D(7:0)
            PIN L
            PIN CEO
            PIN Q(7:0)
            PIN TC
        END BLOCK
        BEGIN BLOCK XLXI_18 dualportmem
            PIN addra(7:0)
            PIN dina(8:0)
            PIN wea
            PIN clka
            PIN addrb(7:0)
            PIN clkb
            PIN doutb(8:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_2 336 800 R0
        INSTANCE XLXI_3 1152 800 R0
        INSTANCE XLXI_4 336 1152 R0
        INSTANCE XLXI_5 320 1520 R0
        INSTANCE XLXI_6 320 1968 R0
        BEGIN INSTANCE XLXI_1 1920 848 R0
        END INSTANCE
        INSTANCE XLXI_8 992 1408 R0
        INSTANCE XLXI_9 992 1792 R0
        INSTANCE XLXI_7 1440 2352 R0
        INSTANCE XLXI_10 1616 1392 R0
        INSTANCE XLXI_11 1616 1872 R0
        BEGIN INSTANCE XLXI_18 2576 1216 R0
        END INSTANCE
    END SHEET
END SCHEMATIC

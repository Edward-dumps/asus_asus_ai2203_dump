.class public Lalc5686_aar_lib8/alc5686_aar_lib_8/RtsVendorReq;
.super Ljava/lang/Object;
.source "RtsVendorReq.java"


# static fields
.field static ALC4040:I

.field static ALC4042:I

.field static ALC5683:I

.field static USB_AUDIO_TYPE:I

.field private static final valid_device:[[I

.field static final vdDevStatus:Lalc5686_aar_lib8/alc5686_aar_lib_8/RtsVendorReq;

.field static final vdResetToRom:Lalc5686_aar_lib8/alc5686_aar_lib_8/RtsVendorReq;

.field static final vdResetToUpdateFW:Lalc5686_aar_lib8/alc5686_aar_lib_8/RtsVendorReq;

.field static final vdSpiSfEraseChip:Lalc5686_aar_lib8/alc5686_aar_lib_8/RtsVendorReq;

.field static final vdSpiSfRead:Lalc5686_aar_lib8/alc5686_aar_lib_8/RtsVendorReq;

.field static final vdSpiSfReadSr:Lalc5686_aar_lib8/alc5686_aar_lib_8/RtsVendorReq;

.field static final vdSpiSfWrite:Lalc5686_aar_lib8/alc5686_aar_lib_8/RtsVendorReq;

.field static final vdSpiSfWriteSr:Lalc5686_aar_lib8/alc5686_aar_lib_8/RtsVendorReq;

.field static final vdXMemRead:Lalc5686_aar_lib8/alc5686_aar_lib_8/RtsVendorReq;

.field static final vdXMemWrite:Lalc5686_aar_lib8/alc5686_aar_lib_8/RtsVendorReq;


# instance fields
.field byRequest:S

.field byRequestType:S


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 17
    new-instance v0, Lalc5686_aar_lib8/alc5686_aar_lib_8/RtsVendorReq$1;

    invoke-direct {v0}, Lalc5686_aar_lib8/alc5686_aar_lib_8/RtsVendorReq$1;-><init>()V

    sput-object v0, Lalc5686_aar_lib8/alc5686_aar_lib_8/RtsVendorReq;->vdDevStatus:Lalc5686_aar_lib8/alc5686_aar_lib_8/RtsVendorReq;

    .line 18
    new-instance v0, Lalc5686_aar_lib8/alc5686_aar_lib_8/RtsVendorReq$2;

    invoke-direct {v0}, Lalc5686_aar_lib8/alc5686_aar_lib_8/RtsVendorReq$2;-><init>()V

    sput-object v0, Lalc5686_aar_lib8/alc5686_aar_lib_8/RtsVendorReq;->vdResetToUpdateFW:Lalc5686_aar_lib8/alc5686_aar_lib_8/RtsVendorReq;

    .line 19
    new-instance v0, Lalc5686_aar_lib8/alc5686_aar_lib_8/RtsVendorReq$3;

    invoke-direct {v0}, Lalc5686_aar_lib8/alc5686_aar_lib_8/RtsVendorReq$3;-><init>()V

    sput-object v0, Lalc5686_aar_lib8/alc5686_aar_lib_8/RtsVendorReq;->vdResetToRom:Lalc5686_aar_lib8/alc5686_aar_lib_8/RtsVendorReq;

    .line 20
    new-instance v0, Lalc5686_aar_lib8/alc5686_aar_lib_8/RtsVendorReq$4;

    invoke-direct {v0}, Lalc5686_aar_lib8/alc5686_aar_lib_8/RtsVendorReq$4;-><init>()V

    sput-object v0, Lalc5686_aar_lib8/alc5686_aar_lib_8/RtsVendorReq;->vdXMemWrite:Lalc5686_aar_lib8/alc5686_aar_lib_8/RtsVendorReq;

    .line 21
    new-instance v0, Lalc5686_aar_lib8/alc5686_aar_lib_8/RtsVendorReq$5;

    invoke-direct {v0}, Lalc5686_aar_lib8/alc5686_aar_lib_8/RtsVendorReq$5;-><init>()V

    sput-object v0, Lalc5686_aar_lib8/alc5686_aar_lib_8/RtsVendorReq;->vdXMemRead:Lalc5686_aar_lib8/alc5686_aar_lib_8/RtsVendorReq;

    .line 22
    new-instance v0, Lalc5686_aar_lib8/alc5686_aar_lib_8/RtsVendorReq$6;

    invoke-direct {v0}, Lalc5686_aar_lib8/alc5686_aar_lib_8/RtsVendorReq$6;-><init>()V

    sput-object v0, Lalc5686_aar_lib8/alc5686_aar_lib_8/RtsVendorReq;->vdSpiSfRead:Lalc5686_aar_lib8/alc5686_aar_lib_8/RtsVendorReq;

    .line 23
    new-instance v0, Lalc5686_aar_lib8/alc5686_aar_lib_8/RtsVendorReq$7;

    invoke-direct {v0}, Lalc5686_aar_lib8/alc5686_aar_lib_8/RtsVendorReq$7;-><init>()V

    sput-object v0, Lalc5686_aar_lib8/alc5686_aar_lib_8/RtsVendorReq;->vdSpiSfWrite:Lalc5686_aar_lib8/alc5686_aar_lib_8/RtsVendorReq;

    .line 24
    new-instance v0, Lalc5686_aar_lib8/alc5686_aar_lib_8/RtsVendorReq$8;

    invoke-direct {v0}, Lalc5686_aar_lib8/alc5686_aar_lib_8/RtsVendorReq$8;-><init>()V

    sput-object v0, Lalc5686_aar_lib8/alc5686_aar_lib_8/RtsVendorReq;->vdSpiSfReadSr:Lalc5686_aar_lib8/alc5686_aar_lib_8/RtsVendorReq;

    .line 25
    new-instance v0, Lalc5686_aar_lib8/alc5686_aar_lib_8/RtsVendorReq$9;

    invoke-direct {v0}, Lalc5686_aar_lib8/alc5686_aar_lib_8/RtsVendorReq$9;-><init>()V

    sput-object v0, Lalc5686_aar_lib8/alc5686_aar_lib_8/RtsVendorReq;->vdSpiSfWriteSr:Lalc5686_aar_lib8/alc5686_aar_lib_8/RtsVendorReq;

    .line 26
    new-instance v0, Lalc5686_aar_lib8/alc5686_aar_lib_8/RtsVendorReq$10;

    invoke-direct {v0}, Lalc5686_aar_lib8/alc5686_aar_lib_8/RtsVendorReq$10;-><init>()V

    sput-object v0, Lalc5686_aar_lib8/alc5686_aar_lib_8/RtsVendorReq;->vdSpiSfEraseChip:Lalc5686_aar_lib8/alc5686_aar_lib_8/RtsVendorReq;

    const/16 v0, 0xfc8

    .line 50
    sput v0, Lalc5686_aar_lib8/alc5686_aar_lib_8/RtsVendorReq;->ALC4040:I

    const/16 v0, 0xfca

    .line 51
    sput v0, Lalc5686_aar_lib8/alc5686_aar_lib_8/RtsVendorReq;->ALC4042:I

    const/16 v0, 0x1633

    .line 52
    sput v0, Lalc5686_aar_lib8/alc5686_aar_lib_8/RtsVendorReq;->ALC5683:I

    .line 54
    sput v0, Lalc5686_aar_lib8/alc5686_aar_lib_8/RtsVendorReq;->USB_AUDIO_TYPE:I

    const/16 v0, 0x16

    new-array v0, v0, [[I

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 62
    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    new-array v2, v1, [I

    fill-array-data v2, :array_3

    const/4 v3, 0x3

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_4

    const/4 v3, 0x4

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_5

    const/4 v3, 0x5

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_6

    const/4 v3, 0x6

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_7

    const/4 v3, 0x7

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_8

    const/16 v3, 0x8

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_9

    const/16 v3, 0x9

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_a

    const/16 v3, 0xa

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_b

    const/16 v3, 0xb

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_c

    const/16 v3, 0xc

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_d

    const/16 v3, 0xd

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_e

    const/16 v3, 0xe

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_f

    const/16 v3, 0xf

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_10

    const/16 v3, 0x10

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_11

    const/16 v3, 0x11

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_12

    const/16 v3, 0x12

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_13

    const/16 v3, 0x13

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_14

    const/16 v3, 0x14

    aput-object v2, v0, v3

    new-array v1, v1, [I

    fill-array-data v1, :array_15

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sput-object v0, Lalc5686_aar_lib8/alc5686_aar_lib_8/RtsVendorReq;->valid_device:[[I

    return-void

    nop

    :array_0
    .array-data 4
        0xbda
        0x5685
    .end array-data

    :array_1
    .array-data 4
        0xbda
        0x4040
    .end array-data

    :array_2
    .array-data 4
        0xbda
        0x4042
    .end array-data

    :array_3
    .array-data 4
        0xbda
        0x5683
    .end array-data

    :array_4
    .array-data 4
        0xbda
        0x480e
    .end array-data

    :array_5
    .array-data 4
        0xbda
        0x4b0e
    .end array-data

    :array_6
    .array-data 4
        0xbda
        0x4a40
    .end array-data

    :array_7
    .array-data 4
        0xbda
        0x4a41
    .end array-data

    :array_8
    .array-data 4
        0xbda
        0x4a42
    .end array-data

    :array_9
    .array-data 4
        0xbda
        0x4a43
    .end array-data

    :array_a
    .array-data 4
        0xbda
        0x4a44
    .end array-data

    :array_b
    .array-data 4
        0xbda
        0x4a45
    .end array-data

    :array_c
    .array-data 4
        0xbda
        0x4917
    .end array-data

    :array_d
    .array-data 4
        0xbda
        0x4b4d
    .end array-data

    :array_e
    .array-data 4
        0xbda
        0x4b56
    .end array-data

    :array_f
    .array-data 4
        0xbda
        0x4b5b
    .end array-data

    :array_10
    .array-data 4
        0xbda
        0x4b98
    .end array-data

    :array_11
    .array-data 4
        0xbda
        0x4baf
    .end array-data

    :array_12
    .array-data 4
        0xbda
        0x5686
    .end array-data

    :array_13
    .array-data 4
        0xbda
        0x48ff
    .end array-data

    :array_14
    .array-data 4
        0xbda
        0x4bf0
    .end array-data

    :array_15
    .array-data 4
        0xbda
        0x4a80
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static RsAudio_GetDevFwVer(Landroid/hardware/usb/UsbDeviceConnection;)Ljava/lang/String;
    .locals 25

    const/4 v0, 0x2

    new-array v1, v0, [[B

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    const/16 v4, 0x8

    new-array v4, v4, [B

    .line 96
    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    if-nez p0, :cond_1

    const-string v0, "Fail to get connection"

    return-object v0

    .line 101
    :cond_1
    invoke-static/range {p0 .. p0}, Lalc5686_aar_lib8/alc5686_aar_lib_8/RtsVendorReq;->RsAudio_GetDevMode(Landroid/hardware/usb/UsbDeviceConnection;)I

    move-result v3

    const/16 v4, 0x10

    const-string v12, "Get Firmware Failed"

    const-string/jumbo v13, "vdDevStatus"

    const-string v14, "RtsVendorReq"

    const-string v11, "-"

    const/16 v16, 0x6

    const/16 v17, 0x5

    const/16 v18, 0x7

    const/16 v19, 0x4

    const-string v10, "."

    const/4 v9, 0x1

    if-eq v3, v4, :cond_5

    const/16 v4, 0x18

    if-eq v3, v4, :cond_5

    const/16 v4, 0x20

    if-ne v3, v4, :cond_2

    goto/16 :goto_2

    :cond_2
    const/16 v3, 0x9

    :goto_1
    const/16 v4, 0xb

    if-ge v3, v4, :cond_4

    .line 118
    sget-object v4, Lalc5686_aar_lib8/alc5686_aar_lib_8/RtsVendorReq;->vdDevStatus:Lalc5686_aar_lib8/alc5686_aar_lib_8/RtsVendorReq;

    iget-short v5, v4, Lalc5686_aar_lib8/alc5686_aar_lib_8/RtsVendorReq;->byRequestType:S

    iget-short v6, v4, Lalc5686_aar_lib8/alc5686_aar_lib_8/RtsVendorReq;->byRequest:S

    const/4 v8, 0x0

    add-int/lit8 v4, v3, -0x9

    aget-object v20, v1, v4

    aget-object v4, v1, v4

    array-length v7, v4

    const/16 v21, 0x0

    move-object/from16 v4, p0

    move/from16 v22, v7

    move v7, v3

    move v0, v9

    move-object/from16 v9, v20

    move-object v15, v10

    move/from16 v10, v22

    move-object/from16 v23, v11

    move/from16 v11, v21

    invoke-virtual/range {v4 .. v11}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v4

    if-nez v4, :cond_3

    return-object v12

    .line 121
    :cond_3
    invoke-static {v14, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v3, v3, 0x1

    move v9, v0

    move-object v10, v15

    move-object/from16 v11, v23

    const/4 v0, 0x2

    goto :goto_1

    :cond_4
    move v0, v9

    move-object v15, v10

    move-object/from16 v23, v11

    .line 124
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v1, v2

    aget-byte v4, v4, v18

    and-int/lit16 v4, v4, 0xf0

    shr-int/lit8 v4, v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v1, v2

    aget-byte v4, v4, v18

    and-int/lit8 v4, v4, 0xf

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v1, v2

    aget-byte v4, v4, v16

    and-int/lit16 v4, v4, 0xff

    or-int/lit16 v4, v4, 0x100

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v1, v2

    aget-byte v4, v4, v17

    and-int/lit16 v4, v4, 0xff

    or-int/lit16 v4, v4, 0x100

    .line 125
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v1, v2

    aget-byte v4, v4, v19

    and-int/lit16 v4, v4, 0xff

    or-int/lit16 v4, v4, 0x100

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v1, v0

    const/4 v5, 0x3

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    or-int/lit16 v4, v4, 0x100

    .line 126
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v1, v0

    const/4 v5, 0x2

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    or-int/lit16 v4, v4, 0x100

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v1, v0

    aget-byte v4, v4, v0

    and-int/lit16 v4, v4, 0xff

    or-int/lit16 v4, v4, 0x100

    .line 127
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v1, v0

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/lit16 v1, v1, 0x100

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5
    :goto_2
    move v0, v9

    move-object v15, v10

    const/16 v3, 0x81

    :goto_3
    const/16 v4, 0x83

    if-ge v3, v4, :cond_7

    .line 105
    sget-object v4, Lalc5686_aar_lib8/alc5686_aar_lib_8/RtsVendorReq;->vdDevStatus:Lalc5686_aar_lib8/alc5686_aar_lib_8/RtsVendorReq;

    iget-short v5, v4, Lalc5686_aar_lib8/alc5686_aar_lib_8/RtsVendorReq;->byRequestType:S

    iget-short v6, v4, Lalc5686_aar_lib8/alc5686_aar_lib_8/RtsVendorReq;->byRequest:S

    const/4 v8, 0x0

    add-int/lit16 v4, v3, -0x81

    aget-object v9, v1, v4

    aget-object v4, v1, v4

    array-length v10, v4

    const/16 v21, 0x0

    move-object/from16 v4, p0

    move v7, v3

    move-object/from16 v24, v11

    move/from16 v11, v21

    invoke-virtual/range {v4 .. v11}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v4

    if-nez v4, :cond_6

    return-object v12

    .line 108
    :cond_6
    invoke-static {v14, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v11, v24

    goto :goto_3

    :cond_7
    move-object/from16 v24, v11

    .line 111
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v1, v2

    aget-byte v4, v4, v19

    and-int/lit16 v4, v4, 0xf0

    shr-int/lit8 v4, v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v1, v2

    aget-byte v4, v4, v19

    and-int/lit8 v4, v4, 0xf

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v1, v2

    aget-byte v4, v4, v17

    and-int/lit16 v4, v4, 0xff

    or-int/lit16 v4, v4, 0x100

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v1, v2

    aget-byte v4, v4, v16

    and-int/lit16 v4, v4, 0xff

    or-int/lit16 v4, v4, 0x100

    .line 112
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v1, v2

    aget-byte v4, v4, v18

    and-int/lit16 v4, v4, 0xff

    or-int/lit16 v4, v4, 0x100

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, v24

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v1, v0

    aget-byte v2, v4, v2

    and-int/lit16 v2, v2, 0xff

    or-int/lit16 v2, v2, 0x100

    .line 113
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v1, v0

    aget-byte v2, v2, v0

    and-int/lit16 v2, v2, 0xff

    or-int/lit16 v2, v2, 0x100

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v1, v0

    const/4 v4, 0x2

    aget-byte v2, v2, v4

    and-int/lit16 v2, v2, 0xff

    or-int/lit16 v2, v2, 0x100

    .line 114
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v1, v0

    const/4 v2, 0x3

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/lit16 v1, v1, 0x100

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static RsAudio_GetDevMode(Landroid/hardware/usb/UsbDeviceConnection;)I
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [B

    const v1, 0xc2a8

    .line 289
    invoke-static {p0, v1, v0}, Lalc5686_aar_lib8/alc5686_aar_lib_8/RtsVendorReq;->RsAudio_ReadMem(Landroid/hardware/usb/UsbDeviceConnection;I[B)I

    const/4 p0, 0x0

    .line 290
    aget-byte p0, v0, p0

    return p0
.end method

.method public static RsAudio_ReadMem(Landroid/hardware/usb/UsbDeviceConnection;I[B)I
    .locals 9

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const-string v0, "RtsVendorReq"

    const-string/jumbo v1, "vdXMemRead"

    .line 170
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    sget-object v0, Lalc5686_aar_lib8/alc5686_aar_lib_8/RtsVendorReq;->vdXMemRead:Lalc5686_aar_lib8/alc5686_aar_lib_8/RtsVendorReq;

    iget-short v2, v0, Lalc5686_aar_lib8/alc5686_aar_lib_8/RtsVendorReq;->byRequestType:S

    iget-short v3, v0, Lalc5686_aar_lib8/alc5686_aar_lib_8/RtsVendorReq;->byRequest:S

    shr-int/lit8 v0, p1, 0x10

    and-int/lit8 v0, v0, 0xf

    array-length v1, p2

    shr-int/lit8 v1, v1, 0xc

    and-int/lit16 v1, v1, 0xf0

    or-int v4, v0, v1

    const v0, 0xffff

    and-int v5, p1, v0

    array-length p1, p2

    and-int v7, p1, v0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v6, p2

    invoke-virtual/range {v1 .. v8}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result p0

    return p0
.end method

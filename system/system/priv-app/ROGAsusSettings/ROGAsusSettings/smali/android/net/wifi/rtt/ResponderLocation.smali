.class public final Landroid/net/wifi/rtt/ResponderLocation;
.super Ljava/lang/Object;
.source "ResponderLocation.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/rtt/ResponderLocation;",
            ">;"
        }
    .end annotation
.end field

.field private static final LEAD_LCI_ELEMENT_BYTES:[B

.field private static final LEAD_LCR_ELEMENT_BYTES:[B

.field private static final SUBELEMENT_LCI_BIT_FIELD_LENGTHS:[I

.field private static final SUBELEMENT_Z_BIT_FIELD_LENGTHS:[I

.field private static final SUPPORTED_IMAGE_FILE_EXTENSIONS:[Ljava/lang/String;


# instance fields
.field private mAltitude:D

.field private mAltitudeType:I

.field private mAltitudeUncertainty:D

.field private mBssidList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/MacAddress;",
            ">;"
        }
    .end annotation
.end field

.field private mCivicLocation:Landroid/net/wifi/rtt/CivicLocation;

.field private mCivicLocationCountryCode:Ljava/lang/String;

.field private mCivicLocationString:Ljava/lang/String;

.field private mDatum:I

.field private mExpectedToMove:I

.field private mFloorNumber:D

.field private mHeightAboveFloorMeters:D

.field private mHeightAboveFloorUncertaintyMeters:D

.field private mIsBssidListValid:Z

.field private mIsLciValid:Z

.field private mIsLocationCivicValid:Z

.field private mIsMapImageValid:Z

.field private mIsUsageValid:Z

.field private final mIsValid:Z

.field private mIsZValid:Z

.field private mLatitude:D

.field private mLatitudeUncertainty:D

.field private mLciDependentStation:Z

.field private mLciRegisteredLocationAgreement:Z

.field private mLciRegisteredLocationDse:Z

.field private mLciVersion:I

.field private mLongitude:D

.field private mLongitudeUncertainty:D

.field private mMapImageType:I

.field private mMapImageUri:Landroid/net/Uri;

.field private mUsageExtraInfoOnAssociation:Z

.field private mUsageRetentionExpires:Z

.field private mUsageRetransmit:Z


# direct methods
.method static constructor <clinit>()V
    .locals 19

    const/4 v0, 0x3

    new-array v1, v0, [B

    .line 85
    fill-array-data v1, :array_0

    sput-object v1, Landroid/net/wifi/rtt/ResponderLocation;->LEAD_LCI_ELEMENT_BYTES:[B

    const/16 v1, 0xc

    new-array v1, v1, [I

    .line 93
    fill-array-data v1, :array_1

    sput-object v1, Landroid/net/wifi/rtt/ResponderLocation;->SUBELEMENT_LCI_BIT_FIELD_LENGTHS:[I

    const/4 v1, 0x4

    new-array v1, v1, [I

    .line 165
    fill-array-data v1, :array_2

    sput-object v1, Landroid/net/wifi/rtt/ResponderLocation;->SUBELEMENT_Z_BIT_FIELD_LENGTHS:[I

    new-array v0, v0, [B

    .line 217
    fill-array-data v0, :array_3

    sput-object v0, Landroid/net/wifi/rtt/ResponderLocation;->LEAD_LCR_ELEMENT_BYTES:[B

    const-string v1, ""

    const-string v2, "png"

    const-string v3, "gif"

    const-string v4, "jpg"

    const-string v5, "svg"

    const-string v6, "dxf"

    const-string v7, "dwg"

    const-string v8, "dwf"

    const-string v9, "cad"

    const-string v10, "tif"

    const-string v11, "gml"

    const-string v12, "kml"

    const-string v13, "bmp"

    const-string v14, "pgm"

    const-string v15, "ppm"

    const-string/jumbo v16, "xbm"

    const-string/jumbo v17, "xpm"

    const-string v18, "ico"

    .line 228
    filled-new-array/range {v1 .. v18}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/rtt/ResponderLocation;->SUPPORTED_IMAGE_FILE_EXTENSIONS:[Ljava/lang/String;

    .line 395
    new-instance v0, Landroid/net/wifi/rtt/ResponderLocation$1;

    invoke-direct {v0}, Landroid/net/wifi/rtt/ResponderLocation$1;-><init>()V

    sput-object v0, Landroid/net/wifi/rtt/ResponderLocation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    :array_0
    .array-data 1
        0x1t
        0x0t
        0x8t
    .end array-data

    :array_1
    .array-data 4
        0x6
        0x22
        0x6
        0x22
        0x4
        0x6
        0x1e
        0x3
        0x1
        0x1
        0x1
        0x2
    .end array-data

    :array_2
    .array-data 4
        0x2
        0xe
        0x18
        0x8
    .end array-data

    :array_3
    .array-data 1
        0x1t
        0x0t
        0xbt
    .end array-data
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 256
    iput-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsLciValid:Z

    .line 257
    iput-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsZValid:Z

    const/4 v1, 0x1

    .line 258
    iput-boolean v1, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsUsageValid:Z

    .line 259
    iput-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsBssidListValid:Z

    .line 260
    iput-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsLocationCivicValid:Z

    .line 261
    iput-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsMapImageValid:Z

    .line 344
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    iput-boolean v2, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsValid:Z

    .line 345
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    iput-boolean v2, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsLciValid:Z

    .line 346
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    move v2, v0

    :goto_2
    iput-boolean v2, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsZValid:Z

    .line 347
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_3

    move v2, v1

    goto :goto_3

    :cond_3
    move v2, v0

    :goto_3
    iput-boolean v2, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsUsageValid:Z

    .line 348
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_4

    move v2, v1

    goto :goto_4

    :cond_4
    move v2, v0

    :goto_4
    iput-boolean v2, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsBssidListValid:Z

    .line 349
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_5

    move v2, v1

    goto :goto_5

    :cond_5
    move v2, v0

    :goto_5
    iput-boolean v2, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsLocationCivicValid:Z

    .line 350
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_6

    move v2, v1

    goto :goto_6

    :cond_6
    move v2, v0

    :goto_6
    iput-boolean v2, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsMapImageValid:Z

    .line 353
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLatitudeUncertainty:D

    .line 354
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLatitude:D

    .line 355
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLongitudeUncertainty:D

    .line 356
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLongitude:D

    .line 357
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/net/wifi/rtt/ResponderLocation;->mAltitudeType:I

    .line 358
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Landroid/net/wifi/rtt/ResponderLocation;->mAltitudeUncertainty:D

    .line 359
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Landroid/net/wifi/rtt/ResponderLocation;->mAltitude:D

    .line 360
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/net/wifi/rtt/ResponderLocation;->mDatum:I

    .line 361
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_7

    move v2, v1

    goto :goto_7

    :cond_7
    move v2, v0

    :goto_7
    iput-boolean v2, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLciRegisteredLocationAgreement:Z

    .line 362
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_8

    move v2, v1

    goto :goto_8

    :cond_8
    move v2, v0

    :goto_8
    iput-boolean v2, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLciRegisteredLocationDse:Z

    .line 363
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_9

    move v2, v1

    goto :goto_9

    :cond_9
    move v2, v0

    :goto_9
    iput-boolean v2, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLciDependentStation:Z

    .line 364
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLciVersion:I

    .line 367
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/net/wifi/rtt/ResponderLocation;->mExpectedToMove:I

    .line 368
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Landroid/net/wifi/rtt/ResponderLocation;->mFloorNumber:D

    .line 369
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Landroid/net/wifi/rtt/ResponderLocation;->mHeightAboveFloorMeters:D

    .line 370
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Landroid/net/wifi/rtt/ResponderLocation;->mHeightAboveFloorUncertaintyMeters:D

    .line 373
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_a

    move v2, v1

    goto :goto_a

    :cond_a
    move v2, v0

    :goto_a
    iput-boolean v2, p0, Landroid/net/wifi/rtt/ResponderLocation;->mUsageRetransmit:Z

    .line 374
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_b

    move v2, v1

    goto :goto_b

    :cond_b
    move v2, v0

    :goto_b
    iput-boolean v2, p0, Landroid/net/wifi/rtt/ResponderLocation;->mUsageRetentionExpires:Z

    .line 375
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_c

    move v0, v1

    :cond_c
    iput-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mUsageExtraInfoOnAssociation:Z

    .line 378
    const-class v0, Landroid/net/MacAddress;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mBssidList:Ljava/util/ArrayList;

    .line 381
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mCivicLocationCountryCode:Ljava/lang/String;

    .line 382
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mCivicLocationString:Ljava/lang/String;

    .line 383
    const-class v0, Landroid/net/wifi/rtt/ResponderLocation;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/rtt/CivicLocation;

    iput-object v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mCivicLocation:Landroid/net/wifi/rtt/CivicLocation;

    .line 386
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mMapImageType:I

    .line 387
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 388
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 p1, 0x0

    .line 389
    iput-object p1, p0, Landroid/net/wifi/rtt/ResponderLocation;->mMapImageUri:Landroid/net/Uri;

    goto :goto_c

    .line 391
    :cond_d
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Landroid/net/wifi/rtt/ResponderLocation;->mMapImageUri:Landroid/net/Uri;

    :goto_c
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/net/wifi/rtt/ResponderLocation$1;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Landroid/net/wifi/rtt/ResponderLocation;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 962
    const-class v2, Landroid/net/wifi/rtt/ResponderLocation;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_1

    .line 965
    :cond_1
    check-cast p1, Landroid/net/wifi/rtt/ResponderLocation;

    .line 966
    iget-boolean v2, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsValid:Z

    iget-boolean v3, p1, Landroid/net/wifi/rtt/ResponderLocation;->mIsValid:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsLciValid:Z

    iget-boolean v3, p1, Landroid/net/wifi/rtt/ResponderLocation;->mIsLciValid:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsZValid:Z

    iget-boolean v3, p1, Landroid/net/wifi/rtt/ResponderLocation;->mIsZValid:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsUsageValid:Z

    iget-boolean v3, p1, Landroid/net/wifi/rtt/ResponderLocation;->mIsUsageValid:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsBssidListValid:Z

    iget-boolean v3, p1, Landroid/net/wifi/rtt/ResponderLocation;->mIsBssidListValid:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsLocationCivicValid:Z

    iget-boolean v3, p1, Landroid/net/wifi/rtt/ResponderLocation;->mIsLocationCivicValid:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsMapImageValid:Z

    iget-boolean v3, p1, Landroid/net/wifi/rtt/ResponderLocation;->mIsMapImageValid:Z

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLatitudeUncertainty:D

    iget-wide v4, p1, Landroid/net/wifi/rtt/ResponderLocation;->mLatitudeUncertainty:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLatitude:D

    iget-wide v4, p1, Landroid/net/wifi/rtt/ResponderLocation;->mLatitude:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLongitudeUncertainty:D

    iget-wide v4, p1, Landroid/net/wifi/rtt/ResponderLocation;->mLongitudeUncertainty:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLongitude:D

    iget-wide v4, p1, Landroid/net/wifi/rtt/ResponderLocation;->mLongitude:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_2

    iget v2, p0, Landroid/net/wifi/rtt/ResponderLocation;->mAltitudeType:I

    iget v3, p1, Landroid/net/wifi/rtt/ResponderLocation;->mAltitudeType:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Landroid/net/wifi/rtt/ResponderLocation;->mAltitudeUncertainty:D

    iget-wide v4, p1, Landroid/net/wifi/rtt/ResponderLocation;->mAltitudeUncertainty:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Landroid/net/wifi/rtt/ResponderLocation;->mAltitude:D

    iget-wide v4, p1, Landroid/net/wifi/rtt/ResponderLocation;->mAltitude:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_2

    iget v2, p0, Landroid/net/wifi/rtt/ResponderLocation;->mDatum:I

    iget v3, p1, Landroid/net/wifi/rtt/ResponderLocation;->mDatum:I

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLciRegisteredLocationAgreement:Z

    iget-boolean v3, p1, Landroid/net/wifi/rtt/ResponderLocation;->mLciRegisteredLocationAgreement:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLciRegisteredLocationDse:Z

    iget-boolean v3, p1, Landroid/net/wifi/rtt/ResponderLocation;->mLciRegisteredLocationDse:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLciDependentStation:Z

    iget-boolean v3, p1, Landroid/net/wifi/rtt/ResponderLocation;->mLciDependentStation:Z

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLciVersion:I

    iget v3, p1, Landroid/net/wifi/rtt/ResponderLocation;->mLciVersion:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/net/wifi/rtt/ResponderLocation;->mExpectedToMove:I

    iget v3, p1, Landroid/net/wifi/rtt/ResponderLocation;->mExpectedToMove:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Landroid/net/wifi/rtt/ResponderLocation;->mFloorNumber:D

    iget-wide v4, p1, Landroid/net/wifi/rtt/ResponderLocation;->mFloorNumber:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Landroid/net/wifi/rtt/ResponderLocation;->mHeightAboveFloorMeters:D

    iget-wide v4, p1, Landroid/net/wifi/rtt/ResponderLocation;->mHeightAboveFloorMeters:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Landroid/net/wifi/rtt/ResponderLocation;->mHeightAboveFloorUncertaintyMeters:D

    iget-wide v4, p1, Landroid/net/wifi/rtt/ResponderLocation;->mHeightAboveFloorUncertaintyMeters:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_2

    iget-boolean v2, p0, Landroid/net/wifi/rtt/ResponderLocation;->mUsageRetransmit:Z

    iget-boolean v3, p1, Landroid/net/wifi/rtt/ResponderLocation;->mUsageRetransmit:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Landroid/net/wifi/rtt/ResponderLocation;->mUsageRetentionExpires:Z

    iget-boolean v3, p1, Landroid/net/wifi/rtt/ResponderLocation;->mUsageRetentionExpires:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Landroid/net/wifi/rtt/ResponderLocation;->mUsageExtraInfoOnAssociation:Z

    iget-boolean v3, p1, Landroid/net/wifi/rtt/ResponderLocation;->mUsageExtraInfoOnAssociation:Z

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroid/net/wifi/rtt/ResponderLocation;->mBssidList:Ljava/util/ArrayList;

    iget-object v3, p1, Landroid/net/wifi/rtt/ResponderLocation;->mBssidList:Ljava/util/ArrayList;

    .line 993
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/net/wifi/rtt/ResponderLocation;->mCivicLocationCountryCode:Ljava/lang/String;

    iget-object v3, p1, Landroid/net/wifi/rtt/ResponderLocation;->mCivicLocationCountryCode:Ljava/lang/String;

    .line 994
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/net/wifi/rtt/ResponderLocation;->mCivicLocationString:Ljava/lang/String;

    iget-object v3, p1, Landroid/net/wifi/rtt/ResponderLocation;->mCivicLocationString:Ljava/lang/String;

    .line 995
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/net/wifi/rtt/ResponderLocation;->mCivicLocation:Landroid/net/wifi/rtt/CivicLocation;

    iget-object v3, p1, Landroid/net/wifi/rtt/ResponderLocation;->mCivicLocation:Landroid/net/wifi/rtt/CivicLocation;

    .line 996
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Landroid/net/wifi/rtt/ResponderLocation;->mMapImageType:I

    iget v3, p1, Landroid/net/wifi/rtt/ResponderLocation;->mMapImageType:I

    if-ne v2, v3, :cond_2

    iget-object p0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mMapImageUri:Landroid/net/Uri;

    iget-object p1, p1, Landroid/net/wifi/rtt/ResponderLocation;->mMapImageUri:Landroid/net/Uri;

    .line 998
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/Object;

    .line 1003
    iget-boolean v1, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsValid:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsLciValid:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsZValid:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsUsageValid:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsBssidListValid:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsLocationCivicValid:Z

    .line 1004
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsMapImageValid:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLatitudeUncertainty:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLatitude:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLongitudeUncertainty:D

    .line 1005
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLongitude:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/wifi/rtt/ResponderLocation;->mAltitudeType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/net/wifi/rtt/ResponderLocation;->mAltitudeUncertainty:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/net/wifi/rtt/ResponderLocation;->mAltitude:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/wifi/rtt/ResponderLocation;->mDatum:I

    .line 1006
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLciRegisteredLocationAgreement:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLciRegisteredLocationDse:Z

    .line 1007
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLciDependentStation:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLciVersion:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x12

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/wifi/rtt/ResponderLocation;->mExpectedToMove:I

    .line 1008
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x13

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/net/wifi/rtt/ResponderLocation;->mFloorNumber:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/16 v2, 0x14

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/net/wifi/rtt/ResponderLocation;->mHeightAboveFloorMeters:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/16 v2, 0x15

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/net/wifi/rtt/ResponderLocation;->mHeightAboveFloorUncertaintyMeters:D

    .line 1009
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/16 v2, 0x16

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/net/wifi/rtt/ResponderLocation;->mUsageRetransmit:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x17

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/net/wifi/rtt/ResponderLocation;->mUsageRetentionExpires:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x18

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/net/wifi/rtt/ResponderLocation;->mUsageExtraInfoOnAssociation:Z

    .line 1010
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x19

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/rtt/ResponderLocation;->mBssidList:Ljava/util/ArrayList;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/rtt/ResponderLocation;->mCivicLocationCountryCode:Ljava/lang/String;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/rtt/ResponderLocation;->mCivicLocationString:Ljava/lang/String;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/rtt/ResponderLocation;->mCivicLocation:Landroid/net/wifi/rtt/CivicLocation;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/wifi/rtt/ResponderLocation;->mMapImageType:I

    .line 1011
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    iget-object p0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mMapImageUri:Landroid/net/Uri;

    const/16 v1, 0x1f

    aput-object p0, v0, v1

    .line 1003
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 415
    iget-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsValid:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 416
    iget-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsLciValid:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 417
    iget-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsZValid:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 418
    iget-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsUsageValid:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 419
    iget-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsBssidListValid:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 420
    iget-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsLocationCivicValid:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 421
    iget-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mIsMapImageValid:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 424
    iget-wide v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLatitudeUncertainty:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 425
    iget-wide v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLatitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 426
    iget-wide v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLongitudeUncertainty:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 427
    iget-wide v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLongitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 428
    iget v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mAltitudeType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 429
    iget-wide v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mAltitudeUncertainty:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 430
    iget-wide v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mAltitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 431
    iget v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mDatum:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 432
    iget-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLciRegisteredLocationAgreement:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 433
    iget-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLciRegisteredLocationDse:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 434
    iget-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLciDependentStation:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 435
    iget v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mLciVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 438
    iget v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mExpectedToMove:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 439
    iget-wide v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mFloorNumber:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 440
    iget-wide v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mHeightAboveFloorMeters:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 441
    iget-wide v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mHeightAboveFloorUncertaintyMeters:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 444
    iget-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mUsageRetransmit:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 445
    iget-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mUsageRetentionExpires:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 446
    iget-boolean v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mUsageExtraInfoOnAssociation:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 449
    iget-object v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mBssidList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 452
    iget-object v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mCivicLocationCountryCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 453
    iget-object v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mCivicLocationString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 454
    iget-object v0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mCivicLocation:Landroid/net/wifi/rtt/CivicLocation;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 457
    iget p2, p0, Landroid/net/wifi/rtt/ResponderLocation;->mMapImageType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 458
    iget-object p0, p0, Landroid/net/wifi/rtt/ResponderLocation;->mMapImageUri:Landroid/net/Uri;

    if-eqz p0, :cond_0

    .line 459
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, ""

    .line 461
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

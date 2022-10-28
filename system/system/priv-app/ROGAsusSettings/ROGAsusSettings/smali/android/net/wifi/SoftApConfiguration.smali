.class public final Landroid/net/wifi/SoftApConfiguration;
.super Ljava/lang/Object;
.source "SoftApConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/SoftApConfiguration$Builder;
    }
.end annotation


# static fields
.field public static BAND_TYPES:[I = null

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/SoftApConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field static final PSK_MAX_LEN:I = 0x3f
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final PSK_MIN_LEN:I = 0x8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final mAllowedClientList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/MacAddress;",
            ">;"
        }
    .end annotation
.end field

.field private final mAutoShutdownEnabled:Z

.field private final mBlockedClientList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/MacAddress;",
            ">;"
        }
    .end annotation
.end field

.field private mBridgedModeOpportunisticShutdownEnabled:Z

.field private final mBssid:Landroid/net/MacAddress;

.field private final mChannels:Landroid/util/SparseIntArray;

.field private final mClientControlByUser:Z

.field private final mHiddenSsid:Z

.field private mIeee80211axEnabled:Z

.field private mIsUserConfiguration:Z

.field private mMacRandomizationSetting:I

.field private final mMaxNumberOfClients:I

.field private final mPassphrase:Ljava/lang/String;

.field private final mSecurityType:I

.field private final mShutdownTimeoutMillis:J

.field private final mSsid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 127
    fill-array-data v0, :array_0

    sput-object v0, Landroid/net/wifi/SoftApConfiguration;->BAND_TYPES:[I

    .line 477
    new-instance v0, Landroid/net/wifi/SoftApConfiguration$1;

    invoke-direct {v0}, Landroid/net/wifi/SoftApConfiguration$1;-><init>()V

    sput-object v0, Landroid/net/wifi/SoftApConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x4
        0x8
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/net/MacAddress;Ljava/lang/String;ZLandroid/util/SparseIntArray;IIZJZLjava/util/List;Ljava/util/List;IZZZ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/net/MacAddress;",
            "Ljava/lang/String;",
            "Z",
            "Landroid/util/SparseIntArray;",
            "IIZJZ",
            "Ljava/util/List<",
            "Landroid/net/MacAddress;",
            ">;",
            "Ljava/util/List<",
            "Landroid/net/MacAddress;",
            ">;IZZZ)V"
        }
    .end annotation

    move-object v0, p0

    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 330
    iput-object v1, v0, Landroid/net/wifi/SoftApConfiguration;->mSsid:Ljava/lang/String;

    move-object v1, p2

    .line 331
    iput-object v1, v0, Landroid/net/wifi/SoftApConfiguration;->mBssid:Landroid/net/MacAddress;

    move-object v1, p3

    .line 332
    iput-object v1, v0, Landroid/net/wifi/SoftApConfiguration;->mPassphrase:Ljava/lang/String;

    move v1, p4

    .line 333
    iput-boolean v1, v0, Landroid/net/wifi/SoftApConfiguration;->mHiddenSsid:Z

    .line 334
    invoke-virtual {p5}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 335
    invoke-virtual {p5}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/SoftApConfiguration;->mChannels:Landroid/util/SparseIntArray;

    goto :goto_0

    .line 337
    :cond_0
    new-instance v1, Landroid/util/SparseIntArray;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v1, v0, Landroid/net/wifi/SoftApConfiguration;->mChannels:Landroid/util/SparseIntArray;

    const/4 v3, 0x0

    .line 338
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    :goto_0
    move v1, p6

    .line 340
    iput v1, v0, Landroid/net/wifi/SoftApConfiguration;->mSecurityType:I

    move v1, p7

    .line 341
    iput v1, v0, Landroid/net/wifi/SoftApConfiguration;->mMaxNumberOfClients:I

    move v1, p8

    .line 342
    iput-boolean v1, v0, Landroid/net/wifi/SoftApConfiguration;->mAutoShutdownEnabled:Z

    move-wide v1, p9

    .line 343
    iput-wide v1, v0, Landroid/net/wifi/SoftApConfiguration;->mShutdownTimeoutMillis:J

    move v1, p11

    .line 344
    iput-boolean v1, v0, Landroid/net/wifi/SoftApConfiguration;->mClientControlByUser:Z

    .line 345
    new-instance v1, Ljava/util/ArrayList;

    move-object/from16 v2, p12

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroid/net/wifi/SoftApConfiguration;->mBlockedClientList:Ljava/util/List;

    .line 346
    new-instance v1, Ljava/util/ArrayList;

    move-object/from16 v2, p13

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroid/net/wifi/SoftApConfiguration;->mAllowedClientList:Ljava/util/List;

    move/from16 v1, p14

    .line 347
    iput v1, v0, Landroid/net/wifi/SoftApConfiguration;->mMacRandomizationSetting:I

    move/from16 v1, p15

    .line 348
    iput-boolean v1, v0, Landroid/net/wifi/SoftApConfiguration;->mBridgedModeOpportunisticShutdownEnabled:Z

    move/from16 v1, p16

    .line 349
    iput-boolean v1, v0, Landroid/net/wifi/SoftApConfiguration;->mIeee80211axEnabled:Z

    move/from16 v1, p17

    .line 350
    iput-boolean v1, v0, Landroid/net/wifi/SoftApConfiguration;->mIsUserConfiguration:Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Landroid/net/MacAddress;Ljava/lang/String;ZLandroid/util/SparseIntArray;IIZJZLjava/util/List;Ljava/util/List;IZZZLandroid/net/wifi/SoftApConfiguration$1;)V
    .locals 0

    .line 62
    invoke-direct/range {p0 .. p17}, Landroid/net/wifi/SoftApConfiguration;-><init>(Ljava/lang/String;Landroid/net/MacAddress;Ljava/lang/String;ZLandroid/util/SparseIntArray;IIZJZLjava/util/List;Ljava/util/List;IZZZ)V

    return-void
.end method

.method static synthetic access$000(Landroid/os/Parcel;)Landroid/util/SparseIntArray;
    .locals 0

    .line 62
    invoke-static {p0}, Landroid/net/wifi/SoftApConfiguration;->readSparseIntArray(Landroid/os/Parcel;)Landroid/util/SparseIntArray;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1000(Landroid/net/wifi/SoftApConfiguration;)J
    .locals 2

    .line 62
    iget-wide v0, p0, Landroid/net/wifi/SoftApConfiguration;->mShutdownTimeoutMillis:J

    return-wide v0
.end method

.method static synthetic access$1100(Landroid/net/wifi/SoftApConfiguration;)Z
    .locals 0

    .line 62
    iget-boolean p0, p0, Landroid/net/wifi/SoftApConfiguration;->mClientControlByUser:Z

    return p0
.end method

.method static synthetic access$1200(Landroid/net/wifi/SoftApConfiguration;)Ljava/util/List;
    .locals 0

    .line 62
    iget-object p0, p0, Landroid/net/wifi/SoftApConfiguration;->mBlockedClientList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1300(Landroid/net/wifi/SoftApConfiguration;)Ljava/util/List;
    .locals 0

    .line 62
    iget-object p0, p0, Landroid/net/wifi/SoftApConfiguration;->mAllowedClientList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1400(Landroid/net/wifi/SoftApConfiguration;)I
    .locals 0

    .line 62
    iget p0, p0, Landroid/net/wifi/SoftApConfiguration;->mMacRandomizationSetting:I

    return p0
.end method

.method static synthetic access$1500(Landroid/net/wifi/SoftApConfiguration;)Z
    .locals 0

    .line 62
    iget-boolean p0, p0, Landroid/net/wifi/SoftApConfiguration;->mBridgedModeOpportunisticShutdownEnabled:Z

    return p0
.end method

.method static synthetic access$1600(Landroid/net/wifi/SoftApConfiguration;)Z
    .locals 0

    .line 62
    iget-boolean p0, p0, Landroid/net/wifi/SoftApConfiguration;->mIeee80211axEnabled:Z

    return p0
.end method

.method static synthetic access$1700(Landroid/net/wifi/SoftApConfiguration;)Z
    .locals 0

    .line 62
    iget-boolean p0, p0, Landroid/net/wifi/SoftApConfiguration;->mIsUserConfiguration:Z

    return p0
.end method

.method static synthetic access$1800(I)Z
    .locals 0

    .line 62
    invoke-static {p0}, Landroid/net/wifi/SoftApConfiguration;->isBandValid(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Landroid/net/wifi/SoftApConfiguration;)Ljava/lang/String;
    .locals 0

    .line 62
    iget-object p0, p0, Landroid/net/wifi/SoftApConfiguration;->mSsid:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Landroid/net/wifi/SoftApConfiguration;)Landroid/net/MacAddress;
    .locals 0

    .line 62
    iget-object p0, p0, Landroid/net/wifi/SoftApConfiguration;->mBssid:Landroid/net/MacAddress;

    return-object p0
.end method

.method static synthetic access$400(Landroid/net/wifi/SoftApConfiguration;)Ljava/lang/String;
    .locals 0

    .line 62
    iget-object p0, p0, Landroid/net/wifi/SoftApConfiguration;->mPassphrase:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Landroid/net/wifi/SoftApConfiguration;)Z
    .locals 0

    .line 62
    iget-boolean p0, p0, Landroid/net/wifi/SoftApConfiguration;->mHiddenSsid:Z

    return p0
.end method

.method static synthetic access$600(Landroid/net/wifi/SoftApConfiguration;)Landroid/util/SparseIntArray;
    .locals 0

    .line 62
    iget-object p0, p0, Landroid/net/wifi/SoftApConfiguration;->mChannels:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method static synthetic access$700(Landroid/net/wifi/SoftApConfiguration;)I
    .locals 0

    .line 62
    iget p0, p0, Landroid/net/wifi/SoftApConfiguration;->mMaxNumberOfClients:I

    return p0
.end method

.method static synthetic access$800(Landroid/net/wifi/SoftApConfiguration;)I
    .locals 0

    .line 62
    iget p0, p0, Landroid/net/wifi/SoftApConfiguration;->mSecurityType:I

    return p0
.end method

.method static synthetic access$900(Landroid/net/wifi/SoftApConfiguration;)Z
    .locals 0

    .line 62
    iget-boolean p0, p0, Landroid/net/wifi/SoftApConfiguration;->mAutoShutdownEnabled:Z

    return p0
.end method

.method private static isBandValid(I)Z
    .locals 0

    if-eqz p0, :cond_0

    and-int/lit8 p0, p0, -0x10

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static readSparseIntArray(Landroid/os/Parcel;)Landroid/util/SparseIntArray;
    .locals 4

    .line 456
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-gez v0, :cond_0

    .line 458
    new-instance p0, Landroid/util/SparseIntArray;

    invoke-direct {p0}, Landroid/util/SparseIntArray;-><init>()V

    return-object p0

    .line 460
    :cond_0
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1, v0}, Landroid/util/SparseIntArray;-><init>(I)V

    :goto_0
    if-lez v0, :cond_1

    .line 462
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 463
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 464
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private static writeSparseIntArray(Landroid/os/Parcel;Landroid/util/SparseIntArray;)V
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, -0x1

    .line 439
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    .line 442
    :cond_0
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    .line 443
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 446
    invoke-virtual {p1, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 447
    invoke-virtual {p1, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 358
    :cond_0
    instance-of v1, p1, Landroid/net/wifi/SoftApConfiguration;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 361
    :cond_1
    check-cast p1, Landroid/net/wifi/SoftApConfiguration;

    .line 362
    iget-object v1, p0, Landroid/net/wifi/SoftApConfiguration;->mSsid:Ljava/lang/String;

    iget-object v3, p1, Landroid/net/wifi/SoftApConfiguration;->mSsid:Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/net/wifi/SoftApConfiguration;->mBssid:Landroid/net/MacAddress;

    iget-object v3, p1, Landroid/net/wifi/SoftApConfiguration;->mBssid:Landroid/net/MacAddress;

    .line 363
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/net/wifi/SoftApConfiguration;->mPassphrase:Ljava/lang/String;

    iget-object v3, p1, Landroid/net/wifi/SoftApConfiguration;->mPassphrase:Ljava/lang/String;

    .line 364
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Landroid/net/wifi/SoftApConfiguration;->mHiddenSsid:Z

    iget-boolean v3, p1, Landroid/net/wifi/SoftApConfiguration;->mHiddenSsid:Z

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Landroid/net/wifi/SoftApConfiguration;->mChannels:Landroid/util/SparseIntArray;

    .line 366
    invoke-virtual {v1}, Landroid/util/SparseIntArray;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p1, Landroid/net/wifi/SoftApConfiguration;->mChannels:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Landroid/net/wifi/SoftApConfiguration;->mSecurityType:I

    iget v3, p1, Landroid/net/wifi/SoftApConfiguration;->mSecurityType:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Landroid/net/wifi/SoftApConfiguration;->mMaxNumberOfClients:I

    iget v3, p1, Landroid/net/wifi/SoftApConfiguration;->mMaxNumberOfClients:I

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Landroid/net/wifi/SoftApConfiguration;->mAutoShutdownEnabled:Z

    iget-boolean v3, p1, Landroid/net/wifi/SoftApConfiguration;->mAutoShutdownEnabled:Z

    if-ne v1, v3, :cond_2

    iget-wide v3, p0, Landroid/net/wifi/SoftApConfiguration;->mShutdownTimeoutMillis:J

    iget-wide v5, p1, Landroid/net/wifi/SoftApConfiguration;->mShutdownTimeoutMillis:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-boolean v1, p0, Landroid/net/wifi/SoftApConfiguration;->mClientControlByUser:Z

    iget-boolean v3, p1, Landroid/net/wifi/SoftApConfiguration;->mClientControlByUser:Z

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Landroid/net/wifi/SoftApConfiguration;->mBlockedClientList:Ljava/util/List;

    iget-object v3, p1, Landroid/net/wifi/SoftApConfiguration;->mBlockedClientList:Ljava/util/List;

    .line 372
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/net/wifi/SoftApConfiguration;->mAllowedClientList:Ljava/util/List;

    iget-object v3, p1, Landroid/net/wifi/SoftApConfiguration;->mAllowedClientList:Ljava/util/List;

    .line 373
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Landroid/net/wifi/SoftApConfiguration;->mMacRandomizationSetting:I

    iget v3, p1, Landroid/net/wifi/SoftApConfiguration;->mMacRandomizationSetting:I

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Landroid/net/wifi/SoftApConfiguration;->mBridgedModeOpportunisticShutdownEnabled:Z

    iget-boolean v3, p1, Landroid/net/wifi/SoftApConfiguration;->mBridgedModeOpportunisticShutdownEnabled:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Landroid/net/wifi/SoftApConfiguration;->mIeee80211axEnabled:Z

    iget-boolean v3, p1, Landroid/net/wifi/SoftApConfiguration;->mIeee80211axEnabled:Z

    if-ne v1, v3, :cond_2

    iget-boolean p0, p0, Landroid/net/wifi/SoftApConfiguration;->mIsUserConfiguration:Z

    iget-boolean p1, p1, Landroid/net/wifi/SoftApConfiguration;->mIsUserConfiguration:Z

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getAllowedClientList()Ljava/util/List;
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/MacAddress;",
            ">;"
        }
    .end annotation

    .line 693
    iget-object p0, p0, Landroid/net/wifi/SoftApConfiguration;->mAllowedClientList:Ljava/util/List;

    return-object p0
.end method

.method public getBand()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 549
    iget-object p0, p0, Landroid/net/wifi/SoftApConfiguration;->mChannels:Landroid/util/SparseIntArray;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result p0

    return p0
.end method

.method public getBlockedClientList()Ljava/util/List;
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/MacAddress;",
            ">;"
        }
    .end annotation

    .line 681
    iget-object p0, p0, Landroid/net/wifi/SoftApConfiguration;->mBlockedClientList:Ljava/util/List;

    return-object p0
.end method

.method public getChannels()Landroid/util/SparseIntArray;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 605
    invoke-static {}, Lcom/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 608
    iget-object p0, p0, Landroid/net/wifi/SoftApConfiguration;->mChannels:Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object p0

    return-object p0

    .line 606
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public getPassphrase()Ljava/lang/String;
    .locals 0

    .line 520
    iget-object p0, p0, Landroid/net/wifi/SoftApConfiguration;->mPassphrase:Ljava/lang/String;

    return-object p0
.end method

.method public getSecurityType()I
    .locals 0

    .line 621
    iget p0, p0, Landroid/net/wifi/SoftApConfiguration;->mSecurityType:I

    return p0
.end method

.method public getShutdownTimeoutMillis()J
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 656
    iget-wide v0, p0, Landroid/net/wifi/SoftApConfiguration;->mShutdownTimeoutMillis:J

    return-wide v0
.end method

.method public getSsid()Ljava/lang/String;
    .locals 0

    .line 502
    iget-object p0, p0, Landroid/net/wifi/SoftApConfiguration;->mSsid:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/Object;

    .line 383
    iget-object v1, p0, Landroid/net/wifi/SoftApConfiguration;->mSsid:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/SoftApConfiguration;->mBssid:Landroid/net/MacAddress;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/SoftApConfiguration;->mPassphrase:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/net/wifi/SoftApConfiguration;->mHiddenSsid:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/SoftApConfiguration;->mChannels:Landroid/util/SparseIntArray;

    .line 384
    invoke-virtual {v1}, Landroid/util/SparseIntArray;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/wifi/SoftApConfiguration;->mSecurityType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/wifi/SoftApConfiguration;->mMaxNumberOfClients:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/net/wifi/SoftApConfiguration;->mAutoShutdownEnabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/net/wifi/SoftApConfiguration;->mShutdownTimeoutMillis:J

    .line 385
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/net/wifi/SoftApConfiguration;->mClientControlByUser:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/SoftApConfiguration;->mBlockedClientList:Ljava/util/List;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/SoftApConfiguration;->mAllowedClientList:Ljava/util/List;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/wifi/SoftApConfiguration;->mMacRandomizationSetting:I

    .line 386
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/net/wifi/SoftApConfiguration;->mBridgedModeOpportunisticShutdownEnabled:Z

    .line 387
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/net/wifi/SoftApConfiguration;->mIeee80211axEnabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    iget-boolean p0, p0, Landroid/net/wifi/SoftApConfiguration;->mIsUserConfiguration:Z

    .line 388
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/16 v1, 0xf

    aput-object p0, v0, v1

    .line 383
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isAutoShutdownEnabled()Z
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 644
    iget-boolean p0, p0, Landroid/net/wifi/SoftApConfiguration;->mAutoShutdownEnabled:Z

    return p0
.end method

.method public isBridgedModeOpportunisticShutdownEnabled()Z
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 729
    invoke-static {}, Lcom/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 732
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->isBridgedModeOpportunisticShutdownEnabledInternal()Z

    move-result p0

    return p0

    .line 730
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public isBridgedModeOpportunisticShutdownEnabledInternal()Z
    .locals 0

    .line 740
    iget-boolean p0, p0, Landroid/net/wifi/SoftApConfiguration;->mBridgedModeOpportunisticShutdownEnabled:Z

    return p0
.end method

.method public isClientControlByUserEnabled()Z
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 668
    iget-boolean p0, p0, Landroid/net/wifi/SoftApConfiguration;->mClientControlByUser:Z

    return p0
.end method

.method public isHiddenSsid()Z
    .locals 0

    .line 529
    iget-boolean p0, p0, Landroid/net/wifi/SoftApConfiguration;->mHiddenSsid:Z

    return p0
.end method

.method public isIeee80211axEnabled()Z
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 761
    invoke-static {}, Lcom/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 764
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->isIeee80211axEnabledInternal()Z

    move-result p0

    return p0

    .line 762
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public isIeee80211axEnabledInternal()Z
    .locals 0

    .line 748
    iget-boolean p0, p0, Landroid/net/wifi/SoftApConfiguration;->mIeee80211axEnabled:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 393
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ssid = "

    .line 394
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/SoftApConfiguration;->mSsid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    iget-object v1, p0, Landroid/net/wifi/SoftApConfiguration;->mBssid:Landroid/net/MacAddress;

    if-eqz v1, :cond_0

    const-string v1, " \n bssid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/SoftApConfiguration;->mBssid:Landroid/net/MacAddress;

    invoke-virtual {v1}, Landroid/net/MacAddress;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, " \n Passphrase = "

    .line 396
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    iget-object v1, p0, Landroid/net/wifi/SoftApConfiguration;->mPassphrase:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "<empty>"

    goto :goto_0

    :cond_1
    const-string v1, "<non-empty>"

    .line 396
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " \n HiddenSsid = "

    .line 398
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/net/wifi/SoftApConfiguration;->mHiddenSsid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " \n Channels = "

    .line 399
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/SoftApConfiguration;->mChannels:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " \n SecurityType = "

    .line 400
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " \n MaxClient = "

    .line 401
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/wifi/SoftApConfiguration;->mMaxNumberOfClients:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " \n AutoShutdownEnabled = "

    .line 402
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/net/wifi/SoftApConfiguration;->mAutoShutdownEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " \n ShutdownTimeoutMillis = "

    .line 403
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/net/wifi/SoftApConfiguration;->mShutdownTimeoutMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " \n ClientControlByUser = "

    .line 404
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/net/wifi/SoftApConfiguration;->mClientControlByUser:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " \n BlockedClientList = "

    .line 405
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/SoftApConfiguration;->mBlockedClientList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " \n AllowedClientList= "

    .line 406
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/SoftApConfiguration;->mAllowedClientList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " \n MacRandomizationSetting = "

    .line 407
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/wifi/SoftApConfiguration;->mMacRandomizationSetting:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " \n BridgedModeInstanceOpportunisticEnabled = "

    .line 408
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/net/wifi/SoftApConfiguration;->mBridgedModeOpportunisticShutdownEnabled:Z

    .line 409
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " \n Ieee80211axEnabled = "

    .line 410
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/net/wifi/SoftApConfiguration;->mIeee80211axEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " \n isUserConfiguration = "

    .line 411
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Landroid/net/wifi/SoftApConfiguration;->mIsUserConfiguration:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 412
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 417
    iget-object v0, p0, Landroid/net/wifi/SoftApConfiguration;->mSsid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 418
    iget-object v0, p0, Landroid/net/wifi/SoftApConfiguration;->mBssid:Landroid/net/MacAddress;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 419
    iget-object p2, p0, Landroid/net/wifi/SoftApConfiguration;->mPassphrase:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 420
    iget-boolean p2, p0, Landroid/net/wifi/SoftApConfiguration;->mHiddenSsid:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 421
    iget-object p2, p0, Landroid/net/wifi/SoftApConfiguration;->mChannels:Landroid/util/SparseIntArray;

    invoke-static {p1, p2}, Landroid/net/wifi/SoftApConfiguration;->writeSparseIntArray(Landroid/os/Parcel;Landroid/util/SparseIntArray;)V

    .line 422
    iget p2, p0, Landroid/net/wifi/SoftApConfiguration;->mSecurityType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 423
    iget p2, p0, Landroid/net/wifi/SoftApConfiguration;->mMaxNumberOfClients:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 424
    iget-boolean p2, p0, Landroid/net/wifi/SoftApConfiguration;->mAutoShutdownEnabled:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 425
    iget-wide v0, p0, Landroid/net/wifi/SoftApConfiguration;->mShutdownTimeoutMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 426
    iget-boolean p2, p0, Landroid/net/wifi/SoftApConfiguration;->mClientControlByUser:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 427
    iget-object p2, p0, Landroid/net/wifi/SoftApConfiguration;->mBlockedClientList:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 428
    iget-object p2, p0, Landroid/net/wifi/SoftApConfiguration;->mAllowedClientList:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 429
    iget p2, p0, Landroid/net/wifi/SoftApConfiguration;->mMacRandomizationSetting:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 430
    iget-boolean p2, p0, Landroid/net/wifi/SoftApConfiguration;->mBridgedModeOpportunisticShutdownEnabled:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 431
    iget-boolean p2, p0, Landroid/net/wifi/SoftApConfiguration;->mIeee80211axEnabled:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 432
    iget-boolean p0, p0, Landroid/net/wifi/SoftApConfiguration;->mIsUserConfiguration:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method

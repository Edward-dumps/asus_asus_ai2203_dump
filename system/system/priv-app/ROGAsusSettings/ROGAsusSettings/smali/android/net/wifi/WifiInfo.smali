.class public Landroid/net/wifi/WifiInfo;
.super Ljava/lang/Object;
.source "WifiInfo.java"

# interfaces
.implements Landroid/net/TransportInfo;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/WifiInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final stateMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Landroid/net/wifi/SupplicantState;",
            "Landroid/net/NetworkInfo$DetailedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBSSID:Ljava/lang/String;
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
        maxTargetSdk = 0x1c
        trackingBug = 0x6e40dbfL
    .end annotation
.end field

.field private mCarrierMerged:Z

.field private mEphemeral:Z

.field private mFqdn:Ljava/lang/String;

.field private mFrequency:I

.field private mHe8ssCapableAp:Z

.field private mInformationElements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult$InformationElement;",
            ">;"
        }
    .end annotation
.end field

.field private mIpAddress:Ljava/net/InetAddress;
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private mIsPrimary:I

.field private mLinkSpeed:I

.field private mLostTxPacketsPerSecond:D

.field private mMacAddress:Ljava/lang/String;
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private mMaxSupportedRxLinkSpeed:I

.field private mMaxSupportedTxLinkSpeed:I

.field private mMeteredHint:Z

.field private mNetworkId:I

.field private mOemPaid:Z

.field private mOemPrivate:Z

.field private mOsuAp:Z

.field private mPasspointUniqueId:Ljava/lang/String;

.field private mProviderFriendlyName:Ljava/lang/String;

.field private mRequestingPackageName:Ljava/lang/String;

.field private mRssi:I

.field private mRxLinkSpeed:I

.field private mSecurityType:I

.field private mSubscriptionId:I

.field private mSuccessfulRxPacketsPerSecond:D

.field private mSuccessfulTxPacketsPerSecond:D

.field private mSupplicantState:Landroid/net/wifi/SupplicantState;

.field private mTrusted:Z

.field private mTxLinkSpeed:I

.field private mTxRetriedTxPacketsPerSecond:D

.field private mVhtMax8SpatialStreamsSupport:Z

.field private mWifiSsid:Landroid/net/wifi/WifiSsid;
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private mWifiStandard:I

.field public rxSuccess:J

.field public score:I
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public txBad:J

.field public txRetries:J

.field public txSuccess:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 79
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Landroid/net/wifi/SupplicantState;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    .line 92
    sget-object v1, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v1, Landroid/net/wifi/SupplicantState;->INTERFACE_DISABLED:Landroid/net/wifi/SupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v1, Landroid/net/wifi/SupplicantState;->INACTIVE:Landroid/net/wifi/SupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v1, Landroid/net/wifi/SupplicantState;->SCANNING:Landroid/net/wifi/SupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v1, Landroid/net/wifi/SupplicantState;->AUTHENTICATING:Landroid/net/wifi/SupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v1, Landroid/net/wifi/SupplicantState;->ASSOCIATING:Landroid/net/wifi/SupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v1, Landroid/net/wifi/SupplicantState;->ASSOCIATED:Landroid/net/wifi/SupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v1, Landroid/net/wifi/SupplicantState;->FOUR_WAY_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v1, Landroid/net/wifi/SupplicantState;->GROUP_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v1, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v1, Landroid/net/wifi/SupplicantState;->DORMANT:Landroid/net/wifi/SupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v1, Landroid/net/wifi/SupplicantState;->UNINITIALIZED:Landroid/net/wifi/SupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v1, Landroid/net/wifi/SupplicantState;->INVALID:Landroid/net/wifi/SupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1307
    new-instance v0, Landroid/net/wifi/WifiInfo$1;

    invoke-direct {v0}, Landroid/net/wifi/WifiInfo$1;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation

    .line 434
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "02:00:00:00:00:00"

    .line 246
    iput-object v0, p0, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    const/4 v0, 0x0

    .line 435
    iput-object v0, p0, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    .line 436
    iput-object v0, p0, Landroid/net/wifi/WifiInfo;->mBSSID:Ljava/lang/String;

    const/4 v0, -0x1

    .line 437
    iput v0, p0, Landroid/net/wifi/WifiInfo;->mNetworkId:I

    .line 438
    sget-object v1, Landroid/net/wifi/SupplicantState;->UNINITIALIZED:Landroid/net/wifi/SupplicantState;

    iput-object v1, p0, Landroid/net/wifi/WifiInfo;->mSupplicantState:Landroid/net/wifi/SupplicantState;

    const/16 v1, -0x7f

    .line 439
    iput v1, p0, Landroid/net/wifi/WifiInfo;->mRssi:I

    .line 440
    iput v0, p0, Landroid/net/wifi/WifiInfo;->mLinkSpeed:I

    .line 441
    iput v0, p0, Landroid/net/wifi/WifiInfo;->mFrequency:I

    .line 442
    iput v0, p0, Landroid/net/wifi/WifiInfo;->mSubscriptionId:I

    .line 443
    iput v0, p0, Landroid/net/wifi/WifiInfo;->mSecurityType:I

    const/4 v0, 0x0

    .line 444
    iput v0, p0, Landroid/net/wifi/WifiInfo;->mIsPrimary:I

    return-void
.end method

.method private constructor <init>(Landroid/net/wifi/WifiInfo;J)V
    .locals 4

    .line 498
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "02:00:00:00:00:00"

    .line 246
    iput-object v0, p0, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    if-eqz p1, :cond_a

    .line 500
    iget-object v1, p1, Landroid/net/wifi/WifiInfo;->mSupplicantState:Landroid/net/wifi/SupplicantState;

    iput-object v1, p0, Landroid/net/wifi/WifiInfo;->mSupplicantState:Landroid/net/wifi/SupplicantState;

    .line 501
    invoke-direct {p0, p2, p3}, Landroid/net/wifi/WifiInfo;->shouldRedactLocationSensitiveFields(J)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    goto :goto_0

    .line 502
    :cond_0
    iget-object v1, p1, Landroid/net/wifi/WifiInfo;->mBSSID:Ljava/lang/String;

    :goto_0
    iput-object v1, p0, Landroid/net/wifi/WifiInfo;->mBSSID:Ljava/lang/String;

    .line 503
    invoke-direct {p0, p2, p3}, Landroid/net/wifi/WifiInfo;->shouldRedactLocationSensitiveFields(J)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 504
    invoke-static {v2}, Landroid/net/wifi/WifiSsid;->createFromHex(Ljava/lang/String;)Landroid/net/wifi/WifiSsid;

    move-result-object v1

    goto :goto_1

    :cond_1
    iget-object v1, p1, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    :goto_1
    iput-object v1, p0, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    .line 505
    invoke-direct {p0, p2, p3}, Landroid/net/wifi/WifiInfo;->shouldRedactLocationSensitiveFields(J)Z

    move-result v1

    const/4 v3, -0x1

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_2

    .line 506
    :cond_2
    iget v1, p1, Landroid/net/wifi/WifiInfo;->mNetworkId:I

    :goto_2
    iput v1, p0, Landroid/net/wifi/WifiInfo;->mNetworkId:I

    .line 507
    iget v1, p1, Landroid/net/wifi/WifiInfo;->mRssi:I

    iput v1, p0, Landroid/net/wifi/WifiInfo;->mRssi:I

    .line 508
    iget v1, p1, Landroid/net/wifi/WifiInfo;->mLinkSpeed:I

    iput v1, p0, Landroid/net/wifi/WifiInfo;->mLinkSpeed:I

    .line 509
    iget v1, p1, Landroid/net/wifi/WifiInfo;->mTxLinkSpeed:I

    iput v1, p0, Landroid/net/wifi/WifiInfo;->mTxLinkSpeed:I

    .line 510
    iget v1, p1, Landroid/net/wifi/WifiInfo;->mRxLinkSpeed:I

    iput v1, p0, Landroid/net/wifi/WifiInfo;->mRxLinkSpeed:I

    .line 511
    iget v1, p1, Landroid/net/wifi/WifiInfo;->mFrequency:I

    iput v1, p0, Landroid/net/wifi/WifiInfo;->mFrequency:I

    .line 512
    iget-object v1, p1, Landroid/net/wifi/WifiInfo;->mIpAddress:Ljava/net/InetAddress;

    iput-object v1, p0, Landroid/net/wifi/WifiInfo;->mIpAddress:Ljava/net/InetAddress;

    .line 513
    invoke-direct {p0, p2, p3}, Landroid/net/wifi/WifiInfo;->shouldRedactLocalMacAddressFields(J)Z

    move-result v1

    if-nez v1, :cond_4

    .line 514
    invoke-direct {p0, p2, p3}, Landroid/net/wifi/WifiInfo;->shouldRedactLocationSensitiveFields(J)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_3

    .line 515
    :cond_3
    iget-object v0, p1, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    :cond_4
    :goto_3
    iput-object v0, p0, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    .line 516
    iget-boolean v0, p1, Landroid/net/wifi/WifiInfo;->mMeteredHint:Z

    iput-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mMeteredHint:Z

    .line 517
    iget-boolean v0, p1, Landroid/net/wifi/WifiInfo;->mEphemeral:Z

    iput-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mEphemeral:Z

    .line 518
    iget-boolean v0, p1, Landroid/net/wifi/WifiInfo;->mTrusted:Z

    iput-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mTrusted:Z

    .line 519
    iget-boolean v0, p1, Landroid/net/wifi/WifiInfo;->mOemPaid:Z

    iput-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mOemPaid:Z

    .line 520
    iget-boolean v0, p1, Landroid/net/wifi/WifiInfo;->mOemPrivate:Z

    iput-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mOemPrivate:Z

    .line 521
    iget-boolean v0, p1, Landroid/net/wifi/WifiInfo;->mCarrierMerged:Z

    iput-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mCarrierMerged:Z

    .line 522
    iget-object v0, p1, Landroid/net/wifi/WifiInfo;->mRequestingPackageName:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/WifiInfo;->mRequestingPackageName:Ljava/lang/String;

    .line 524
    iget-boolean v0, p1, Landroid/net/wifi/WifiInfo;->mOsuAp:Z

    iput-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mOsuAp:Z

    .line 525
    invoke-direct {p0, p2, p3}, Landroid/net/wifi/WifiInfo;->shouldRedactLocationSensitiveFields(J)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v0, v2

    goto :goto_4

    .line 526
    :cond_5
    iget-object v0, p1, Landroid/net/wifi/WifiInfo;->mFqdn:Ljava/lang/String;

    :goto_4
    iput-object v0, p0, Landroid/net/wifi/WifiInfo;->mFqdn:Ljava/lang/String;

    .line 527
    invoke-direct {p0, p2, p3}, Landroid/net/wifi/WifiInfo;->shouldRedactLocationSensitiveFields(J)Z

    move-result v0

    if-eqz v0, :cond_6

    move-object v0, v2

    goto :goto_5

    .line 528
    :cond_6
    iget-object v0, p1, Landroid/net/wifi/WifiInfo;->mProviderFriendlyName:Ljava/lang/String;

    :goto_5
    iput-object v0, p0, Landroid/net/wifi/WifiInfo;->mProviderFriendlyName:Ljava/lang/String;

    .line 529
    iget v0, p1, Landroid/net/wifi/WifiInfo;->mSubscriptionId:I

    iput v0, p0, Landroid/net/wifi/WifiInfo;->mSubscriptionId:I

    .line 530
    iget-boolean v0, p1, Landroid/net/wifi/WifiInfo;->mVhtMax8SpatialStreamsSupport:Z

    iput-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mVhtMax8SpatialStreamsSupport:Z

    .line 531
    iget-boolean v0, p1, Landroid/net/wifi/WifiInfo;->mHe8ssCapableAp:Z

    iput-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mHe8ssCapableAp:Z

    .line 532
    iget-wide v0, p1, Landroid/net/wifi/WifiInfo;->txBad:J

    iput-wide v0, p0, Landroid/net/wifi/WifiInfo;->txBad:J

    .line 533
    iget-wide v0, p1, Landroid/net/wifi/WifiInfo;->txRetries:J

    iput-wide v0, p0, Landroid/net/wifi/WifiInfo;->txRetries:J

    .line 534
    iget-wide v0, p1, Landroid/net/wifi/WifiInfo;->txSuccess:J

    iput-wide v0, p0, Landroid/net/wifi/WifiInfo;->txSuccess:J

    .line 535
    iget-wide v0, p1, Landroid/net/wifi/WifiInfo;->rxSuccess:J

    iput-wide v0, p0, Landroid/net/wifi/WifiInfo;->rxSuccess:J

    .line 536
    iget-wide v0, p1, Landroid/net/wifi/WifiInfo;->mLostTxPacketsPerSecond:D

    iput-wide v0, p0, Landroid/net/wifi/WifiInfo;->mLostTxPacketsPerSecond:D

    .line 537
    iget-wide v0, p1, Landroid/net/wifi/WifiInfo;->mTxRetriedTxPacketsPerSecond:D

    iput-wide v0, p0, Landroid/net/wifi/WifiInfo;->mTxRetriedTxPacketsPerSecond:D

    .line 538
    iget-wide v0, p1, Landroid/net/wifi/WifiInfo;->mSuccessfulTxPacketsPerSecond:D

    iput-wide v0, p0, Landroid/net/wifi/WifiInfo;->mSuccessfulTxPacketsPerSecond:D

    .line 539
    iget-wide v0, p1, Landroid/net/wifi/WifiInfo;->mSuccessfulRxPacketsPerSecond:D

    iput-wide v0, p0, Landroid/net/wifi/WifiInfo;->mSuccessfulRxPacketsPerSecond:D

    .line 540
    iget v0, p1, Landroid/net/wifi/WifiInfo;->score:I

    iput v0, p0, Landroid/net/wifi/WifiInfo;->score:I

    .line 541
    iget v0, p1, Landroid/net/wifi/WifiInfo;->mWifiStandard:I

    iput v0, p0, Landroid/net/wifi/WifiInfo;->mWifiStandard:I

    .line 542
    iget v0, p1, Landroid/net/wifi/WifiInfo;->mMaxSupportedTxLinkSpeed:I

    iput v0, p0, Landroid/net/wifi/WifiInfo;->mMaxSupportedTxLinkSpeed:I

    .line 543
    iget v0, p1, Landroid/net/wifi/WifiInfo;->mMaxSupportedRxLinkSpeed:I

    iput v0, p0, Landroid/net/wifi/WifiInfo;->mMaxSupportedRxLinkSpeed:I

    .line 544
    invoke-direct {p0, p2, p3}, Landroid/net/wifi/WifiInfo;->shouldRedactLocationSensitiveFields(J)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_6

    .line 545
    :cond_7
    iget-object v2, p1, Landroid/net/wifi/WifiInfo;->mPasspointUniqueId:Ljava/lang/String;

    :goto_6
    iput-object v2, p0, Landroid/net/wifi/WifiInfo;->mPasspointUniqueId:Ljava/lang/String;

    .line 546
    iget-object v0, p1, Landroid/net/wifi/WifiInfo;->mInformationElements:Ljava/util/List;

    if-eqz v0, :cond_8

    .line 547
    invoke-direct {p0, p2, p3}, Landroid/net/wifi/WifiInfo;->shouldRedactLocationSensitiveFields(J)Z

    move-result v0

    if-nez v0, :cond_8

    .line 548
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/net/wifi/WifiInfo;->mInformationElements:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/net/wifi/WifiInfo;->mInformationElements:Ljava/util/List;

    .line 550
    :cond_8
    invoke-direct {p0, p2, p3}, Landroid/net/wifi/WifiInfo;->shouldRedactNetworkSettingsFields(J)Z

    move-result p2

    if-eqz p2, :cond_9

    goto :goto_7

    .line 551
    :cond_9
    iget v3, p1, Landroid/net/wifi/WifiInfo;->mIsPrimary:I

    :goto_7
    iput v3, p0, Landroid/net/wifi/WifiInfo;->mIsPrimary:I

    .line 552
    iget p1, p1, Landroid/net/wifi/WifiInfo;->mSecurityType:I

    iput p1, p0, Landroid/net/wifi/WifiInfo;->mSecurityType:I

    :cond_a
    return-void
.end method

.method static synthetic access$002(Landroid/net/wifi/WifiInfo;Landroid/net/wifi/WifiSsid;)Landroid/net/wifi/WifiSsid;
    .locals 0

    .line 72
    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    return-object p1
.end method

.method static synthetic access$1002(Landroid/net/wifi/WifiInfo;D)D
    .locals 0

    .line 72
    iput-wide p1, p0, Landroid/net/wifi/WifiInfo;->mTxRetriedTxPacketsPerSecond:D

    return-wide p1
.end method

.method static synthetic access$102(Landroid/net/wifi/WifiInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 72
    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mBSSID:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1102(Landroid/net/wifi/WifiInfo;D)D
    .locals 0

    .line 72
    iput-wide p1, p0, Landroid/net/wifi/WifiInfo;->mLostTxPacketsPerSecond:D

    return-wide p1
.end method

.method static synthetic access$1202(Landroid/net/wifi/WifiInfo;D)D
    .locals 0

    .line 72
    iput-wide p1, p0, Landroid/net/wifi/WifiInfo;->mSuccessfulRxPacketsPerSecond:D

    return-wide p1
.end method

.method static synthetic access$1302(Landroid/net/wifi/WifiInfo;Landroid/net/wifi/SupplicantState;)Landroid/net/wifi/SupplicantState;
    .locals 0

    .line 72
    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mSupplicantState:Landroid/net/wifi/SupplicantState;

    return-object p1
.end method

.method static synthetic access$1402(Landroid/net/wifi/WifiInfo;Z)Z
    .locals 0

    .line 72
    iput-boolean p1, p0, Landroid/net/wifi/WifiInfo;->mOsuAp:Z

    return p1
.end method

.method static synthetic access$1502(Landroid/net/wifi/WifiInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 72
    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mRequestingPackageName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1602(Landroid/net/wifi/WifiInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 72
    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mFqdn:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1702(Landroid/net/wifi/WifiInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 72
    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mProviderFriendlyName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1802(Landroid/net/wifi/WifiInfo;Z)Z
    .locals 0

    .line 72
    iput-boolean p1, p0, Landroid/net/wifi/WifiInfo;->mVhtMax8SpatialStreamsSupport:Z

    return p1
.end method

.method static synthetic access$1902(Landroid/net/wifi/WifiInfo;Z)Z
    .locals 0

    .line 72
    iput-boolean p1, p0, Landroid/net/wifi/WifiInfo;->mHe8ssCapableAp:Z

    return p1
.end method

.method static synthetic access$2002(Landroid/net/wifi/WifiInfo;I)I
    .locals 0

    .line 72
    iput p1, p0, Landroid/net/wifi/WifiInfo;->mWifiStandard:I

    return p1
.end method

.method static synthetic access$202(Landroid/net/wifi/WifiInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 72
    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2102(Landroid/net/wifi/WifiInfo;I)I
    .locals 0

    .line 72
    iput p1, p0, Landroid/net/wifi/WifiInfo;->mMaxSupportedTxLinkSpeed:I

    return p1
.end method

.method static synthetic access$2202(Landroid/net/wifi/WifiInfo;I)I
    .locals 0

    .line 72
    iput p1, p0, Landroid/net/wifi/WifiInfo;->mMaxSupportedRxLinkSpeed:I

    return p1
.end method

.method static synthetic access$2302(Landroid/net/wifi/WifiInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 72
    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mPasspointUniqueId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2402(Landroid/net/wifi/WifiInfo;I)I
    .locals 0

    .line 72
    iput p1, p0, Landroid/net/wifi/WifiInfo;->mSubscriptionId:I

    return p1
.end method

.method static synthetic access$2502(Landroid/net/wifi/WifiInfo;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 72
    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mInformationElements:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2602(Landroid/net/wifi/WifiInfo;I)I
    .locals 0

    .line 72
    iput p1, p0, Landroid/net/wifi/WifiInfo;->mIsPrimary:I

    return p1
.end method

.method static synthetic access$2702(Landroid/net/wifi/WifiInfo;I)I
    .locals 0

    .line 72
    iput p1, p0, Landroid/net/wifi/WifiInfo;->mSecurityType:I

    return p1
.end method

.method static synthetic access$302(Landroid/net/wifi/WifiInfo;Z)Z
    .locals 0

    .line 72
    iput-boolean p1, p0, Landroid/net/wifi/WifiInfo;->mMeteredHint:Z

    return p1
.end method

.method static synthetic access$402(Landroid/net/wifi/WifiInfo;Z)Z
    .locals 0

    .line 72
    iput-boolean p1, p0, Landroid/net/wifi/WifiInfo;->mEphemeral:Z

    return p1
.end method

.method static synthetic access$502(Landroid/net/wifi/WifiInfo;Z)Z
    .locals 0

    .line 72
    iput-boolean p1, p0, Landroid/net/wifi/WifiInfo;->mTrusted:Z

    return p1
.end method

.method static synthetic access$602(Landroid/net/wifi/WifiInfo;Z)Z
    .locals 0

    .line 72
    iput-boolean p1, p0, Landroid/net/wifi/WifiInfo;->mOemPaid:Z

    return p1
.end method

.method static synthetic access$702(Landroid/net/wifi/WifiInfo;Z)Z
    .locals 0

    .line 72
    iput-boolean p1, p0, Landroid/net/wifi/WifiInfo;->mOemPrivate:Z

    return p1
.end method

.method static synthetic access$802(Landroid/net/wifi/WifiInfo;Z)Z
    .locals 0

    .line 72
    iput-boolean p1, p0, Landroid/net/wifi/WifiInfo;->mCarrierMerged:Z

    return p1
.end method

.method static synthetic access$902(Landroid/net/wifi/WifiInfo;D)D
    .locals 0

    .line 72
    iput-wide p1, p0, Landroid/net/wifi/WifiInfo;->mSuccessfulTxPacketsPerSecond:D

    return-wide p1
.end method

.method public static getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;
    .locals 1

    .line 1141
    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    invoke-virtual {v0, p0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/NetworkInfo$DetailedState;

    return-object p0
.end method

.method public static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1193
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    const/4 v2, 0x0

    .line 1194
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x22

    if-ne v2, v3, :cond_1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_1

    .line 1195
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public static sanitizeSsid(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1185
    invoke-static {p0}, Landroid/net/wifi/WifiInfo;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private shouldRedactLocalMacAddressFields(J)Z
    .locals 2

    const-wide/16 v0, 0x2

    and-long p0, p1, v0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private shouldRedactLocationSensitiveFields(J)Z
    .locals 2

    const-wide/16 v0, 0x1

    and-long p0, p1, v0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private shouldRedactNetworkSettingsFields(J)Z
    .locals 2

    const-wide/16 v0, 0x4

    and-long p0, p1, v0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1458
    :cond_0
    invoke-static {}, Lcom/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 1460
    :cond_1
    instance-of v1, p1, Landroid/net/wifi/WifiInfo;

    if-nez v1, :cond_2

    return v2

    .line 1462
    :cond_2
    check-cast p1, Landroid/net/wifi/WifiInfo;

    .line 1463
    iget-object v1, p0, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    iget-object v3, p1, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/net/wifi/WifiInfo;->mBSSID:Ljava/lang/String;

    iget-object v3, p1, Landroid/net/wifi/WifiInfo;->mBSSID:Ljava/lang/String;

    .line 1464
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Landroid/net/wifi/WifiInfo;->mNetworkId:I

    .line 1465
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v3, p1, Landroid/net/wifi/WifiInfo;->mNetworkId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Landroid/net/wifi/WifiInfo;->mRssi:I

    .line 1466
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v3, p1, Landroid/net/wifi/WifiInfo;->mRssi:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/net/wifi/WifiInfo;->mSupplicantState:Landroid/net/wifi/SupplicantState;

    iget-object v3, p1, Landroid/net/wifi/WifiInfo;->mSupplicantState:Landroid/net/wifi/SupplicantState;

    .line 1467
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Landroid/net/wifi/WifiInfo;->mLinkSpeed:I

    .line 1468
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v3, p1, Landroid/net/wifi/WifiInfo;->mLinkSpeed:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Landroid/net/wifi/WifiInfo;->mTxLinkSpeed:I

    .line 1469
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v3, p1, Landroid/net/wifi/WifiInfo;->mTxLinkSpeed:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Landroid/net/wifi/WifiInfo;->mRxLinkSpeed:I

    .line 1470
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v3, p1, Landroid/net/wifi/WifiInfo;->mRxLinkSpeed:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Landroid/net/wifi/WifiInfo;->mFrequency:I

    .line 1471
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v3, p1, Landroid/net/wifi/WifiInfo;->mFrequency:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/net/wifi/WifiInfo;->mIpAddress:Ljava/net/InetAddress;

    iget-object v3, p1, Landroid/net/wifi/WifiInfo;->mIpAddress:Ljava/net/InetAddress;

    .line 1472
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    iget-object v3, p1, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    .line 1473
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Landroid/net/wifi/WifiInfo;->mMeteredHint:Z

    .line 1474
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v3, p1, Landroid/net/wifi/WifiInfo;->mMeteredHint:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Landroid/net/wifi/WifiInfo;->mEphemeral:Z

    .line 1475
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v3, p1, Landroid/net/wifi/WifiInfo;->mEphemeral:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Landroid/net/wifi/WifiInfo;->mTrusted:Z

    .line 1476
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v3, p1, Landroid/net/wifi/WifiInfo;->mTrusted:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Landroid/net/wifi/WifiInfo;->mOemPaid:Z

    .line 1477
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v3, p1, Landroid/net/wifi/WifiInfo;->mOemPaid:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Landroid/net/wifi/WifiInfo;->mOemPrivate:Z

    .line 1478
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v3, p1, Landroid/net/wifi/WifiInfo;->mOemPrivate:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Landroid/net/wifi/WifiInfo;->mCarrierMerged:Z

    .line 1479
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v3, p1, Landroid/net/wifi/WifiInfo;->mCarrierMerged:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/net/wifi/WifiInfo;->mRequestingPackageName:Ljava/lang/String;

    iget-object v3, p1, Landroid/net/wifi/WifiInfo;->mRequestingPackageName:Ljava/lang/String;

    .line 1480
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Landroid/net/wifi/WifiInfo;->mOsuAp:Z

    .line 1481
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v3, p1, Landroid/net/wifi/WifiInfo;->mOsuAp:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/net/wifi/WifiInfo;->mFqdn:Ljava/lang/String;

    iget-object v3, p1, Landroid/net/wifi/WifiInfo;->mFqdn:Ljava/lang/String;

    .line 1482
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/net/wifi/WifiInfo;->mProviderFriendlyName:Ljava/lang/String;

    iget-object v3, p1, Landroid/net/wifi/WifiInfo;->mProviderFriendlyName:Ljava/lang/String;

    .line 1483
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Landroid/net/wifi/WifiInfo;->mSubscriptionId:I

    .line 1484
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v3, p1, Landroid/net/wifi/WifiInfo;->mSubscriptionId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-wide v3, p0, Landroid/net/wifi/WifiInfo;->txBad:J

    .line 1485
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v3, p1, Landroid/net/wifi/WifiInfo;->txBad:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-wide v3, p0, Landroid/net/wifi/WifiInfo;->txRetries:J

    .line 1486
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v3, p1, Landroid/net/wifi/WifiInfo;->txRetries:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-wide v3, p0, Landroid/net/wifi/WifiInfo;->txSuccess:J

    .line 1487
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v3, p1, Landroid/net/wifi/WifiInfo;->txSuccess:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-wide v3, p0, Landroid/net/wifi/WifiInfo;->rxSuccess:J

    .line 1488
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v3, p1, Landroid/net/wifi/WifiInfo;->rxSuccess:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-wide v3, p0, Landroid/net/wifi/WifiInfo;->mLostTxPacketsPerSecond:D

    .line 1489
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iget-wide v3, p1, Landroid/net/wifi/WifiInfo;->mLostTxPacketsPerSecond:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-wide v3, p0, Landroid/net/wifi/WifiInfo;->mTxRetriedTxPacketsPerSecond:D

    .line 1490
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iget-wide v3, p1, Landroid/net/wifi/WifiInfo;->mTxRetriedTxPacketsPerSecond:D

    .line 1491
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    .line 1490
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-wide v3, p0, Landroid/net/wifi/WifiInfo;->mSuccessfulTxPacketsPerSecond:D

    .line 1492
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iget-wide v3, p1, Landroid/net/wifi/WifiInfo;->mSuccessfulTxPacketsPerSecond:D

    .line 1493
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    .line 1492
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-wide v3, p0, Landroid/net/wifi/WifiInfo;->mSuccessfulRxPacketsPerSecond:D

    .line 1494
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iget-wide v3, p1, Landroid/net/wifi/WifiInfo;->mSuccessfulRxPacketsPerSecond:D

    .line 1495
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    .line 1494
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Landroid/net/wifi/WifiInfo;->score:I

    .line 1496
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v3, p1, Landroid/net/wifi/WifiInfo;->score:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Landroid/net/wifi/WifiInfo;->mWifiStandard:I

    .line 1497
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v3, p1, Landroid/net/wifi/WifiInfo;->mWifiStandard:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Landroid/net/wifi/WifiInfo;->mMaxSupportedTxLinkSpeed:I

    .line 1498
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v3, p1, Landroid/net/wifi/WifiInfo;->mMaxSupportedTxLinkSpeed:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Landroid/net/wifi/WifiInfo;->mMaxSupportedRxLinkSpeed:I

    .line 1499
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v3, p1, Landroid/net/wifi/WifiInfo;->mMaxSupportedRxLinkSpeed:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/net/wifi/WifiInfo;->mPasspointUniqueId:Ljava/lang/String;

    iget-object v3, p1, Landroid/net/wifi/WifiInfo;->mPasspointUniqueId:Ljava/lang/String;

    .line 1500
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/net/wifi/WifiInfo;->mInformationElements:Ljava/util/List;

    iget-object v3, p1, Landroid/net/wifi/WifiInfo;->mInformationElements:Ljava/util/List;

    .line 1501
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Landroid/net/wifi/WifiInfo;->mIsPrimary:I

    .line 1502
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v3, p1, Landroid/net/wifi/WifiInfo;->mIsPrimary:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget p0, p0, Landroid/net/wifi/WifiInfo;->mSecurityType:I

    .line 1503
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iget p1, p1, Landroid/net/wifi/WifiInfo;->mSecurityType:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    move v0, v2

    :goto_0
    return v0
.end method

.method public getApplicableRedactions()J
    .locals 2

    const-wide/16 v0, 0x7

    return-wide v0
.end method

.method public getBSSID()Ljava/lang/String;
    .locals 0

    .line 676
    iget-object p0, p0, Landroid/net/wifi/WifiInfo;->mBSSID:Ljava/lang/String;

    return-object p0
.end method

.method public getCurrentSecurityType()I
    .locals 0

    .line 1599
    iget p0, p0, Landroid/net/wifi/WifiInfo;->mSecurityType:I

    return p0
.end method

.method public getFrequency()I
    .locals 0

    .line 810
    iget p0, p0, Landroid/net/wifi/WifiInfo;->mFrequency:I

    return p0
.end method

.method public getHiddenSSID()Z
    .locals 0

    .line 1131
    iget-object p0, p0, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1132
    :cond_0
    invoke-virtual {p0}, Landroid/net/wifi/WifiSsid;->isHidden()Z

    move-result p0

    return p0
.end method

.method public getIpAddress()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1120
    iget-object p0, p0, Landroid/net/wifi/WifiInfo;->mIpAddress:Ljava/net/InetAddress;

    instance-of v0, p0, Ljava/net/Inet4Address;

    if-eqz v0, :cond_0

    .line 1121
    check-cast p0, Ljava/net/Inet4Address;

    invoke-static {p0}, Lcom/android/net/module/util/Inet4AddressUtils;->inet4AddressToIntHTL(Ljava/net/Inet4Address;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getLinkSpeed()I
    .locals 0

    .line 725
    iget p0, p0, Landroid/net/wifi/WifiInfo;->mLinkSpeed:I

    return p0
.end method

.method public getLostTxPacketsPerSecond()D
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 329
    iget-wide v0, p0, Landroid/net/wifi/WifiInfo;->mLostTxPacketsPerSecond:D

    return-wide v0
.end method

.method public getMacAddress()Ljava/lang/String;
    .locals 0
    .annotation build Landroid/annotation/RequiresPermission;
        allOf = {
            "android.permission.LOCAL_MAC_ADDRESS",
            "android.permission.ACCESS_FINE_LOCATION"
        }
    .end annotation

    .line 860
    iget-object p0, p0, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    return-object p0
.end method

.method public getMeteredHint()Z
    .locals 0
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation

    .line 886
    iget-boolean p0, p0, Landroid/net/wifi/WifiInfo;->mMeteredHint:Z

    return p0
.end method

.method public getNetworkId()I
    .locals 0

    .line 1089
    iget p0, p0, Landroid/net/wifi/WifiInfo;->mNetworkId:I

    return p0
.end method

.method public getPasspointFqdn()Ljava/lang/String;
    .locals 0

    .line 1013
    iget-object p0, p0, Landroid/net/wifi/WifiInfo;->mFqdn:Ljava/lang/String;

    return-object p0
.end method

.method public getPasspointProviderFriendlyName()Ljava/lang/String;
    .locals 0

    .line 1031
    iget-object p0, p0, Landroid/net/wifi/WifiInfo;->mProviderFriendlyName:Ljava/lang/String;

    return-object p0
.end method

.method public getRetriedTxPacketsPerSecond()D
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 345
    iget-wide v0, p0, Landroid/net/wifi/WifiInfo;->mTxRetriedTxPacketsPerSecond:D

    return-wide v0
.end method

.method public getRssi()I
    .locals 0

    .line 689
    iget p0, p0, Landroid/net/wifi/WifiInfo;->mRssi:I

    return p0
.end method

.method public getRxLinkSpeedMbps()I
    .locals 0

    .line 776
    iget p0, p0, Landroid/net/wifi/WifiInfo;->mRxLinkSpeed:I

    return p0
.end method

.method public getSSID()Ljava/lang/String;
    .locals 3

    .line 640
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    const-string v1, "<unknown ssid>"

    if-eqz v0, :cond_1

    .line 641
    invoke-virtual {v0}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    move-result-object v0

    .line 642
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 643
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 645
    :cond_0
    iget-object p0, p0, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    invoke-virtual {p0}, Landroid/net/wifi/WifiSsid;->getHexString()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    move-object v1, p0

    :cond_1
    return-object v1
.end method

.method public getScore()I
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 397
    iget p0, p0, Landroid/net/wifi/WifiInfo;->score:I

    return p0
.end method

.method public getSubscriptionId()I
    .locals 1

    .line 1065
    invoke-static {}, Lcom/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1068
    iget p0, p0, Landroid/net/wifi/WifiInfo;->mSubscriptionId:I

    return p0

    .line 1066
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public getSuccessfulRxPacketsPerSecond()D
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 377
    iget-wide v0, p0, Landroid/net/wifi/WifiInfo;->mSuccessfulRxPacketsPerSecond:D

    return-wide v0
.end method

.method public getSuccessfulTxPacketsPerSecond()D
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 361
    iget-wide v0, p0, Landroid/net/wifi/WifiInfo;->mSuccessfulTxPacketsPerSecond:D

    return-wide v0
.end method

.method public getSupplicantState()Landroid/net/wifi/SupplicantState;
    .locals 0

    .line 1098
    iget-object p0, p0, Landroid/net/wifi/WifiInfo;->mSupplicantState:Landroid/net/wifi/SupplicantState;

    return-object p0
.end method

.method public getTxLinkSpeedMbps()I
    .locals 0

    .line 741
    iget p0, p0, Landroid/net/wifi/WifiInfo;->mTxLinkSpeed:I

    return p0
.end method

.method public getWifiStandard()I
    .locals 0

    .line 715
    iget p0, p0, Landroid/net/wifi/WifiInfo;->mWifiStandard:I

    return p0
.end method

.method public hashCode()I
    .locals 4

    .line 1509
    invoke-static {}, Lcom/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    return p0

    :cond_0
    const/16 v0, 0x26

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 1511
    iget-object v2, p0, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Landroid/net/wifi/WifiInfo;->mBSSID:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Landroid/net/wifi/WifiInfo;->mNetworkId:I

    .line 1513
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Landroid/net/wifi/WifiInfo;->mRssi:I

    .line 1514
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Landroid/net/wifi/WifiInfo;->mSupplicantState:Landroid/net/wifi/SupplicantState;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget v2, p0, Landroid/net/wifi/WifiInfo;->mLinkSpeed:I

    .line 1516
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget v2, p0, Landroid/net/wifi/WifiInfo;->mTxLinkSpeed:I

    .line 1517
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget v2, p0, Landroid/net/wifi/WifiInfo;->mRxLinkSpeed:I

    .line 1518
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget v2, p0, Landroid/net/wifi/WifiInfo;->mFrequency:I

    .line 1519
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p0, Landroid/net/wifi/WifiInfo;->mIpAddress:Ljava/net/InetAddress;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    iget-object v2, p0, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    iget-boolean v2, p0, Landroid/net/wifi/WifiInfo;->mMeteredHint:Z

    .line 1522
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    iget-boolean v2, p0, Landroid/net/wifi/WifiInfo;->mEphemeral:Z

    .line 1523
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    iget-boolean v2, p0, Landroid/net/wifi/WifiInfo;->mTrusted:Z

    .line 1524
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    iget-boolean v2, p0, Landroid/net/wifi/WifiInfo;->mOemPaid:Z

    .line 1525
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    iget-boolean v2, p0, Landroid/net/wifi/WifiInfo;->mOemPrivate:Z

    .line 1526
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x10

    iget-boolean v2, p0, Landroid/net/wifi/WifiInfo;->mCarrierMerged:Z

    .line 1527
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x11

    iget-object v2, p0, Landroid/net/wifi/WifiInfo;->mRequestingPackageName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    iget-boolean v2, p0, Landroid/net/wifi/WifiInfo;->mOsuAp:Z

    .line 1529
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x13

    iget-object v2, p0, Landroid/net/wifi/WifiInfo;->mFqdn:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    iget-object v2, p0, Landroid/net/wifi/WifiInfo;->mProviderFriendlyName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    iget v2, p0, Landroid/net/wifi/WifiInfo;->mSubscriptionId:I

    .line 1532
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x16

    iget-wide v2, p0, Landroid/net/wifi/WifiInfo;->txBad:J

    .line 1533
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x17

    iget-wide v2, p0, Landroid/net/wifi/WifiInfo;->txRetries:J

    .line 1534
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x18

    iget-wide v2, p0, Landroid/net/wifi/WifiInfo;->txSuccess:J

    .line 1535
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x19

    iget-wide v2, p0, Landroid/net/wifi/WifiInfo;->rxSuccess:J

    .line 1536
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    iget-wide v2, p0, Landroid/net/wifi/WifiInfo;->mLostTxPacketsPerSecond:D

    .line 1537
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    iget-wide v2, p0, Landroid/net/wifi/WifiInfo;->mTxRetriedTxPacketsPerSecond:D

    .line 1538
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    iget-wide v2, p0, Landroid/net/wifi/WifiInfo;->mSuccessfulTxPacketsPerSecond:D

    .line 1539
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    iget-wide v2, p0, Landroid/net/wifi/WifiInfo;->mSuccessfulRxPacketsPerSecond:D

    .line 1540
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    iget v2, p0, Landroid/net/wifi/WifiInfo;->score:I

    .line 1541
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    iget v2, p0, Landroid/net/wifi/WifiInfo;->mWifiStandard:I

    .line 1542
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x20

    iget v2, p0, Landroid/net/wifi/WifiInfo;->mMaxSupportedTxLinkSpeed:I

    .line 1543
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x21

    iget v2, p0, Landroid/net/wifi/WifiInfo;->mMaxSupportedRxLinkSpeed:I

    .line 1544
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x22

    iget-object v2, p0, Landroid/net/wifi/WifiInfo;->mPasspointUniqueId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    iget-object v2, p0, Landroid/net/wifi/WifiInfo;->mInformationElements:Ljava/util/List;

    aput-object v2, v0, v1

    const/16 v1, 0x24

    iget v2, p0, Landroid/net/wifi/WifiInfo;->mIsPrimary:I

    .line 1547
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x25

    iget p0, p0, Landroid/net/wifi/WifiInfo;->mSecurityType:I

    .line 1548
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v1

    .line 1511
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isCarrierMerged()Z
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 975
    invoke-static {}, Lcom/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 978
    iget-boolean p0, p0, Landroid/net/wifi/WifiInfo;->mCarrierMerged:Z

    return p0

    .line 976
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public isEphemeral()Z
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 904
    iget-boolean p0, p0, Landroid/net/wifi/WifiInfo;->mEphemeral:Z

    return p0
.end method

.method public isHe8ssCapableAp()Z
    .locals 0

    .line 1174
    iget-boolean p0, p0, Landroid/net/wifi/WifiInfo;->mHe8ssCapableAp:Z

    return p0
.end method

.method public isOsuAp()Z
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 990
    iget-boolean p0, p0, Landroid/net/wifi/WifiInfo;->mOsuAp:Z

    return p0
.end method

.method public isPasspointAp()Z
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 996
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mFqdn:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/net/wifi/WifiInfo;->mProviderFriendlyName:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPrimary()Z
    .locals 1
    .annotation build Landroid/annotation/RequiresPermission;
        value = "android.permission.NETWORK_SETTINGS"
    .end annotation

    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1442
    invoke-static {}, Lcom/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1447
    iget p0, p0, Landroid/net/wifi/WifiInfo;->mIsPrimary:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1448
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Not allowed to access this field"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1445
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public isVhtMax8SpatialStreamsSupported()Z
    .locals 0

    .line 1169
    iget-boolean p0, p0, Landroid/net/wifi/WifiInfo;->mVhtMax8SpatialStreamsSupport:Z

    return p0
.end method

.method public bridge synthetic makeCopy(J)Landroid/net/TransportInfo;
    .locals 0

    .line 72
    invoke-virtual {p0, p1, p2}, Landroid/net/wifi/WifiInfo;->makeCopy(J)Landroid/net/wifi/WifiInfo;

    move-result-object p0

    return-object p0
.end method

.method public makeCopy(J)Landroid/net/wifi/WifiInfo;
    .locals 1

    .line 1561
    new-instance v0, Landroid/net/wifi/WifiInfo;

    invoke-direct {v0, p0, p1, p2}, Landroid/net/wifi/WifiInfo;-><init>(Landroid/net/wifi/WifiInfo;J)V

    return-object v0
.end method

.method public setFrequency(I)V
    .locals 0

    .line 815
    iput p1, p0, Landroid/net/wifi/WifiInfo;->mFrequency:I

    return-void
.end method

.method public setInetAddress(Ljava/net/InetAddress;)V
    .locals 0

    .line 1109
    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mIpAddress:Ljava/net/InetAddress;

    return-void
.end method

.method public setLinkSpeed(I)V
    .locals 0
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation

    .line 731
    iput p1, p0, Landroid/net/wifi/WifiInfo;->mLinkSpeed:I

    return-void
.end method

.method public setNetworkId(I)V
    .locals 0
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation

    .line 1075
    iput p1, p0, Landroid/net/wifi/WifiInfo;->mNetworkId:I

    return-void
.end method

.method public setRssi(I)V
    .locals 1
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation

    const/16 v0, -0x7f

    if-ge p1, v0, :cond_0

    move p1, v0

    :cond_0
    const/16 v0, 0xc8

    if-le p1, v0, :cond_1

    move p1, v0

    .line 699
    :cond_1
    iput p1, p0, Landroid/net/wifi/WifiInfo;->mRssi:I

    return-void
.end method

.method public setRxLinkSpeedMbps(I)V
    .locals 0

    .line 793
    iput p1, p0, Landroid/net/wifi/WifiInfo;->mRxLinkSpeed:I

    return-void
.end method

.method public setTxLinkSpeedMbps(I)V
    .locals 0

    .line 758
    iput p1, p0, Landroid/net/wifi/WifiInfo;->mTxLinkSpeed:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1202
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "SSID: "

    .line 1205
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ", BSSID: "

    .line 1206
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Landroid/net/wifi/WifiInfo;->mBSSID:Ljava/lang/String;

    const-string v2, "<none>"

    if-nez v1, :cond_0

    move-object v1, v2

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ", MAC: "

    .line 1207
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    if-nez v1, :cond_1

    move-object v1, v2

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ", Security type: "

    .line 1208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/net/wifi/WifiInfo;->mSecurityType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ", Supplicant state: "

    .line 1209
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1210
    iget-object v1, p0, Landroid/net/wifi/WifiInfo;->mSupplicantState:Landroid/net/wifi/SupplicantState;

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, ", HE Eight Max VHT Spatial Streams Supported AP: "

    .line 1211
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v1, p0, Landroid/net/wifi/WifiInfo;->mHe8ssCapableAp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v1, ", Eight Max VHT Spatial streams support: "

    .line 1212
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v1, p0, Landroid/net/wifi/WifiInfo;->mVhtMax8SpatialStreamsSupport:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v1, ", Wi-Fi standard: "

    .line 1213
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/net/wifi/WifiInfo;->mWifiStandard:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ", RSSI: "

    .line 1214
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/net/wifi/WifiInfo;->mRssi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ", Link speed: "

    .line 1215
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/net/wifi/WifiInfo;->mLinkSpeed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "Mbps"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ", Tx Link speed: "

    .line 1216
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Landroid/net/wifi/WifiInfo;->mTxLinkSpeed:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ", Max Supported Tx Link speed: "

    .line 1217
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Landroid/net/wifi/WifiInfo;->mMaxSupportedTxLinkSpeed:I

    .line 1218
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ", Rx Link speed: "

    .line 1219
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Landroid/net/wifi/WifiInfo;->mRxLinkSpeed:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ", Max Supported Rx Link speed: "

    .line 1220
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Landroid/net/wifi/WifiInfo;->mMaxSupportedRxLinkSpeed:I

    .line 1221
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ", Frequency: "

    .line 1222
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/net/wifi/WifiInfo;->mFrequency:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "MHz"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ", Net ID: "

    .line 1223
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/net/wifi/WifiInfo;->mNetworkId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ", Metered hint: "

    .line 1224
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v1, p0, Landroid/net/wifi/WifiInfo;->mMeteredHint:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v1, ", score: "

    .line 1225
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/net/wifi/WifiInfo;->score:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ", CarrierMerged: "

    .line 1226
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v1, p0, Landroid/net/wifi/WifiInfo;->mCarrierMerged:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v1, ", SubscriptionId: "

    .line 1227
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/net/wifi/WifiInfo;->mSubscriptionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ", IsPrimary: "

    .line 1228
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget p0, p0, Landroid/net/wifi/WifiInfo;->mIsPrimary:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1229
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 1251
    iget v0, p0, Landroid/net/wifi/WifiInfo;->mNetworkId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1252
    iget v0, p0, Landroid/net/wifi/WifiInfo;->mRssi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1253
    iget v0, p0, Landroid/net/wifi/WifiInfo;->mLinkSpeed:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1254
    iget v0, p0, Landroid/net/wifi/WifiInfo;->mTxLinkSpeed:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1255
    iget v0, p0, Landroid/net/wifi/WifiInfo;->mRxLinkSpeed:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1256
    iget v0, p0, Landroid/net/wifi/WifiInfo;->mFrequency:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1257
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mIpAddress:Ljava/net/InetAddress;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1258
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 1259
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mIpAddress:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0

    .line 1261
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 1263
    :goto_0
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    if-eqz v0, :cond_1

    .line 1264
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1265
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    invoke-virtual {v0, p1, p2}, Landroid/net/wifi/WifiSsid;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 1267
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1269
    :goto_1
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mBSSID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1270
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1271
    iget-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mMeteredHint:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1272
    iget-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mEphemeral:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1273
    iget-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mTrusted:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1274
    iget-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mOemPaid:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1275
    iget-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mOemPrivate:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1276
    iget-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mCarrierMerged:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1277
    iget v0, p0, Landroid/net/wifi/WifiInfo;->score:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1278
    iget-wide v0, p0, Landroid/net/wifi/WifiInfo;->txSuccess:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1279
    iget-wide v0, p0, Landroid/net/wifi/WifiInfo;->mSuccessfulTxPacketsPerSecond:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1280
    iget-wide v0, p0, Landroid/net/wifi/WifiInfo;->txRetries:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1281
    iget-wide v0, p0, Landroid/net/wifi/WifiInfo;->mTxRetriedTxPacketsPerSecond:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1282
    iget-wide v0, p0, Landroid/net/wifi/WifiInfo;->txBad:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1283
    iget-wide v0, p0, Landroid/net/wifi/WifiInfo;->mLostTxPacketsPerSecond:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1284
    iget-wide v0, p0, Landroid/net/wifi/WifiInfo;->rxSuccess:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1285
    iget-wide v0, p0, Landroid/net/wifi/WifiInfo;->mSuccessfulRxPacketsPerSecond:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1286
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mSupplicantState:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v0, p1, p2}, Landroid/net/wifi/SupplicantState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1287
    iget-boolean p2, p0, Landroid/net/wifi/WifiInfo;->mOsuAp:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1288
    iget-object p2, p0, Landroid/net/wifi/WifiInfo;->mRequestingPackageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1289
    iget-object p2, p0, Landroid/net/wifi/WifiInfo;->mFqdn:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1290
    iget-object p2, p0, Landroid/net/wifi/WifiInfo;->mProviderFriendlyName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1291
    iget-boolean p2, p0, Landroid/net/wifi/WifiInfo;->mVhtMax8SpatialStreamsSupport:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1292
    iget-boolean p2, p0, Landroid/net/wifi/WifiInfo;->mHe8ssCapableAp:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1293
    iget p2, p0, Landroid/net/wifi/WifiInfo;->mWifiStandard:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1294
    iget p2, p0, Landroid/net/wifi/WifiInfo;->mMaxSupportedTxLinkSpeed:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1295
    iget p2, p0, Landroid/net/wifi/WifiInfo;->mMaxSupportedRxLinkSpeed:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1296
    iget-object p2, p0, Landroid/net/wifi/WifiInfo;->mPasspointUniqueId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1297
    iget p2, p0, Landroid/net/wifi/WifiInfo;->mSubscriptionId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1298
    iget-object p2, p0, Landroid/net/wifi/WifiInfo;->mInformationElements:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1299
    invoke-static {}, Lcom/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 1300
    iget p2, p0, Landroid/net/wifi/WifiInfo;->mIsPrimary:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1302
    :cond_2
    iget p0, p0, Landroid/net/wifi/WifiInfo;->mSecurityType:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

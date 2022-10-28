.class public Landroid/net/wifi/WifiConfiguration;
.super Ljava/lang/Object;
.source "WifiConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiConfiguration$RecentFailure;,
        Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;,
        Landroid/net/wifi/WifiConfiguration$SuiteBCipher;,
        Landroid/net/wifi/WifiConfiguration$GroupMgmtCipher;,
        Landroid/net/wifi/WifiConfiguration$GroupCipher;,
        Landroid/net/wifi/WifiConfiguration$PairwiseCipher;,
        Landroid/net/wifi/WifiConfiguration$AuthAlgorithm;,
        Landroid/net/wifi/WifiConfiguration$Protocol;,
        Landroid/net/wifi/WifiConfiguration$KeyMgmt;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public static INVALID_RSSI:I
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
        maxTargetSdk = 0x1c
        trackingBug = 0x6e40dbfL
    .end annotation
.end field

.field private static final SECURITY_TYPE_NAMES:[Ljava/lang/String;

.field public static final wepKeyVarNames:[Ljava/lang/String;
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field public BSSID:Ljava/lang/String;

.field public FQDN:Ljava/lang/String;

.field public SSID:Ljava/lang/String;

.field public allowAutojoin:Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public allowedAuthAlgorithms:Ljava/util/BitSet;

.field public allowedGroupCiphers:Ljava/util/BitSet;

.field public allowedGroupManagementCiphers:Ljava/util/BitSet;

.field public allowedKeyManagement:Ljava/util/BitSet;

.field public allowedPairwiseCiphers:Ljava/util/BitSet;

.field public allowedProtocols:Ljava/util/BitSet;

.field public allowedSuiteBCiphers:Ljava/util/BitSet;

.field public apBand:I
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public apChannel:I
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public carrierId:I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public carrierMerged:Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public creatorName:Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public creatorUid:I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public defaultGwMacAddress:Ljava/lang/String;
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public dhcpServer:Ljava/lang/String;

.field public dtimInterval:I

.field public enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

.field public ephemeral:Z

.field public fromWifiNetworkSpecifier:Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public fromWifiNetworkSuggestion:Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public hiddenSSID:Z

.field public isHomeProviderNetwork:Z

.field public isLegacyPasspointConfig:Z

.field public isMostRecentlyConnected:Z

.field public lastConnectUid:I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public lastConnected:J

.field public lastUpdateName:Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public lastUpdateUid:I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public lastUpdated:J

.field public linkedConfigurations:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDeletionPriority:I

.field private mIpConfiguration:Landroid/net/IpConfiguration;
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

.field private mPasspointManagementObjectTree:Ljava/lang/String;

.field private mPasspointUniqueId:Ljava/lang/String;

.field private mRandomizedMacAddress:Landroid/net/MacAddress;

.field private mSecurityParamsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/SecurityParams;",
            ">;"
        }
    .end annotation
.end field

.field public macRandomizationSetting:I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public meteredHint:Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public meteredOverride:I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public networkId:I

.field public noInternetAccessExpected:Z
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
        maxTargetSdk = 0x1e
        trackingBug = 0xa2d2051L
    .end annotation
.end field

.field public numAssociation:I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public numNoInternetAccessReports:I
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
        maxTargetSdk = 0x1e
        trackingBug = 0xa2d2051L
    .end annotation
.end field

.field public numRebootsSinceLastUse:I

.field public numScorerOverride:I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public numScorerOverrideAndSwitchedNetwork:I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public oemPaid:Z

.field public oemPrivate:Z

.field public osu:Z

.field public preSharedKey:Ljava/lang/String;

.field public priority:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public providerFriendlyName:Ljava/lang/String;

.field public randomizedMacExpirationTimeMs:J

.field public randomizedMacLastModifiedTimeMs:J

.field public final recentFailure:Landroid/net/wifi/WifiConfiguration$RecentFailure;

.field public requirePmf:Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public roamingConsortiumIds:[J

.field public shared:Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public status:I

.field public subscriptionId:I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public trusted:Z

.field public updateIdentifier:Ljava/lang/String;

.field public useExternalScores:Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public validatedInternetAccess:Z
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public wepKeys:[Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public wepTxKeyIndex:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$5CkiAAqWNiLJiAiD-eqacjfSOzo(Landroid/net/wifi/SecurityParams;)Z
    .locals 0

    invoke-static {p0}, Landroid/net/wifi/WifiConfiguration;->lambda$isOpenNetwork$20(Landroid/net/wifi/SecurityParams;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$GBruENNRgPpy3ujl16A74mPTavg(Landroid/net/wifi/SecurityParams;Landroid/net/wifi/SecurityParams;)Z
    .locals 0

    invoke-static {p0, p1}, Landroid/net/wifi/WifiConfiguration;->lambda$addSecurityParams$2(Landroid/net/wifi/SecurityParams;Landroid/net/wifi/SecurityParams;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$HBDLSAk8XhF0p-01t2roJMSHJ-g(Landroid/net/wifi/SecurityParams;)Z
    .locals 0

    invoke-static {p0}, Landroid/net/wifi/WifiConfiguration;->lambda$isEnterprise$21(Landroid/net/wifi/SecurityParams;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$_T_FSqyIFVJAwIcmQvMYOoIauug(ILandroid/net/wifi/SecurityParams;)Z
    .locals 0

    invoke-static {p0, p1}, Landroid/net/wifi/WifiConfiguration;->lambda$addSecurityParams$1(ILandroid/net/wifi/SecurityParams;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ahe7ubyWHwY2czMgrs8dR6_PZVI(Landroid/os/Parcel;ILandroid/net/wifi/SecurityParams;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/net/wifi/WifiConfiguration;->lambda$writeToParcel$24(Landroid/os/Parcel;ILandroid/net/wifi/SecurityParams;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mAIwDxUisDxwGfdJCL2y-0Grk_w(Ljava/lang/StringBuilder;Landroid/net/wifi/SecurityParams;)V
    .locals 0

    invoke-static {p0, p1}, Landroid/net/wifi/WifiConfiguration;->lambda$toString$22(Ljava/lang/StringBuilder;Landroid/net/wifi/SecurityParams;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 14

    const-string/jumbo v0, "wep_key0"

    const-string/jumbo v1, "wep_key1"

    const-string/jumbo v2, "wep_key2"

    const-string/jumbo v3, "wep_key3"

    .line 87
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/WifiConfiguration;->wepKeyVarNames:[Ljava/lang/String;

    const-string v1, "open"

    const-string/jumbo v2, "wep"

    const-string/jumbo v3, "wpa2-psk"

    const-string/jumbo v4, "wpa2-enterprise"

    const-string/jumbo v5, "wpa3-sae"

    const-string/jumbo v6, "wpa3 enterprise 192-bit"

    const-string v7, "owe"

    const-string/jumbo v8, "wapi-psk"

    const-string/jumbo v9, "wapi-cert"

    const-string/jumbo v10, "wpa3 enterprise"

    const-string/jumbo v11, "wpa3 enterprise 192-bit"

    const-string v12, "passpoint r1/r2"

    const-string v13, "passpoint r3"

    .line 559
    filled-new-array/range {v1 .. v13}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/WifiConfiguration;->SECURITY_TYPE_NAMES:[Ljava/lang/String;

    const/16 v0, -0x7f

    .line 1351
    sput v0, Landroid/net/wifi/WifiConfiguration;->INVALID_RSSI:I

    .line 3738
    new-instance v0, Landroid/net/wifi/WifiConfiguration$1;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration$1;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 2868
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 566
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mSecurityParamsList:Ljava/util/List;

    const/4 v0, 0x0

    .line 1044
    iput v0, p0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    .line 1055
    iput v0, p0, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    .line 1279
    iput v0, p0, Landroid/net/wifi/WifiConfiguration;->dtimInterval:I

    .line 1287
    iput-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->isLegacyPasspointConfig:Z

    const/4 v1, -0x1

    .line 1330
    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->carrierId:I

    .line 1338
    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->subscriptionId:I

    const/4 v2, 0x1

    .line 1346
    iput-boolean v2, p0, Landroid/net/wifi/WifiConfiguration;->allowAutojoin:Z

    .line 1566
    iput v0, p0, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    const/4 v3, 0x3

    .line 1696
    iput v3, p0, Landroid/net/wifi/WifiConfiguration;->macRandomizationSetting:I

    const-wide/16 v3, 0x0

    .line 1712
    iput-wide v3, p0, Landroid/net/wifi/WifiConfiguration;->randomizedMacExpirationTimeMs:J

    .line 1718
    iput-wide v3, p0, Landroid/net/wifi/WifiConfiguration;->randomizedMacLastModifiedTimeMs:J

    .line 2626
    new-instance v3, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    invoke-direct {v3}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;-><init>()V

    iput-object v3, p0, Landroid/net/wifi/WifiConfiguration;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    .line 2686
    new-instance v3, Landroid/net/wifi/WifiConfiguration$RecentFailure;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/net/wifi/WifiConfiguration$RecentFailure;-><init>(Landroid/net/wifi/WifiConfiguration$1;)V

    iput-object v3, p0, Landroid/net/wifi/WifiConfiguration;->recentFailure:Landroid/net/wifi/WifiConfiguration$RecentFailure;

    .line 3831
    iput-object v4, p0, Landroid/net/wifi/WifiConfiguration;->mPasspointUniqueId:Ljava/lang/String;

    .line 3855
    iput-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->isMostRecentlyConnected:Z

    .line 2869
    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 2870
    iput-object v4, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 2871
    iput-object v4, p0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 2872
    iput-object v4, p0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    new-array v3, v0, [J

    .line 2873
    iput-object v3, p0, Landroid/net/wifi/WifiConfiguration;->roamingConsortiumIds:[J

    .line 2874
    iput v0, p0, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 2875
    iput v0, p0, Landroid/net/wifi/WifiConfiguration;->mDeletionPriority:I

    .line 2876
    iput-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 2877
    new-instance v3, Ljava/util/BitSet;

    invoke-direct {v3}, Ljava/util/BitSet;-><init>()V

    iput-object v3, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 2878
    new-instance v3, Ljava/util/BitSet;

    invoke-direct {v3}, Ljava/util/BitSet;-><init>()V

    iput-object v3, p0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    .line 2879
    new-instance v3, Ljava/util/BitSet;

    invoke-direct {v3}, Ljava/util/BitSet;-><init>()V

    iput-object v3, p0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    .line 2880
    new-instance v3, Ljava/util/BitSet;

    invoke-direct {v3}, Ljava/util/BitSet;-><init>()V

    iput-object v3, p0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    .line 2881
    new-instance v3, Ljava/util/BitSet;

    invoke-direct {v3}, Ljava/util/BitSet;-><init>()V

    iput-object v3, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    .line 2882
    new-instance v3, Ljava/util/BitSet;

    invoke-direct {v3}, Ljava/util/BitSet;-><init>()V

    iput-object v3, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupManagementCiphers:Ljava/util/BitSet;

    .line 2883
    new-instance v3, Ljava/util/BitSet;

    invoke-direct {v3}, Ljava/util/BitSet;-><init>()V

    iput-object v3, p0, Landroid/net/wifi/WifiConfiguration;->allowedSuiteBCiphers:Ljava/util/BitSet;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    .line 2884
    iput-object v3, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move v3, v0

    .line 2885
    :goto_0
    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    array-length v6, v5

    if-ge v3, v6, :cond_0

    .line 2886
    aput-object v4, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2888
    :cond_0
    new-instance v3, Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {v3}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>()V

    iput-object v3, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 2889
    iput-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    .line 2890
    iput-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->osu:Z

    .line 2891
    iput-boolean v2, p0, Landroid/net/wifi/WifiConfiguration;->trusted:Z

    .line 2892
    iput-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->oemPaid:Z

    .line 2893
    iput-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->oemPrivate:Z

    .line 2894
    iput-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->carrierMerged:Z

    .line 2895
    iput-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->fromWifiNetworkSuggestion:Z

    .line 2896
    iput-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->fromWifiNetworkSpecifier:Z

    .line 2897
    iput-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->meteredHint:Z

    .line 2898
    iput v0, p0, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    .line 2899
    iput-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->useExternalScores:Z

    .line 2900
    iput-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    .line 2901
    new-instance v3, Landroid/net/IpConfiguration;

    invoke-direct {v3}, Landroid/net/IpConfiguration;-><init>()V

    iput-object v3, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    .line 2902
    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    .line 2903
    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    .line 2904
    iput-boolean v2, p0, Landroid/net/wifi/WifiConfiguration;->shared:Z

    .line 2905
    iput v0, p0, Landroid/net/wifi/WifiConfiguration;->dtimInterval:I

    const-string v1, "02:00:00:00:00:00"

    .line 2906
    invoke-static {v1}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->mRandomizedMacAddress:Landroid/net/MacAddress;

    .line 2907
    iput v0, p0, Landroid/net/wifi/WifiConfiguration;->numRebootsSinceLastUse:I

    return-void
.end method

.method static synthetic access$100(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    .locals 0

    .line 72
    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    return-object p0
.end method

.method static synthetic access$202(Landroid/net/wifi/WifiConfiguration;I)I
    .locals 0

    .line 72
    iput p1, p0, Landroid/net/wifi/WifiConfiguration;->mDeletionPriority:I

    return p1
.end method

.method static synthetic access$300(Landroid/os/Parcel;)Ljava/util/BitSet;
    .locals 0

    .line 72
    invoke-static {p0}, Landroid/net/wifi/WifiConfiguration;->readBitSet(Landroid/os/Parcel;)Ljava/util/BitSet;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Landroid/net/wifi/WifiConfiguration;)Ljava/util/List;
    .locals 0

    .line 72
    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->mSecurityParamsList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$502(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 72
    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration;->mPasspointManagementObjectTree:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Landroid/net/wifi/WifiConfiguration;Landroid/net/MacAddress;)Landroid/net/MacAddress;
    .locals 0

    .line 72
    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration;->mRandomizedMacAddress:Landroid/net/MacAddress;

    return-object p1
.end method

.method static synthetic access$702(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 72
    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration;->mPasspointUniqueId:Ljava/lang/String;

    return-object p1
.end method

.method public static getSecurityTypeName(I)Ljava/lang/String;
    .locals 1

    if-ltz p0, :cond_1

    const/16 v0, 0xc

    if-ge v0, p0, :cond_0

    goto :goto_0

    .line 3955
    :cond_0
    sget-object v0, Landroid/net/wifi/WifiConfiguration;->SECURITY_TYPE_NAMES:[Ljava/lang/String;

    aget-object p0, v0, p0

    return-object p0

    :cond_1
    :goto_0
    const-string p0, "unknown"

    return-object p0
.end method

.method private hasWepKeys()Z
    .locals 4

    .line 1598
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move v0, v1

    .line 1599
    :goto_0
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 1600
    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static isMetered(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;)Z
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 1579
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getMeteredHint()Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    if-eqz p0, :cond_1

    .line 1582
    iget-boolean v2, p0, Landroid/net/wifi/WifiConfiguration;->meteredHint:Z

    if-eqz v2, :cond_1

    move p1, v1

    :cond_1
    if-eqz p0, :cond_2

    .line 1585
    iget v2, p0, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    if-ne v2, v1, :cond_2

    goto :goto_1

    :cond_2
    move v1, p1

    :goto_1
    if-eqz p0, :cond_3

    .line 1589
    iget p0, p0, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    const/4 p1, 0x2

    if-ne p0, p1, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    return v0
.end method

.method private static synthetic lambda$addSecurityParams$1(ILandroid/net/wifi/SecurityParams;)Z
    .locals 0

    .line 663
    invoke-virtual {p1, p0}, Landroid/net/wifi/SecurityParams;->isSecurityType(I)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$addSecurityParams$2(Landroid/net/wifi/SecurityParams;Landroid/net/wifi/SecurityParams;)Z
    .locals 0

    .line 671
    invoke-virtual {p1, p0}, Landroid/net/wifi/SecurityParams;->isSameSecurityType(Landroid/net/wifi/SecurityParams;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$isEnterprise$21(Landroid/net/wifi/SecurityParams;)Z
    .locals 0

    .line 2944
    invoke-virtual {p0}, Landroid/net/wifi/SecurityParams;->isEnterpriseSecurityType()Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$isOpenNetwork$20(Landroid/net/wifi/SecurityParams;)Z
    .locals 0

    .line 1613
    invoke-virtual {p0}, Landroid/net/wifi/SecurityParams;->isOpenSecurityType()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static synthetic lambda$toString$22(Ljava/lang/StringBuilder;Landroid/net/wifi/SecurityParams;)V
    .locals 0

    .line 3133
    invoke-virtual {p1}, Landroid/net/wifi/SecurityParams;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static synthetic lambda$writeToParcel$24(Landroid/os/Parcel;ILandroid/net/wifi/SecurityParams;)V
    .locals 0

    .line 3692
    invoke-virtual {p2, p0, p1}, Landroid/net/wifi/SecurityParams;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method

.method private static logTimeOfDay(J)Ljava/lang/String;
    .locals 3

    .line 2951
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const-wide/16 v1, 0x0

    cmp-long v1, p0, v1

    if-ltz v1, :cond_0

    .line 2953
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 p0, 0x6

    new-array p0, p0, [Ljava/lang/Object;

    const/4 p1, 0x0

    aput-object v0, p0, p1

    const/4 p1, 0x1

    aput-object v0, p0, p1

    const/4 p1, 0x2

    aput-object v0, p0, p1

    const/4 p1, 0x3

    aput-object v0, p0, p1

    const/4 p1, 0x4

    aput-object v0, p0, p1

    const/4 p1, 0x5

    aput-object v0, p0, p1

    const-string p1, "%tm-%td %tH:%tM:%tS.%tL"

    .line 2954
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2956
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static readBitSet(Landroid/os/Parcel;)Ljava/util/BitSet;
    .locals 4

    .line 3278
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3280
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 3282
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private updateLegacySecurityParams()V
    .locals 2

    .line 569
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mSecurityParamsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 570
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mSecurityParamsList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/SecurityParams;

    invoke-virtual {v0, p0}, Landroid/net/wifi/SecurityParams;->updateLegacyWifiConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    return-void
.end method

.method private static writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V
    .locals 2

    .line 3291
    invoke-virtual {p1}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, -0x1

    move v1, v0

    :goto_0
    add-int/lit8 v1, v1, 0x1

    .line 3293
    invoke-virtual {p1, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 3294
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addSecurityParams(I)V
    .locals 2

    .line 663
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mSecurityParamsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/net/wifi/WifiConfiguration$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Landroid/net/wifi/WifiConfiguration$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 666
    invoke-static {p1}, Landroid/net/wifi/SecurityParams;->createSecurityParamsBySecurityType(I)Landroid/net/wifi/SecurityParams;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiConfiguration;->addSecurityParams(Landroid/net/wifi/SecurityParams;)V

    return-void

    .line 664
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "duplicate security type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addSecurityParams(Landroid/net/wifi/SecurityParams;)V
    .locals 2

    .line 671
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mSecurityParamsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/net/wifi/WifiConfiguration$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1}, Landroid/net/wifi/WifiConfiguration$$ExternalSyntheticLambda3;-><init>(Landroid/net/wifi/SecurityParams;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 674
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mSecurityParamsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 675
    invoke-virtual {p1}, Landroid/net/wifi/SecurityParams;->isEnterpriseSecurityType()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->isEnterprise()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 676
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "An enterprise security type cannot be added to a personal configuation."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 679
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/net/wifi/SecurityParams;->isEnterpriseSecurityType()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->isEnterprise()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 680
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "A personal security type cannot be added to an enterprise configuation."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 683
    :cond_3
    :goto_1
    invoke-virtual {p1}, Landroid/net/wifi/SecurityParams;->isOpenSecurityType()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->isOpenNetwork()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    .line 684
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "An open security type cannot be added to a non-open configuation."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 687
    :cond_5
    :goto_2
    invoke-virtual {p1}, Landroid/net/wifi/SecurityParams;->isOpenSecurityType()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->isOpenNetwork()Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_3

    .line 688
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "A non-open security type cannot be added to an open configuation."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_3
    const/16 v0, 0xa

    .line 691
    invoke-virtual {p1, v0}, Landroid/net/wifi/SecurityParams;->isSecurityType(I)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_4

    .line 692
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "An OSEN security type must be the only one type."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 696
    :cond_9
    :goto_4
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mSecurityParamsList:Ljava/util/List;

    new-instance v1, Landroid/net/wifi/SecurityParams;

    invoke-direct {v1, p1}, Landroid/net/wifi/SecurityParams;-><init>(Landroid/net/wifi/SecurityParams;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 697
    invoke-direct {p0}, Landroid/net/wifi/WifiConfiguration;->updateLegacySecurityParams()V

    return-void

    .line 672
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "duplicate security params "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getAuthType()I
    .locals 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3306
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0xa

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-le v0, v1, :cond_2

    .line 3307
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3308
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 3309
    invoke-virtual {v0, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return v4

    .line 3312
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 3313
    invoke-virtual {v0, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 3314
    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 3318
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid auth type set: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3320
    :cond_2
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 3322
    :cond_3
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    .line 3324
    :cond_4
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_5

    return v4

    .line 3326
    :cond_5
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_6

    return v3

    .line 3328
    :cond_6
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_7

    return v1

    .line 3330
    :cond_7
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_8

    return v1

    .line 3332
    :cond_8
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_9

    return v2

    .line 3334
    :cond_9
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_a

    return v1

    .line 3336
    :cond_a
    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Ljava/util/BitSet;->get(I)Z

    move-result p0

    if-eqz p0, :cond_b

    return v0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public getDefaultSecurityType()Ljava/lang/String;
    .locals 3

    .line 3902
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3903
    sget-object p0, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object p0, p0, v1

    goto/16 :goto_1

    .line 3904
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x3

    .line 3905
    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_0

    .line 3911
    :cond_1
    iget v0, p0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    if-ltz v0, :cond_2

    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    aget-object v0, v1, v0

    if-eqz v0, :cond_2

    const-string p0, "WEP"

    goto/16 :goto_1

    .line 3914
    :cond_2
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3915
    sget-object p0, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object p0, p0, v1

    goto :goto_1

    .line 3916
    :cond_3
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3917
    sget-object p0, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object p0, p0, v1

    goto :goto_1

    .line 3918
    :cond_4
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3919
    sget-object p0, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object p0, p0, v1

    goto :goto_1

    .line 3920
    :cond_5
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3921
    sget-object p0, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object p0, p0, v1

    goto :goto_1

    .line 3922
    :cond_6
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3923
    sget-object p0, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object p0, p0, v1

    goto :goto_1

    .line 3924
    :cond_7
    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Ljava/util/BitSet;->get(I)Z

    move-result p0

    if-eqz p0, :cond_8

    .line 3925
    sget-object p0, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object p0, p0, v0

    goto :goto_1

    .line 3927
    :cond_8
    sget-object p0, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    goto :goto_1

    .line 3906
    :cond_9
    :goto_0
    iget-boolean p0, p0, Landroid/net/wifi/WifiConfiguration;->requirePmf:Z

    if-nez p0, :cond_a

    .line 3907
    sget-object p0, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object p0, p0, v1

    goto :goto_1

    :cond_a
    const-string p0, "WPA3_EAP"

    :goto_1
    return-object p0
.end method

.method public getHttpProxy()Landroid/net/ProxyInfo;
    .locals 2

    .line 3495
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    invoke-virtual {v0}, Landroid/net/IpConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v0

    sget-object v1, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3498
    :cond_0
    new-instance v0, Landroid/net/ProxyInfo;

    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    invoke-virtual {p0}, Landroid/net/IpConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/net/ProxyInfo;-><init>(Landroid/net/ProxyInfo;)V

    return-object v0
.end method

.method public getIpConfiguration()Landroid/net/IpConfiguration;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3425
    new-instance v0, Landroid/net/IpConfiguration;

    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    invoke-direct {v0, p0}, Landroid/net/IpConfiguration;-><init>(Landroid/net/IpConfiguration;)V

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 2

    .line 3351
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mPasspointUniqueId:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 3355
    :cond_0
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->getSsidAndSecurityTypeString()Ljava/lang/String;

    move-result-object v0

    .line 3356
    iget-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->shared:Z

    if-nez v1, :cond_1

    .line 3357
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-static {p0}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getNetworkKey()Ljava/lang/String;
    .locals 2

    .line 3371
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mPasspointUniqueId:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 3375
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->getDefaultSecurityType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3376
    iget-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->shared:Z

    if-nez v1, :cond_1

    .line 3377
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-static {p0}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2846
    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    return-object p0
.end method

.method public getPasspointUniqueId()Ljava/lang/String;
    .locals 0

    .line 3847
    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->mPasspointUniqueId:Ljava/lang/String;

    return-object p0
.end method

.method public getPrintableSsid()Ljava/lang/String;
    .locals 7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3201
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 3202
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/16 v4, 0x22

    if-le v0, v2, :cond_1

    .line 3203
    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v4, :cond_1

    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    add-int/lit8 v6, v0, -0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v4, :cond_1

    .line 3204
    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {p0, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 v5, 0x3

    if-le v0, v5, :cond_2

    .line 3211
    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v5, 0x50

    if-ne v1, v5, :cond_2

    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v4, :cond_2

    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    sub-int/2addr v0, v3

    .line 3212
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v4, :cond_2

    .line 3213
    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 3214
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 3213
    invoke-static {p0}, Landroid/net/wifi/WifiSsid;->createFromAsciiEncoded(Ljava/lang/String;)Landroid/net/wifi/WifiSsid;

    move-result-object p0

    .line 3215
    invoke-virtual {p0}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3217
    :cond_2
    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    return-object p0
.end method

.method public getProfileKey()Ljava/lang/String;
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3878
    invoke-static {}, Lcom/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3879
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3881
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mPasspointUniqueId:Ljava/lang/String;

    if-eqz v0, :cond_1

    return-object v0

    .line 3885
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->getDefaultSecurityType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3886
    iget-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->shared:Z

    const-string v2, "-"

    if-nez v1, :cond_2

    .line 3887
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3889
    :cond_2
    iget-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->fromWifiNetworkSuggestion:Z

    if-eqz v1, :cond_3

    .line 3890
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroid/net/wifi/WifiConfiguration;->carrierId:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/net/wifi/WifiConfiguration;->subscriptionId:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    return-object v0
.end method

.method public getRandomizedMacAddress()Landroid/net/MacAddress;
    .locals 0

    .line 1742
    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->mRandomizedMacAddress:Landroid/net/MacAddress;

    return-object p0
.end method

.method public getRecentFailureReason()I
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2836
    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->recentFailure:Landroid/net/wifi/WifiConfiguration$RecentFailure;

    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration$RecentFailure;->getAssociationStatus()I

    move-result p0

    return p0
.end method

.method public getSecurityParamsList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/SecurityParams;",
            ">;"
        }
    .end annotation

    .line 848
    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->mSecurityParamsList:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getSsidAndSecurityTypeString()Ljava/lang/String;
    .locals 3

    .line 3388
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object p0, p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_1

    .line 3390
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x3

    .line 3391
    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_0

    .line 3397
    :cond_1
    iget v0, p0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    if-ltz v0, :cond_2

    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    aget-object v0, v1, v0

    if-eqz v0, :cond_2

    .line 3399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "WEP"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_1

    .line 3400
    :cond_2
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object p0, p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_1

    .line 3402
    :cond_3
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object p0, p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_1

    .line 3404
    :cond_4
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object p0, p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_1

    .line 3406
    :cond_5
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object p0, p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_1

    .line 3408
    :cond_6
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object p0, p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 3410
    :cond_7
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object p0, p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 3413
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object p0, p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 3392
    :cond_9
    :goto_0
    iget-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->requirePmf:Z

    if-nez v0, :cond_a

    .line 3393
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object p0, p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 3395
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "WPA3_EAP"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public hasNoInternetAccess()Z
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1368
    iget v0, p0, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    if-lez v0, :cond_0

    iget-boolean p0, p0, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isEnterprise()Z
    .locals 2
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation

    .line 2943
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mSecurityParamsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Landroid/net/wifi/WifiConfiguration$$ExternalSyntheticLambda5;->INSTANCE:Landroid/net/wifi/WifiConfiguration$$ExternalSyntheticLambda5;

    .line 2944
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2945
    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-eqz p0, :cond_0

    .line 2947
    invoke-virtual {p0}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isEphemeral()Z
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1454
    iget-boolean p0, p0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    return p0
.end method

.method public isOpenNetwork()Z
    .locals 2

    .line 1612
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mSecurityParamsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Landroid/net/wifi/WifiConfiguration$$ExternalSyntheticLambda4;->INSTANCE:Landroid/net/wifi/WifiConfiguration$$ExternalSyntheticLambda4;

    .line 1613
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1614
    invoke-direct {p0}, Landroid/net/wifi/WifiConfiguration;->hasWepKeys()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPasspoint()Z
    .locals 2

    .line 2914
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    .line 2915
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-eqz v0, :cond_0

    .line 2917
    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->mPasspointUniqueId:Ljava/lang/String;

    .line 2918
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setIpConfiguration(Landroid/net/IpConfiguration;)V
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    if-nez p1, :cond_0

    .line 3436
    new-instance p1, Landroid/net/IpConfiguration;

    invoke-direct {p1}, Landroid/net/IpConfiguration;-><init>()V

    .line 3437
    :cond_0
    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    return-void
.end method

.method public setSecurityParams(I)V
    .locals 1

    .line 593
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mSecurityParamsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 594
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiConfiguration;->addSecurityParams(I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 2962
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2963
    iget v1, p0, Landroid/net/wifi/WifiConfiguration;->status:I

    if-nez v1, :cond_0

    const-string v1, "* "

    .line 2964
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const-string v1, "- DSBLE "

    .line 2966
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_0
    const-string v1, "ID: "

    .line 2968
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " SSID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " PROVIDER-NAME: "

    .line 2969
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " BSSID: "

    .line 2970
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " FQDN: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " HOME-PROVIDER-NETWORK: "

    .line 2971
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->isHomeProviderNetwork:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " PRIO: "

    .line 2972
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/wifi/WifiConfiguration;->priority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " HIDDEN: "

    .line 2973
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " PMF: "

    .line 2974
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->requirePmf:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "CarrierId: "

    .line 2975
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/wifi/WifiConfiguration;->carrierId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "SubscriptionId"

    .line 2976
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/wifi/WifiConfiguration;->subscriptionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    .line 2977
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, " NetworkSelectionStatus "

    .line 2980
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    .line 2981
    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkStatusString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    .line 2982
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2983
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionDisableReason()I

    move-result v3

    const/4 v4, 0x0

    if-lez v3, :cond_3

    const-string v3, " mNetworkSelectionDisableReason "

    .line 2984
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    .line 2985
    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionDisableReasonString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2986
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, v4

    :goto_1
    const/16 v5, 0xd

    if-ge v3, v5, :cond_3

    .line 2990
    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    invoke-virtual {v5, v3}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getDisableReasonCounter(I)I

    move-result v5

    if-eqz v5, :cond_2

    .line 2992
    invoke-static {v3}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionDisableReasonString(I)Ljava/lang/String;

    move-result-object v5

    .line 2991
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " counter:"

    .line 2993
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    .line 2994
    invoke-virtual {v5, v3}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getDisableReasonCounter(I)I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2995
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2999
    :cond_3
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getConnectChoice()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    const-string v3, " connect choice: "

    .line 3000
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getConnectChoice()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " connect choice rssi: "

    .line 3001
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    .line 3002
    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getConnectChoiceRssi()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_4
    const-string v3, " hasEverConnected: "

    .line 3004
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    .line 3005
    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->hasEverConnected()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " hasNeverDetectedCaptivePortal: "

    .line 3006
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    .line 3007
    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->hasNeverDetectedCaptivePortal()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3009
    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    if-lez v3, :cond_5

    const-string v3, " numAssociation "

    .line 3010
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3012
    :cond_5
    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    if-lez v3, :cond_6

    const-string v3, " numNoInternetAccessReports "

    .line 3013
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3014
    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3016
    :cond_6
    iget-boolean v3, p0, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    if-eqz v3, :cond_7

    const-string v3, " validatedInternetAccess"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3017
    :cond_7
    iget-boolean v3, p0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-eqz v3, :cond_8

    const-string v3, " ephemeral"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3018
    :cond_8
    iget-boolean v3, p0, Landroid/net/wifi/WifiConfiguration;->osu:Z

    if-eqz v3, :cond_9

    const-string v3, " osu"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3019
    :cond_9
    iget-boolean v3, p0, Landroid/net/wifi/WifiConfiguration;->trusted:Z

    if-eqz v3, :cond_a

    const-string v3, " trusted"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3020
    :cond_a
    iget-boolean v3, p0, Landroid/net/wifi/WifiConfiguration;->oemPaid:Z

    if-eqz v3, :cond_b

    const-string v3, " oemPaid"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3021
    :cond_b
    iget-boolean v3, p0, Landroid/net/wifi/WifiConfiguration;->oemPrivate:Z

    if-eqz v3, :cond_c

    const-string v3, " oemPrivate"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3022
    :cond_c
    iget-boolean v3, p0, Landroid/net/wifi/WifiConfiguration;->carrierMerged:Z

    if-eqz v3, :cond_d

    const-string v3, " carrierMerged"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3023
    :cond_d
    iget-boolean v3, p0, Landroid/net/wifi/WifiConfiguration;->fromWifiNetworkSuggestion:Z

    if-eqz v3, :cond_e

    const-string v3, " fromWifiNetworkSuggestion"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3024
    :cond_e
    iget-boolean v3, p0, Landroid/net/wifi/WifiConfiguration;->fromWifiNetworkSpecifier:Z

    if-eqz v3, :cond_f

    const-string v3, " fromWifiNetworkSpecifier"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3025
    :cond_f
    iget-boolean v3, p0, Landroid/net/wifi/WifiConfiguration;->meteredHint:Z

    if-eqz v3, :cond_10

    const-string v3, " meteredHint"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3026
    :cond_10
    iget-boolean v3, p0, Landroid/net/wifi/WifiConfiguration;->useExternalScores:Z

    if-eqz v3, :cond_11

    const-string v3, " useExternalScores"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3027
    :cond_11
    iget-boolean v3, p0, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    if-nez v3, :cond_12

    iget-boolean v3, p0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-nez v3, :cond_12

    iget-boolean v3, p0, Landroid/net/wifi/WifiConfiguration;->trusted:Z

    if-nez v3, :cond_12

    iget-boolean v3, p0, Landroid/net/wifi/WifiConfiguration;->oemPaid:Z

    if-nez v3, :cond_12

    iget-boolean v3, p0, Landroid/net/wifi/WifiConfiguration;->oemPrivate:Z

    if-nez v3, :cond_12

    iget-boolean v3, p0, Landroid/net/wifi/WifiConfiguration;->carrierMerged:Z

    if-nez v3, :cond_12

    iget-boolean v3, p0, Landroid/net/wifi/WifiConfiguration;->fromWifiNetworkSuggestion:Z

    if-nez v3, :cond_12

    iget-boolean v3, p0, Landroid/net/wifi/WifiConfiguration;->fromWifiNetworkSpecifier:Z

    if-nez v3, :cond_12

    iget-boolean v3, p0, Landroid/net/wifi/WifiConfiguration;->meteredHint:Z

    if-nez v3, :cond_12

    iget-boolean v3, p0, Landroid/net/wifi/WifiConfiguration;->useExternalScores:Z

    if-eqz v3, :cond_13

    .line 3030
    :cond_12
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3032
    :cond_13
    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    if-eqz v3, :cond_14

    const-string v3, " meteredOverride "

    .line 3033
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_14
    const-string v3, " macRandomizationSetting: "

    .line 3035
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->macRandomizationSetting:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " mRandomizedMacAddress: "

    .line 3036
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->mRandomizedMacAddress:Landroid/net/MacAddress;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " randomizedMacExpirationTimeMs: "

    .line 3037
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3038
    iget-wide v5, p0, Landroid/net/wifi/WifiConfiguration;->randomizedMacExpirationTimeMs:J

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    const-string v9, "<none>"

    if-nez v3, :cond_15

    move-object v3, v9

    goto :goto_2

    .line 3039
    :cond_15
    invoke-static {v5, v6}, Landroid/net/wifi/WifiConfiguration;->logTimeOfDay(J)Ljava/lang/String;

    move-result-object v3

    .line 3038
    :goto_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3039
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " randomizedMacLastModifiedTimeMs: "

    .line 3040
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3041
    iget-wide v5, p0, Landroid/net/wifi/WifiConfiguration;->randomizedMacLastModifiedTimeMs:J

    cmp-long v3, v5, v7

    if-nez v3, :cond_16

    goto :goto_3

    .line 3042
    :cond_16
    invoke-static {v5, v6}, Landroid/net/wifi/WifiConfiguration;->logTimeOfDay(J)Ljava/lang/String;

    move-result-object v9

    .line 3041
    :goto_3
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3042
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " deletionPriority: "

    .line 3043
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->mDeletionPriority:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " KeyMgmt:"

    .line 3044
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, v4

    .line 3045
    :goto_4
    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v5}, Ljava/util/BitSet;->size()I

    move-result v5

    const-string v6, "??"

    const-string v9, " "

    if-ge v3, v5, :cond_19

    .line 3046
    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v5, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 3047
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3048
    sget-object v5, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    array-length v9, v5

    if-ge v3, v9, :cond_17

    .line 3049
    aget-object v5, v5, v3

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 3051
    :cond_17
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_18
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_19
    const-string v3, " Protocols:"

    .line 3055
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, v4

    .line 3056
    :goto_6
    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v5}, Ljava/util/BitSet;->size()I

    move-result v5

    if-ge v3, v5, :cond_1c

    .line 3057
    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v5, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 3058
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3059
    sget-object v5, Landroid/net/wifi/WifiConfiguration$Protocol;->strings:[Ljava/lang/String;

    array-length v10, v5

    if-ge v3, v10, :cond_1a

    .line 3060
    aget-object v5, v5, v3

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 3062
    :cond_1a
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1b
    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 3066
    :cond_1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, " AuthAlgorithms:"

    .line 3067
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, v4

    .line 3068
    :goto_8
    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v5}, Ljava/util/BitSet;->size()I

    move-result v5

    if-ge v3, v5, :cond_1f

    .line 3069
    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v5, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 3070
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3071
    sget-object v5, Landroid/net/wifi/WifiConfiguration$AuthAlgorithm;->strings:[Ljava/lang/String;

    array-length v10, v5

    if-ge v3, v10, :cond_1d

    .line 3072
    aget-object v5, v5, v3

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 3074
    :cond_1d
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1e
    :goto_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 3078
    :cond_1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, " PairwiseCiphers:"

    .line 3079
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, v4

    .line 3080
    :goto_a
    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v5}, Ljava/util/BitSet;->size()I

    move-result v5

    if-ge v3, v5, :cond_22

    .line 3081
    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v5, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 3082
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3083
    sget-object v5, Landroid/net/wifi/WifiConfiguration$PairwiseCipher;->strings:[Ljava/lang/String;

    array-length v10, v5

    if-ge v3, v10, :cond_20

    .line 3084
    aget-object v5, v5, v3

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 3086
    :cond_20
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_21
    :goto_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 3090
    :cond_22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, " GroupCiphers:"

    .line 3091
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, v4

    .line 3092
    :goto_c
    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v5}, Ljava/util/BitSet;->size()I

    move-result v5

    if-ge v3, v5, :cond_25

    .line 3093
    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v5, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 3094
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3095
    sget-object v5, Landroid/net/wifi/WifiConfiguration$GroupCipher;->strings:[Ljava/lang/String;

    array-length v10, v5

    if-ge v3, v10, :cond_23

    .line 3096
    aget-object v5, v5, v3

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    .line 3098
    :cond_23
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_24
    :goto_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 3102
    :cond_25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, " GroupMgmtCiphers:"

    .line 3103
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, v4

    .line 3104
    :goto_e
    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupManagementCiphers:Ljava/util/BitSet;

    invoke-virtual {v5}, Ljava/util/BitSet;->size()I

    move-result v5

    if-ge v3, v5, :cond_28

    .line 3105
    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupManagementCiphers:Ljava/util/BitSet;

    invoke-virtual {v5, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_27

    .line 3106
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3107
    sget-object v5, Landroid/net/wifi/WifiConfiguration$GroupMgmtCipher;->strings:[Ljava/lang/String;

    array-length v10, v5

    if-ge v3, v10, :cond_26

    .line 3108
    aget-object v5, v5, v3

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f

    .line 3110
    :cond_26
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_27
    :goto_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 3114
    :cond_28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, " SuiteBCiphers:"

    .line 3115
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3116
    :goto_10
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->allowedSuiteBCiphers:Ljava/util/BitSet;

    invoke-virtual {v3}, Ljava/util/BitSet;->size()I

    move-result v3

    if-ge v4, v3, :cond_2b

    .line 3117
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->allowedSuiteBCiphers:Ljava/util/BitSet;

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 3118
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3119
    sget-object v3, Landroid/net/wifi/WifiConfiguration$SuiteBCipher;->strings:[Ljava/lang/String;

    array-length v5, v3

    if-ge v4, v5, :cond_29

    .line 3120
    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_11

    .line 3122
    :cond_29
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2a
    :goto_11
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 3126
    :cond_2b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, " PSK/SAE: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3127
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v3, :cond_2c

    const/16 v3, 0x2a

    .line 3128
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2c
    const-string v3, "\nSecurityParams List:\n"

    .line 3131
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3132
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->mSecurityParamsList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Landroid/net/wifi/WifiConfiguration$$ExternalSyntheticLambda1;

    invoke-direct {v4, v0}, Landroid/net/wifi/WifiConfiguration$$ExternalSyntheticLambda1;-><init>(Ljava/lang/StringBuilder;)V

    .line 3133
    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    const-string v3, "\nEnterprise config:\n"

    .line 3135
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3136
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "IP config:\n"

    .line 3138
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3139
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    invoke-virtual {v3}, Landroid/net/IpConfiguration;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3141
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionBSSID()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2d

    .line 3142
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " networkSelectionBSSID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    .line 3143
    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionBSSID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3142
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3145
    :cond_2d
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 3146
    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getDisableTime()J

    move-result-wide v5

    const-wide/16 v10, -0x1

    cmp-long v5, v5, v10

    if-eqz v5, :cond_2f

    .line 3148
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3149
    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getDisableTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    cmp-long v5, v3, v7

    if-gtz v5, :cond_2e

    const-string v3, " blackListed since <incorrect>"

    .line 3151
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_12

    :cond_2e
    const-string v5, " blackListed: "

    .line 3153
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "sec "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3156
    :cond_2f
    :goto_12
    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    if-eqz v3, :cond_30

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " cuid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3157
    :cond_30
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    if-eqz v3, :cond_31

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " cname="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3158
    :cond_31
    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    if-eqz v3, :cond_32

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " luid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3159
    :cond_32
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->lastUpdateName:Ljava/lang/String;

    if-eqz v3, :cond_33

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " lname="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->lastUpdateName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3160
    :cond_33
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->updateIdentifier:Ljava/lang/String;

    if-eqz v3, :cond_34

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " updateIdentifier="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->updateIdentifier:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3161
    :cond_34
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " lcuid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3162
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " allowAutojoin="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Landroid/net/wifi/WifiConfiguration;->allowAutojoin:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3163
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " noInternetAccessExpected="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Landroid/net/wifi/WifiConfiguration;->noInternetAccessExpected:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3164
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " mostRecentlyConnected="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Landroid/net/wifi/WifiConfiguration;->isMostRecentlyConnected:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3166
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3168
    iget-wide v3, p0, Landroid/net/wifi/WifiConfiguration;->lastConnected:J

    cmp-long v3, v3, v7

    if-eqz v3, :cond_35

    .line 3169
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "lastConnected: "

    .line 3170
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Landroid/net/wifi/WifiConfiguration;->lastConnected:J

    invoke-static {v3, v4}, Landroid/net/wifi/WifiConfiguration;->logTimeOfDay(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3171
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3173
    :cond_35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3174
    iget-wide v3, p0, Landroid/net/wifi/WifiConfiguration;->lastUpdated:J

    cmp-long v3, v3, v7

    if-eqz v3, :cond_36

    .line 3175
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "lastUpdated: "

    .line 3176
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Landroid/net/wifi/WifiConfiguration;->lastUpdated:J

    invoke-static {v3, v4}, Landroid/net/wifi/WifiConfiguration;->logTimeOfDay(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3177
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3179
    :cond_36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "numRebootsSinceLastUse: "

    .line 3180
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->numRebootsSinceLastUse:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3181
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    if-eqz v3, :cond_37

    .line 3182
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_37

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, " linked: "

    .line 3183
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3184
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_13

    :cond_37
    const-string v1, "recentFailure: "

    .line 3187
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Association Rejection code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->recentFailure:Landroid/net/wifi/WifiConfiguration$RecentFailure;

    .line 3188
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$RecentFailure;->getAssociationStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", last update time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->recentFailure:Landroid/net/wifi/WifiConfiguration$RecentFailure;

    .line 3189
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration$RecentFailure;->getLastUpdateTimeSinceBootMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3190
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    .line 3657
    iget v0, p0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3658
    iget v0, p0, Landroid/net/wifi/WifiConfiguration;->status:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3659
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->writeToParcel(Landroid/os/Parcel;)V

    .line 3660
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3661
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3662
    iget v0, p0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3663
    iget v0, p0, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3664
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3665
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3666
    iget-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->isHomeProviderNetwork:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3667
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->roamingConsortiumIds:[J

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3668
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->roamingConsortiumIds:[J

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-wide v4, v0, v3

    .line 3669
    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3671
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3672
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 3673
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3675
    :cond_1
    iget v0, p0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3676
    iget v0, p0, Landroid/net/wifi/WifiConfiguration;->priority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3677
    iget v0, p0, Landroid/net/wifi/WifiConfiguration;->mDeletionPriority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3678
    iget-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3679
    iget-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->requirePmf:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3680
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->updateIdentifier:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3682
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-static {p1, v0}, Landroid/net/wifi/WifiConfiguration;->writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V

    .line 3683
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-static {p1, v0}, Landroid/net/wifi/WifiConfiguration;->writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V

    .line 3684
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-static {p1, v0}, Landroid/net/wifi/WifiConfiguration;->writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V

    .line 3685
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-static {p1, v0}, Landroid/net/wifi/WifiConfiguration;->writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V

    .line 3686
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-static {p1, v0}, Landroid/net/wifi/WifiConfiguration;->writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V

    .line 3687
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupManagementCiphers:Ljava/util/BitSet;

    invoke-static {p1, v0}, Landroid/net/wifi/WifiConfiguration;->writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V

    .line 3688
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedSuiteBCiphers:Ljava/util/BitSet;

    invoke-static {p1, v0}, Landroid/net/wifi/WifiConfiguration;->writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V

    .line 3690
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mSecurityParamsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3691
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mSecurityParamsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/net/wifi/WifiConfiguration$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p2}, Landroid/net/wifi/WifiConfiguration$$ExternalSyntheticLambda0;-><init>(Landroid/os/Parcel;I)V

    .line 3692
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 3694
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 3696
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 3697
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->dhcpServer:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3698
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->defaultGwMacAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3699
    iget-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3700
    iget-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->isLegacyPasspointConfig:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3701
    iget-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3702
    iget-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->trusted:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3703
    iget-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->oemPaid:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3704
    iget-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->oemPrivate:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3705
    iget-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->carrierMerged:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3706
    iget-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->fromWifiNetworkSuggestion:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3707
    iget-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->fromWifiNetworkSpecifier:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3708
    iget-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->meteredHint:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3709
    iget v0, p0, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3710
    iget-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->useExternalScores:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3711
    iget v0, p0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3712
    iget v0, p0, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3713
    iget v0, p0, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3714
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3715
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->lastUpdateName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3716
    iget v0, p0, Landroid/net/wifi/WifiConfiguration;->numScorerOverride:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3717
    iget v0, p0, Landroid/net/wifi/WifiConfiguration;->numScorerOverrideAndSwitchedNetwork:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3718
    iget v0, p0, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3719
    iget-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->allowAutojoin:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3720
    iget v0, p0, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3721
    iget-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->noInternetAccessExpected:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3722
    iget-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->shared:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3723
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mPasspointManagementObjectTree:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3724
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->recentFailure:Landroid/net/wifi/WifiConfiguration$RecentFailure;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration$RecentFailure;->getAssociationStatus()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3725
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->recentFailure:Landroid/net/wifi/WifiConfiguration$RecentFailure;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration$RecentFailure;->getLastUpdateTimeSinceBootMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3726
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mRandomizedMacAddress:Landroid/net/MacAddress;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 3727
    iget p2, p0, Landroid/net/wifi/WifiConfiguration;->macRandomizationSetting:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3728
    iget-boolean p2, p0, Landroid/net/wifi/WifiConfiguration;->osu:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3729
    iget-wide v0, p0, Landroid/net/wifi/WifiConfiguration;->randomizedMacExpirationTimeMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3730
    iget-wide v0, p0, Landroid/net/wifi/WifiConfiguration;->randomizedMacLastModifiedTimeMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3731
    iget p2, p0, Landroid/net/wifi/WifiConfiguration;->carrierId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3732
    iget-object p2, p0, Landroid/net/wifi/WifiConfiguration;->mPasspointUniqueId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3733
    iget p0, p0, Landroid/net/wifi/WifiConfiguration;->subscriptionId:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

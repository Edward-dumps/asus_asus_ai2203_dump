.class public Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;
.super Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;
.source "StandardDualWifiEntry.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$ScanResultKey;,
        Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$StandardDualWifiEntryKey;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mIsEnhancedOpenSupported:Z

.field private mIsUserShareable:Z

.field private final mIsWpa3SaeSupported:Z

.field private final mIsWpa3SuiteBSupported:Z

.field private final mKey:Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$StandardDualWifiEntryKey;

.field private final mMatchingScanResults:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mMatchingWifiConfigs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private mRecommendationServiceLabel:Ljava/lang/String;

.field private mShouldAutoOpenCaptivePortal:Z

.field private final mTargetScanResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetSecurityTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public static synthetic $r8$lambda$5UCsEPetrcuY2Qh-G-dplt2JLhI(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectCallback;)V
    .locals 0

    invoke-static {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->lambda$connect$1(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9gIs4HH4DQRrOYKUqMsOja_mslw(Landroid/net/wifi/ScanResult;)I
    .locals 0

    invoke-static {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->lambda$getScanResultDescription$5(Landroid/net/wifi/ScanResult;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$BEJoGwAypaIr5htY4oVa8Rzl2Os(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectCallback;)V
    .locals 0

    invoke-static {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->lambda$connect$0(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Lz_ZCcWKwW1ypdsUcLHmHrSy2Ck(IILandroid/net/wifi/ScanResult;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->lambda$handleOwnScanResult$7(IILandroid/net/wifi/ScanResult;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$NiHxJC4YYpv1c5b7hIZC2oDRtmc(Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$DisconnectCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->lambda$disconnect$2(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$DisconnectCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZEsERVcWPe_bosk3t4WwpFUQt5U(Landroid/net/wifi/ScanResult;)I
    .locals 0

    invoke-static {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->lambda$getScanResultDescription$4(Landroid/net/wifi/ScanResult;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ae6DqE_i7inNrPNpQccKXbOAf4o(Landroid/net/wifi/ScanResult;)I
    .locals 0

    invoke-static {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->lambda$handleOwnScanResult$8(Landroid/net/wifi/ScanResult;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$wRRO18B77YKg-8e4DmDg0qGy-q8(IILandroid/net/wifi/ScanResult;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->lambda$getScanResultDescription$3(IILandroid/net/wifi/ScanResult;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$yXJo_LFucAW60xzq8ipukSVjvMY(Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;Ljava/lang/StringBuilder;JLandroid/net/wifi/ScanResult;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->lambda$getScanResultDescription$6(Ljava/lang/StringBuilder;JLandroid/net/wifi/ScanResult;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$StandardDualWifiEntryKey;Lasus/net/vicewifi/WifiViceManager;Landroid/net/wifi/WifiNetworkScoreCache;Z)V
    .locals 0

    .line 123
    invoke-direct {p0, p2, p4, p5, p6}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;-><init>(Landroid/os/Handler;Lasus/net/vicewifi/WifiViceManager;Landroid/net/wifi/WifiNetworkScoreCache;Z)V

    .line 94
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mMatchingScanResults:Ljava/util/Map;

    .line 97
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mMatchingWifiConfigs:Ljava/util/Map;

    .line 103
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mTargetScanResults:Ljava/util/List;

    .line 106
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mTargetSecurityTypes:Ljava/util/List;

    const/4 p2, 0x0

    .line 108
    iput-boolean p2, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mIsUserShareable:Z

    .line 111
    iput-boolean p2, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mShouldAutoOpenCaptivePortal:Z

    .line 124
    iput-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mContext:Landroid/content/Context;

    .line 125
    iput-object p3, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mKey:Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$StandardDualWifiEntryKey;

    .line 126
    invoke-virtual {p4}, Lasus/net/vicewifi/WifiViceManager;->isWpa3SaeSupported()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mIsWpa3SaeSupported:Z

    .line 127
    invoke-virtual {p4}, Lasus/net/vicewifi/WifiViceManager;->isWpa3SuiteBSupported()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mIsWpa3SuiteBSupported:Z

    .line 128
    invoke-virtual {p4}, Lasus/net/vicewifi/WifiViceManager;->isEnhancedOpenSupported()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mIsEnhancedOpenSupported:Z

    .line 129
    invoke-direct {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->updateRecommendationServiceLabel()V

    const-string/jumbo p2, "wifi"

    .line 131
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$StandardDualWifiEntryKey;Ljava/util/List;Ljava/util/List;Lasus/net/vicewifi/WifiViceManager;Landroid/net/wifi/WifiNetworkScoreCache;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$StandardDualWifiEntryKey;",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;",
            "Lasus/net/vicewifi/WifiViceManager;",
            "Landroid/net/wifi/WifiNetworkScoreCache;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p6

    move-object v5, p7

    move v6, p8

    .line 141
    invoke-direct/range {v0 .. v6}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$StandardDualWifiEntryKey;Lasus/net/vicewifi/WifiViceManager;Landroid/net/wifi/WifiNetworkScoreCache;Z)V

    if-eqz p4, :cond_0

    .line 143
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 145
    :try_start_0
    invoke-virtual {p0, p4}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->updateConfig(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    if-eqz p5, :cond_1

    .line 150
    invoke-interface {p5}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 151
    invoke-virtual {p0, p5}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->updateScanResultInfo(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method private declared-synchronized getScanResultDescription(II)Ljava/lang/String;
    .locals 3

    monitor-enter p0

    .line 899
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mTargetScanResults:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$$ExternalSyntheticLambda5;

    invoke-direct {v1, p1, p2}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$$ExternalSyntheticLambda5;-><init>(II)V

    .line 900
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    sget-object p2, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$$ExternalSyntheticLambda7;->INSTANCE:Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$$ExternalSyntheticLambda7;

    .line 902
    invoke-static {p2}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 903
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 905
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_0

    const-string p1, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 907
    monitor-exit p0

    return-object p1

    .line 910
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    .line 911
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    if-le p2, v1, :cond_1

    .line 913
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    sget-object v1, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$$ExternalSyntheticLambda6;->INSTANCE:Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$$ExternalSyntheticLambda6;

    .line 914
    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/stream/IntStream;->max()Ljava/util/OptionalInt;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/OptionalInt;->getAsInt()I

    move-result p2

    const-string v1, "max="

    .line 915
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ","

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 917
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 918
    new-instance p2, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0, v0, v1, v2}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;Ljava/lang/StringBuilder;J)V

    invoke-interface {p1, p2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 920
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized getScanResultDescription(Landroid/net/wifi/ScanResult;J)Ljava/lang/String;
    .locals 5

    monitor-enter p0

    .line 924
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " \n{"

    .line 925
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 926
    iget-object v1, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 927
    iget-object v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v1, :cond_0

    iget-object v2, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "*"

    .line 928
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, "="

    .line 930
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 931
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 932
    iget-wide v1, p1, Landroid/net/wifi/ScanResult;->timestamp:J

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    sub-long/2addr p2, v1

    long-to-int p1, p2

    div-int/lit16 p1, p1, 0x3e8

    const-string p2, ","

    .line 933
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "s"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "}"

    .line 934
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 935
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private isSecurityTypeSupported(I)Z
    .locals 1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 768
    :cond_0
    iget-boolean p0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mIsEnhancedOpenSupported:Z

    return p0

    .line 766
    :cond_1
    iget-boolean p0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mIsWpa3SuiteBSupported:Z

    return p0

    .line 764
    :cond_2
    iget-boolean p0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mIsWpa3SaeSupported:Z

    return p0
.end method

.method private static synthetic lambda$connect$0(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectCallback;)V
    .locals 1

    const/4 v0, 0x3

    .line 332
    invoke-interface {p0, v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectCallback;->onConnectResult(I)V

    return-void
.end method

.method private static synthetic lambda$connect$1(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectCallback;)V
    .locals 1

    const/4 v0, 0x1

    .line 367
    invoke-interface {p0, v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectCallback;->onConnectResult(I)V

    return-void
.end method

.method private synthetic lambda$disconnect$2(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$DisconnectCallback;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 385
    iget-boolean p0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mCalledDisconnect:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    .line 386
    invoke-interface {p1, p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$DisconnectCallback;->onDisconnectResult(I)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$getScanResultDescription$3(IILandroid/net/wifi/ScanResult;)Z
    .locals 0

    .line 900
    iget p2, p2, Landroid/net/wifi/ScanResult;->frequency:I

    if-lt p2, p0, :cond_0

    if-gt p2, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$getScanResultDescription$4(Landroid/net/wifi/ScanResult;)I
    .locals 0

    .line 902
    iget p0, p0, Landroid/net/wifi/ScanResult;->level:I

    mul-int/lit8 p0, p0, -0x1

    return p0
.end method

.method private static synthetic lambda$getScanResultDescription$5(Landroid/net/wifi/ScanResult;)I
    .locals 0

    .line 914
    iget p0, p0, Landroid/net/wifi/ScanResult;->level:I

    return p0
.end method

.method private synthetic lambda$getScanResultDescription$6(Ljava/lang/StringBuilder;JLandroid/net/wifi/ScanResult;)V
    .locals 0

    .line 919
    invoke-direct {p0, p4, p2, p3}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->getScanResultDescription(Landroid/net/wifi/ScanResult;J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static synthetic lambda$handleOwnScanResult$7(IILandroid/net/wifi/ScanResult;)Z
    .locals 0

    .line 1249
    iget p2, p2, Landroid/net/wifi/ScanResult;->frequency:I

    if-lt p2, p0, :cond_0

    if-gt p2, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$handleOwnScanResult$8(Landroid/net/wifi/ScanResult;)I
    .locals 0

    .line 1251
    iget p0, p0, Landroid/net/wifi/ScanResult;->level:I

    mul-int/lit8 p0, p0, -0x1

    return p0
.end method

.method private declared-synchronized updateRecommendationServiceLabel()V
    .locals 2

    monitor-enter p0

    .line 860
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mContext:Landroid/content/Context;

    const-string v1, "network_score"

    .line 861
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkScoreManager;

    invoke-virtual {v0}, Landroid/net/NetworkScoreManager;->getActiveScorer()Landroid/net/NetworkScorerAppData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 863
    invoke-virtual {v0}, Landroid/net/NetworkScorerAppData;->getRecommendationServiceLabel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mRecommendationServiceLabel:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 865
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized updateTargetScanResultInfo()V
    .locals 2

    monitor-enter p0

    .line 684
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mTargetScanResults:Ljava/util/List;

    invoke-static {v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/Utils;->getBestScanResultByLevel(Ljava/util/List;)Landroid/net/wifi/ScanResult;

    move-result-object v0

    .line 686
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getConnectedState()I

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    .line 688
    iget-object v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mDualWifiManager:Lasus/net/vicewifi/WifiViceManager;

    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v1, v0}, Lasus/net/vicewifi/WifiViceManager;->calculateSignalLevel(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 689
    :goto_0
    iput v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mLevel:I

    .line 691
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    iget-object v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mTargetScanResults:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/Utils;->getAverageSpeedFromScanResults(Landroid/net/wifi/WifiNetworkScoreCache;Ljava/util/List;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mSpeed:I

    .line 694
    :cond_1
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mTargetScanResults:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->updateWifiGenerationInfo(Ljava/util/List;)V

    .line 696
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->updateBand()V

    .line 698
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->notifyOnUpdated()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 699
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized canConnect()Z
    .locals 5

    monitor-enter p0

    .line 289
    :try_start_0
    iget v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mLevel:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_8

    .line 290
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getConnectedState()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mTargetSecurityTypes:Ljava/util/List;

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mTargetWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_7

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-eqz v0, :cond_7

    .line 297
    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->isAuthenticationSimBased()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 298
    monitor-exit p0

    return v3

    .line 300
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mContext:Landroid/content/Context;

    const-string v4, "telephony_subscription_service"

    .line 301
    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    .line 302
    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 303
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    .line 306
    :cond_2
    iget-object v4, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mTargetWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v4, v4, Landroid/net/wifi/WifiConfiguration;->carrierId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v4, v1, :cond_3

    .line 308
    monitor-exit p0

    return v3

    .line 310
    :cond_3
    :try_start_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 311
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getCarrierId()I

    move-result v1

    iget-object v4, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mTargetWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v4, v4, Landroid/net/wifi/WifiConfiguration;->carrierId:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne v1, v4, :cond_4

    .line 312
    monitor-exit p0

    return v3

    .line 315
    :cond_5
    monitor-exit p0

    return v2

    .line 304
    :cond_6
    :goto_0
    monitor-exit p0

    return v2

    .line 317
    :cond_7
    monitor-exit p0

    return v3

    .line 291
    :cond_8
    :goto_1
    monitor-exit p0

    return v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public canDisconnect()Z
    .locals 1

    .line 376
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getConnectedState()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public canForget()Z
    .locals 0

    .line 397
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public canSetAutoJoinEnabled()Z
    .locals 1

    .line 543
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->isSaved()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->isSuggestion()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public canSetMeteredChoice()Z
    .locals 0

    .line 483
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public canSetPrivacy()Z
    .locals 0

    .line 505
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->isSaved()Z

    move-result p0

    return p0
.end method

.method public declared-synchronized canShare()Z
    .locals 5

    monitor-enter p0

    .line 431
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 432
    monitor-exit p0

    return v1

    .line 435
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mTargetSecurityTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-eq v2, v3, :cond_1

    const/4 v4, 0x2

    if-eq v2, v4, :cond_1

    const/4 v4, 0x4

    if-eq v2, v4, :cond_1

    const/4 v4, 0x6

    if-eq v2, v4, :cond_1

    goto :goto_0

    .line 442
    :cond_1
    monitor-exit p0

    return v3

    .line 445
    :cond_2
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized canSignIn()Z
    .locals 2

    monitor-enter p0

    .line 410
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    if-eqz v0, :cond_0

    const/16 v1, 0x11

    .line 411
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 410
    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized connect(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectCallback;)V
    .locals 5

    monitor-enter p0

    .line 322
    :try_start_0
    iput-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mConnectCallback:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectCallback;

    const/4 v0, 0x1

    .line 325
    iput-boolean v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mShouldAutoOpenCaptivePortal:Z

    .line 327
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->isSaved()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->isSuggestion()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mTargetSecurityTypes:Ljava/util/List;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 342
    new-instance p1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mKey:Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$StandardDualWifiEntryKey;

    invoke-virtual {v4}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$StandardDualWifiEntryKey;->getScanResultKey()Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$ScanResultKey;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$ScanResultKey;->getSsid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 344
    invoke-virtual {p1, v1}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    .line 345
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mDualWifiManager:Lasus/net/vicewifi/WifiViceManager;

    new-instance v1, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectActionListener;

    invoke-direct {v1, p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectActionListener;-><init>(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;)V

    invoke-virtual {v0, p1, v1}, Lasus/net/vicewifi/WifiViceManager;->connect(Landroid/net/wifi/WifiConfiguration;Lasus/net/vicewifi/WifiViceManager$ActionListener;)V

    .line 346
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1, v2}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 348
    iget-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mTargetSecurityTypes:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 350
    new-instance p1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mKey:Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$StandardDualWifiEntryKey;

    invoke-virtual {v1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$StandardDualWifiEntryKey;->getScanResultKey()Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$ScanResultKey;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$ScanResultKey;->getSsid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 352
    invoke-virtual {p1, v3}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    .line 353
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mDualWifiManager:Lasus/net/vicewifi/WifiViceManager;

    invoke-virtual {v0, p1, v2}, Lasus/net/vicewifi/WifiViceManager;->save(Landroid/net/wifi/WifiConfiguration;Lasus/net/vicewifi/WifiViceManager$ActionListener;)V

    .line 354
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1, v2}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto/16 :goto_1

    .line 356
    :cond_1
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mTargetSecurityTypes:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 358
    new-instance p1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mKey:Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$StandardDualWifiEntryKey;

    invoke-virtual {v1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$StandardDualWifiEntryKey;->getScanResultKey()Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$ScanResultKey;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$ScanResultKey;->getSsid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 360
    invoke-virtual {p1, v3}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    .line 361
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mDualWifiManager:Lasus/net/vicewifi/WifiViceManager;

    new-instance v1, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectActionListener;

    invoke-direct {v1, p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectActionListener;-><init>(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;)V

    invoke-virtual {v0, p1, v1}, Lasus/net/vicewifi/WifiViceManager;->connect(Landroid/net/wifi/WifiConfiguration;Lasus/net/vicewifi/WifiViceManager$ActionListener;)V

    .line 362
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1, v2}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_6

    .line 366
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mCallbackHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 328
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mTargetWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/Utils;->isSimCredential(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mTargetWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->carrierId:I

    .line 329
    invoke-static {v0, v1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/Utils;->isSimPresent(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_5

    if-eqz p1, :cond_4

    .line 331
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mCallbackHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
    :cond_4
    monitor-exit p0

    return-void

    .line 338
    :cond_5
    :try_start_1
    iget-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mDualWifiManager:Lasus/net/vicewifi/WifiViceManager;

    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mTargetWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    new-instance v1, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectActionListener;

    invoke-direct {v1, p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectActionListener;-><init>(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;)V

    invoke-virtual {p1, v0, v1}, Lasus/net/vicewifi/WifiViceManager;->connect(ILasus/net/vicewifi/WifiViceManager$ActionListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 372
    :cond_6
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized connectionInfoMatches(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)Z
    .locals 3

    monitor-enter p0

    .line 848
    :try_start_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->isPasspointAp()Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_3

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->isOsuAp()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 851
    :cond_0
    iget-object p2, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mMatchingWifiConfigs:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 852
    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v2, :cond_1

    const/4 p1, 0x1

    .line 853
    monitor-exit p0

    return p1

    .line 856
    :cond_2
    monitor-exit p0

    return v0

    .line 849
    :cond_3
    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized disconnect(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$DisconnectCallback;)V
    .locals 4

    monitor-enter p0

    .line 381
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->canDisconnect()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 382
    iput-boolean v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mCalledDisconnect:Z

    .line 383
    iput-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mDisconnectCallback:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$DisconnectCallback;

    .line 384
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mCallbackHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$DisconnectCallback;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 390
    iget-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mDualWifiManager:Lasus/net/vicewifi/WifiViceManager;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mKey:Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$StandardDualWifiEntryKey;

    invoke-virtual {v1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$StandardDualWifiEntryKey;->getScanResultKey()Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$ScanResultKey;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$ScanResultKey;->getSsid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lasus/net/vicewifi/WifiViceManager;->disableEphemeralNetwork(Ljava/lang/String;)V

    .line 391
    iget-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mDualWifiManager:Lasus/net/vicewifi/WifiViceManager;

    invoke-virtual {p1}, Lasus/net/vicewifi/WifiViceManager;->disconnect()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 393
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized forget(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ForgetCallback;)V
    .locals 2

    monitor-enter p0

    .line 402
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->canForget()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    iput-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mForgetCallback:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ForgetCallback;

    .line 404
    iget-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mDualWifiManager:Lasus/net/vicewifi/WifiViceManager;

    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mTargetWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    new-instance v1, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ForgetActionListener;

    invoke-direct {v1, p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ForgetActionListener;-><init>(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;)V

    invoke-virtual {p1, v0, v1}, Lasus/net/vicewifi/WifiViceManager;->forget(ILasus/net/vicewifi/WifiViceManager$ActionListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 406
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mKey:Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$StandardDualWifiEntryKey;

    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$StandardDualWifiEntryKey;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized getMacAddress()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 245
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_0

    .line 246
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 247
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "02:00:00:00:00:00"

    .line 248
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 249
    monitor-exit p0

    return-object v0

    .line 252
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mTargetWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->getPrivacy()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 259
    :cond_1
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mTargetWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getRandomizedMacAddress()Landroid/net/MacAddress;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/MacAddress;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 253
    :cond_2
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mDualWifiManager:Lasus/net/vicewifi/WifiViceManager;

    invoke-virtual {v0}, Lasus/net/vicewifi/WifiViceManager;->getFactoryMacAddresses()[Ljava/lang/String;

    move-result-object v0

    .line 254
    array-length v1, v0

    if-lez v1, :cond_3

    const/4 v1, 0x0

    .line 255
    aget-object v0, v0, v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_3
    const/4 v0, 0x0

    .line 257
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMeteredChoice()I
    .locals 2

    monitor-enter p0

    .line 470
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->isSuggestion()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mTargetWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_1

    .line 471
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 473
    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 475
    monitor-exit p0

    return v1

    :cond_1
    const/4 v0, 0x0

    .line 478
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getNetworkSelectionDescription()Ljava/lang/String;
    .locals 0

    .line 940
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/Utils;->getNetworkSelectionDescription(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized getPrivacy()I
    .locals 1

    monitor-enter p0

    .line 511
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mTargetWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->macRandomizationSetting:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 514
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x1

    .line 516
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized getScanResultDescription()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    .line 884
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mTargetScanResults:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 885
    monitor-exit p0

    return-object v0

    .line 888
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    .line 889
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x960

    const/16 v2, 0x9c4

    .line 890
    invoke-direct {p0, v1, v2}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->getScanResultDescription(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x1324

    const/16 v2, 0x170c

    .line 891
    invoke-direct {p0, v1, v2}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->getScanResultDescription(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x1725

    const/16 v2, 0x1bd5

    .line 892
    invoke-direct {p0, v1, v2}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->getScanResultDescription(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0xe3d0

    const v2, 0x11238

    .line 893
    invoke-direct {p0, v1, v2}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->getScanResultDescription(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    .line 894
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 895
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSecondSummary()Ljava/lang/CharSequence;
    .locals 2

    .line 229
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getConnectedState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 230
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/Utils;->getImsiProtectionDescription(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public declared-synchronized getSecurityString(Z)Ljava/lang/String;
    .locals 4

    monitor-enter p0

    .line 557
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mTargetSecurityTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    const-string p1, ""

    goto :goto_0

    .line 558
    :cond_0
    iget-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/wifitrackerlib/R$string;->wifitrackerlib_wifi_security_none:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object p1

    .line 560
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mTargetSecurityTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x9

    const/4 v3, 0x0

    if-ne v0, v1, :cond_a

    .line 561
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mTargetSecurityTypes:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v2, :cond_8

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_8

    :pswitch_0
    if-eqz p1, :cond_2

    .line 589
    iget-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/wifitrackerlib/R$string;->wifitrackerlib_wifi_security_short_owe:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 591
    :cond_2
    iget-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/wifitrackerlib/R$string;->wifitrackerlib_wifi_security_owe:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 589
    :goto_1
    monitor-exit p0

    return-object p1

    :pswitch_1
    if-eqz p1, :cond_3

    .line 574
    :try_start_2
    iget-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/wifitrackerlib/R$string;->wifitrackerlib_wifi_security_short_eap_suiteb:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 576
    :cond_3
    iget-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/wifitrackerlib/R$string;->wifitrackerlib_wifi_security_eap_suiteb:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 574
    :goto_2
    monitor-exit p0

    return-object p1

    :pswitch_2
    if-eqz p1, :cond_4

    .line 585
    :try_start_3
    iget-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/wifitrackerlib/R$string;->wifitrackerlib_wifi_security_short_sae:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    .line 587
    :cond_4
    iget-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/wifitrackerlib/R$string;->wifitrackerlib_wifi_security_sae:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 585
    :goto_3
    monitor-exit p0

    return-object p1

    :pswitch_3
    if-eqz p1, :cond_5

    .line 564
    :try_start_4
    iget-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/wifitrackerlib/R$string;->wifitrackerlib_wifi_security_short_eap_wpa_wpa2:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    .line 566
    :cond_5
    iget-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/wifitrackerlib/R$string;->wifitrackerlib_wifi_security_eap_wpa_wpa2:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 564
    :goto_4
    monitor-exit p0

    return-object p1

    :pswitch_4
    if-eqz p1, :cond_6

    .line 578
    :try_start_5
    iget-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/wifitrackerlib/R$string;->wifitrackerlib_wifi_security_short_wpa_wpa2:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    .line 580
    :cond_6
    iget-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/wifitrackerlib/R$string;->wifitrackerlib_wifi_security_wpa_wpa2:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 578
    :goto_5
    monitor-exit p0

    return-object p1

    .line 583
    :pswitch_5
    :try_start_6
    iget-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/wifitrackerlib/R$string;->wifitrackerlib_wifi_security_wep:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-object p1

    :pswitch_6
    if-eqz p1, :cond_7

    :try_start_7
    const-string p1, ""

    goto :goto_6

    .line 593
    :cond_7
    iget-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/wifitrackerlib/R$string;->wifitrackerlib_wifi_security_none:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_6
    monitor-exit p0

    return-object p1

    :cond_8
    if-eqz p1, :cond_9

    .line 569
    :try_start_8
    iget-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/wifitrackerlib/R$string;->wifitrackerlib_wifi_security_short_eap_wpa3:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_7

    .line 571
    :cond_9
    iget-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/wifitrackerlib/R$string;->wifitrackerlib_wifi_security_eap_wpa3:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 569
    :goto_7
    monitor-exit p0

    return-object p1

    .line 597
    :cond_a
    :goto_8
    :try_start_9
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mTargetSecurityTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_10

    .line 598
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mTargetSecurityTypes:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mTargetSecurityTypes:Ljava/util/List;

    const/4 v3, 0x6

    .line 599
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 600
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, "/"

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 601
    iget-object v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/wifitrackerlib/R$string;->wifitrackerlib_wifi_security_none:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    if-eqz p1, :cond_b

    .line 602
    iget-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/wifitrackerlib/R$string;->wifitrackerlib_wifi_security_short_owe:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_9

    .line 604
    :cond_b
    iget-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/wifitrackerlib/R$string;->wifitrackerlib_wifi_security_owe:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 602
    :goto_9
    invoke-virtual {v0, p1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 605
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    monitor-exit p0

    return-object p1

    .line 607
    :cond_c
    :try_start_a
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mTargetSecurityTypes:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mTargetSecurityTypes:Ljava/util/List;

    const/4 v1, 0x4

    .line 608
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    if-eqz p1, :cond_d

    .line 609
    iget-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/wifitrackerlib/R$string;->wifitrackerlib_wifi_security_short_wpa_wpa2_wpa3:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_a

    .line 611
    :cond_d
    iget-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/wifitrackerlib/R$string;->wifitrackerlib_wifi_security_wpa_wpa2_wpa3:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 609
    :goto_a
    monitor-exit p0

    return-object p1

    .line 614
    :cond_e
    :try_start_b
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mTargetSecurityTypes:Ljava/util/List;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mTargetSecurityTypes:Ljava/util/List;

    .line 615
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    if-eqz p1, :cond_f

    .line 616
    iget-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/wifitrackerlib/R$string;->wifitrackerlib_wifi_security_short_eap_wpa_wpa2_wpa3:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_b

    .line 618
    :cond_f
    iget-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/wifitrackerlib/R$string;->wifitrackerlib_wifi_security_eap_wpa_wpa2_wpa3:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 616
    :goto_b
    monitor-exit p0

    return-object p1

    :cond_10
    :try_start_c
    const-string v0, "StandardDualWifiEntry"

    .line 623
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t get string for security types: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mTargetSecurityTypes:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_11

    const-string p1, ""

    goto :goto_c

    .line 624
    :cond_11
    iget-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/wifitrackerlib/R$string;->wifitrackerlib_wifi_security_none:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :goto_c
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized getSecurityTypes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 240
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mTargetSecurityTypes:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSsid()Ljava/lang/String;
    .locals 0

    .line 235
    iget-object p0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mKey:Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$StandardDualWifiEntryKey;

    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$StandardDualWifiEntryKey;->getScanResultKey()Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$ScanResultKey;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$ScanResultKey;->getSsid()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method getStandardDualWifiEntryKey()Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$StandardDualWifiEntryKey;
    .locals 0

    .line 161
    iget-object p0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mKey:Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$StandardDualWifiEntryKey;

    return-object p0
.end method

.method public declared-synchronized getSummary(Z)Ljava/lang/String;
    .locals 7

    monitor-enter p0

    .line 171
    :try_start_0
    new-instance v0, Ljava/util/StringJoiner;

    iget-object v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/wifitrackerlib/R$string;->wifitrackerlib_summary_separator:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 175
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getConnectedState()I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const-string v2, "StandardDualWifiEntry"

    .line 195
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getConnectedState() returned unknown state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0

    .line 187
    :cond_0
    iget-object v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mTargetWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    iget-object v4, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mRecommendationServiceLabel:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mIsDefaultNetwork:Z

    iget-boolean v6, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mIsLowQuality:Z

    invoke-static/range {v1 .. v6}, Lcom/android/settings/dualwifi/dualwifitrackerlib/Utils;->getConnectedDescription(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;Landroid/net/NetworkCapabilities;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 184
    :cond_1
    iget-object v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-static {v1, v2}, Lcom/android/settings/dualwifi/dualwifitrackerlib/Utils;->getConnectingDescription(Landroid/content/Context;Landroid/net/NetworkInfo;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 178
    :cond_2
    iget-object v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mTargetWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-boolean v3, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mForSavedNetworksPage:Z

    invoke-static {v1, v2, v3, p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/Utils;->getDisconnectedDescription(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;ZZ)Ljava/lang/String;

    move-result-object v1

    .line 198
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 199
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 202
    :cond_3
    iget-object v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mContext:Landroid/content/Context;

    invoke-static {v1, p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/Utils;->getSpeedDescription(Landroid/content/Context;Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;)Ljava/lang/String;

    move-result-object v1

    .line 203
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 204
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 207
    :cond_4
    iget-object v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mContext:Landroid/content/Context;

    invoke-static {v1, p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/Utils;->getAutoConnectDescription(Landroid/content/Context;Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;)Ljava/lang/String;

    move-result-object v1

    .line 208
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 209
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 212
    :cond_5
    iget-object v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mContext:Landroid/content/Context;

    invoke-static {v1, p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/Utils;->getMeteredDescription(Landroid/content/Context;Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;)Ljava/lang/String;

    move-result-object v1

    .line 213
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 214
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_6
    if-nez p1, :cond_7

    .line 218
    invoke-static {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/Utils;->getVerboseLoggingDescription(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;)Ljava/lang/String;

    move-result-object p1

    .line 219
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 220
    invoke-virtual {v0, p1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 224
    :cond_7
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    .line 166
    iget-object p0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mKey:Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$StandardDualWifiEntryKey;

    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$StandardDualWifiEntryKey;->getScanResultKey()Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$ScanResultKey;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$ScanResultKey;->getSsid()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 1

    monitor-enter p0

    .line 281
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->isSaved()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 282
    monitor-exit p0

    return-object v0

    .line 284
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mTargetWifiConfig:Landroid/net/wifi/WifiConfiguration;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized handleOwnScanResult(II)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1243
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mTargetScanResults:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 1244
    monitor-exit p0

    return-object p1

    .line 1248
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mTargetScanResults:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1, p2}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$$ExternalSyntheticLambda4;-><init>(II)V

    .line 1249
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    sget-object p2, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$$ExternalSyntheticLambda8;->INSTANCE:Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$$ExternalSyntheticLambda8;

    .line 1251
    invoke-static {p2}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 1252
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1253
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isAutoJoinEnabled()Z
    .locals 1

    monitor-enter p0

    .line 534
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mTargetWifiConfig:Landroid/net/wifi/WifiConfiguration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 535
    monitor-exit p0

    return v0

    .line 538
    :cond_0
    :try_start_1
    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->allowAutojoin:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isMetered()Z
    .locals 2

    monitor-enter p0

    .line 264
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->getMeteredChoice()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mTargetWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->meteredHint:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isSaved()Z
    .locals 2

    monitor-enter p0

    .line 270
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mTargetWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->fromWifiNetworkSuggestion:Z

    if-nez v1, :cond_0

    .line 271
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->isEphemeral()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 270
    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isSuggestion()Z
    .locals 1

    monitor-enter p0

    .line 276
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mTargetWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->fromWifiNetworkSuggestion:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isUserShareable()Z
    .locals 1

    monitor-enter p0

    .line 842
    :try_start_0
    iget-boolean v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mIsUserShareable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized onScoreCacheUpdated()V
    .locals 2

    monitor-enter p0

    .line 715
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_0

    .line 716
    iget-object v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    invoke-static {v1, v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/Utils;->getSpeedFromWifiInfo(Landroid/net/wifi/WifiNetworkScoreCache;Landroid/net/wifi/WifiInfo;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mSpeed:I

    goto :goto_0

    .line 719
    :cond_0
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    iget-object v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mTargetScanResults:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/Utils;->getAverageSpeedFromScanResults(Landroid/net/wifi/WifiNetworkScoreCache;Ljava/util/List;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mSpeed:I

    .line 721
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->notifyOnUpdated()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 722
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAutoJoinEnabled(Z)V
    .locals 2

    monitor-enter p0

    .line 548
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mTargetWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->canSetAutoJoinEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 552
    :cond_0
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mDualWifiManager:Lasus/net/vicewifi/WifiViceManager;

    iget-object v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mTargetWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v0, v1, p1}, Lasus/net/vicewifi/WifiViceManager;->allowAutojoin(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 553
    monitor-exit p0

    return-void

    .line 549
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setMeteredChoice(I)V
    .locals 2

    monitor-enter p0

    .line 488
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->canSetMeteredChoice()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 489
    monitor-exit p0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 493
    :try_start_1
    iget-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mTargetWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const/4 v0, 0x0

    iput v0, p1, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 495
    iget-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mTargetWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iput v0, p1, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 497
    iget-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mTargetWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iput v0, p1, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    .line 499
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mDualWifiManager:Lasus/net/vicewifi/WifiViceManager;

    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mTargetWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lasus/net/vicewifi/WifiViceManager;->save(Landroid/net/wifi/WifiConfiguration;Lasus/net/vicewifi/WifiViceManager$ActionListener;)V

    .line 500
    iget-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mTargetWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {p1, v0, v1}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 501
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setPrivacy(I)V
    .locals 2

    monitor-enter p0

    .line 522
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->canSetPrivacy()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 523
    monitor-exit p0

    return-void

    .line 526
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mTargetWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    const/4 p1, 0x3

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 527
    :goto_0
    iput p1, v0, Landroid/net/wifi/WifiConfiguration;->macRandomizationSetting:I

    .line 528
    iget-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mDualWifiManager:Lasus/net/vicewifi/WifiViceManager;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lasus/net/vicewifi/WifiViceManager;->save(Landroid/net/wifi/WifiConfiguration;Lasus/net/vicewifi/WifiViceManager$ActionListener;)V

    .line 529
    iget-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mTargetWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {p1, v0, v1}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 530
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized shouldEditBeforeConnect()Z
    .locals 3

    monitor-enter p0

    .line 629
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 631
    monitor-exit p0

    return v1

    .line 635
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v0

    .line 636
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionStatus()I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x2

    .line 637
    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getDisableReasonCounter(I)I

    move-result v2

    if-gtz v2, :cond_1

    const/16 v2, 0x8

    .line 638
    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getDisableReasonCounter(I)I

    move-result v2

    if-gtz v2, :cond_1

    const/4 v2, 0x5

    .line 640
    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getDisableReasonCounter(I)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 642
    monitor-exit p0

    return v0

    .line 646
    :cond_2
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public signIn(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$SignInCallback;)V
    .locals 1

    .line 417
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->canSignIn()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 420
    iget-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mContext:Landroid/content/Context;

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iget-object p0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mDualWifiManager:Lasus/net/vicewifi/WifiViceManager;

    .line 421
    invoke-virtual {p0}, Lasus/net/vicewifi/WifiViceManager;->getCurrentNetwork()Landroid/net/Network;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/net/ConnectivityManager;->startCaptivePortalApp(Landroid/net/Network;)V

    :cond_0
    return-void
.end method

.method public updateBand()V
    .locals 4

    const/16 v0, 0x960

    const/16 v1, 0x9c4

    .line 1221
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->handleOwnScanResult(II)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1222
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->set24GHz(Z)V

    if-eqz v0, :cond_1

    .line 1225
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_1
    const/16 v0, 0x1324

    const/16 v3, 0x170c

    .line 1227
    invoke-virtual {p0, v0, v3}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->handleOwnScanResult(II)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1228
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    invoke-virtual {p0, v3}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->set5GHz(Z)V

    if-eqz v0, :cond_3

    .line 1231
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_3
    const/16 v0, 0x1725

    const/16 v3, 0x1bd5

    .line 1233
    invoke-virtual {p0, v0, v3}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->handleOwnScanResult(II)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1234
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    invoke-virtual {p0, v1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->set6GHz(Z)V

    if-eqz v0, :cond_5

    .line 1237
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_5
    return-void
.end method

.method declared-synchronized updateConfig(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_0

    .line 728
    :try_start_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    .line 731
    :cond_0
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mKey:Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$StandardDualWifiEntryKey;

    invoke-virtual {v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$StandardDualWifiEntryKey;->getScanResultKey()Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$ScanResultKey;

    move-result-object v0

    .line 732
    invoke-virtual {v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$ScanResultKey;->getSsid()Ljava/lang/String;

    move-result-object v1

    .line 733
    invoke-virtual {v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$ScanResultKey;->getSecurityTypes()Ljava/util/Set;

    move-result-object v0

    .line 734
    iget-object v2, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mMatchingWifiConfigs:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 735
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 736
    iget-object v3, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/wifi/WifiInfo;->sanitizeSsid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 743
    invoke-static {v2}, Lcom/android/settings/dualwifi/dualwifitrackerlib/Utils;->getSecurityTypesFromWifiConfiguration(Landroid/net/wifi/WifiConfiguration;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 744
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 751
    invoke-direct {p0, v4}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->isSecurityTypeSupported(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 752
    iget-object v5, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mMatchingWifiConfigs:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 745
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to update with wrong security! Expected one of: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", Actual: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", Config: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 737
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to update with wrong SSID! Expected: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Actual: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 740
    invoke-static {v1}, Landroid/net/wifi/WifiInfo;->sanitizeSsid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Config: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 756
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->updateSecurityTypes()V

    .line 757
    invoke-direct {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->updateTargetScanResultInfo()V

    .line 758
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->notifyOnUpdated()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 759
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized updateNetworkCapabilities(Landroid/net/NetworkCapabilities;)V
    .locals 0

    monitor-enter p0

    .line 704
    :try_start_0
    invoke-super {p0, p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->updateNetworkCapabilities(Landroid/net/NetworkCapabilities;)V

    .line 707
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->canSignIn()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mShouldAutoOpenCaptivePortal:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 708
    iput-boolean p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mShouldAutoOpenCaptivePortal:Z

    const/4 p1, 0x0

    .line 709
    invoke-virtual {p0, p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->signIn(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$SignInCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 711
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized updateScanResultInfo(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_0

    .line 652
    :try_start_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 654
    :cond_0
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mKey:Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$StandardDualWifiEntryKey;

    invoke-virtual {v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$StandardDualWifiEntryKey;->getScanResultKey()Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$ScanResultKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$ScanResultKey;->getSsid()Ljava/lang/String;

    move-result-object v0

    .line 655
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    .line 656
    iget-object v3, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 657
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to update with wrong SSID! Expected: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", Actual: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", ScanResult: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 663
    :cond_2
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mMatchingScanResults:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 664
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mKey:Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$StandardDualWifiEntryKey;

    invoke-virtual {v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$StandardDualWifiEntryKey;->getScanResultKey()Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$ScanResultKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$ScanResultKey;->getSecurityTypes()Ljava/util/Set;

    move-result-object v0

    .line 665
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    .line 666
    invoke-static {v1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/Utils;->getSecurityTypesFromScanResult(Landroid/net/wifi/ScanResult;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 667
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-direct {p0, v3}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->isSecurityTypeSupported(I)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_1

    .line 670
    :cond_5
    iget-object v4, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mMatchingScanResults:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 671
    iget-object v4, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mMatchingScanResults:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 673
    :cond_6
    iget-object v4, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mMatchingScanResults:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 677
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->updateSecurityTypes()V

    .line 678
    invoke-direct {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->updateTargetScanResultInfo()V

    .line 679
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->notifyOnUpdated()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 680
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized updateSecurityTypes()V
    .locals 5

    monitor-enter p0

    .line 776
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mTargetSecurityTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 777
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_0

    .line 778
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getCurrentSecurityType()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 780
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mTargetSecurityTypes:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getCurrentSecurityType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 784
    :cond_0
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mMatchingWifiConfigs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 785
    iget-object v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mTargetSecurityTypes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mKey:Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$StandardDualWifiEntryKey;

    invoke-virtual {v1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$StandardDualWifiEntryKey;->isTargetingNewNetworks()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    .line 790
    iget-object v2, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mMatchingScanResults:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 791
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 792
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    :cond_2
    if-nez v1, :cond_3

    .line 798
    iget-object v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mTargetSecurityTypes:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 803
    :cond_3
    iget-object v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mTargetSecurityTypes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 804
    iget-object v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mTargetSecurityTypes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 809
    :cond_4
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mTargetSecurityTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 810
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mTargetSecurityTypes:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mKey:Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$StandardDualWifiEntryKey;

    invoke-virtual {v1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$StandardDualWifiEntryKey;->getScanResultKey()Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$ScanResultKey;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$ScanResultKey;->getSecurityTypes()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 815
    :cond_5
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mMatchingWifiConfigs:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mTargetSecurityTypes:Ljava/util/List;

    .line 816
    invoke-static {v1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/Utils;->getSingleSecurityTypeFromMultipleSecurityTypes(Ljava/util/List;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 815
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    iput-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mTargetWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 819
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 820
    iget-object v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mTargetSecurityTypes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 821
    iget-object v3, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mMatchingScanResults:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 822
    iget-object v3, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mMatchingScanResults:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 825
    :cond_7
    iget-object v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mTargetScanResults:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 826
    iget-object v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->mTargetScanResults:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 827
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

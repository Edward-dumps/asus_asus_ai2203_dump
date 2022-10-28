.class public Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardNetworkDetailsTracker;
.super Lcom/android/settings/dualwifi/dualwifitrackerlib/NetworkDetailsTracker;
.source "StandardNetworkDetailsTracker.java"


# instance fields
.field private final mChosenEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;

.field private mCurrentNetworkInfo:Landroid/net/NetworkInfo;

.field private final mIsNetworkRequest:Z

.field private final mKey:Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$StandardDualWifiEntryKey;


# direct methods
.method public static synthetic $r8$lambda$-_hgEcKbmQClu-8zqgimMjNxag8(Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardNetworkDetailsTracker;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardNetworkDetailsTracker;->configMatches(Landroid/net/wifi/WifiConfiguration;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$EjYxL4bde3cFoA_HoRb8QsqQIWc(Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardNetworkDetailsTracker;Landroid/net/wifi/ScanResult;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardNetworkDetailsTracker;->lambda$cacheNewScanResults$0(Landroid/net/wifi/ScanResult;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroidx/lifecycle/Lifecycle;Landroid/content/Context;Lasus/net/vicewifi/WifiViceManager;Landroid/net/ConnectivityManager;Landroid/net/NetworkScoreManager;Landroid/os/Handler;Landroid/os/Handler;Ljava/time/Clock;JJLjava/lang/String;)V
    .locals 15

    move-object v14, p0

    const-string v13, "StandardNetworkDetailsTracker"

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-wide/from16 v9, p9

    move-wide/from16 v11, p11

    .line 52
    invoke-direct/range {v0 .. v13}, Lcom/android/settings/dualwifi/dualwifitrackerlib/NetworkDetailsTracker;-><init>(Landroidx/lifecycle/Lifecycle;Landroid/content/Context;Lasus/net/vicewifi/WifiViceManager;Landroid/net/ConnectivityManager;Landroid/net/NetworkScoreManager;Landroid/os/Handler;Landroid/os/Handler;Ljava/time/Clock;JJLjava/lang/String;)V

    .line 54
    new-instance v0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$StandardDualWifiEntryKey;

    move-object/from16 v1, p13

    invoke-direct {v0, v1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$StandardDualWifiEntryKey;-><init>(Ljava/lang/String;)V

    iput-object v0, v14, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardNetworkDetailsTracker;->mKey:Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$StandardDualWifiEntryKey;

    .line 55
    invoke-virtual {v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$StandardDualWifiEntryKey;->isNetworkRequest()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 56
    iput-boolean v1, v14, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardNetworkDetailsTracker;->mIsNetworkRequest:Z

    .line 57
    new-instance v1, Lcom/android/settings/dualwifi/dualwifitrackerlib/NetworkRequestEntry;

    iget-object v2, v14, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mContext:Landroid/content/Context;

    iget-object v3, v14, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mMainHandler:Landroid/os/Handler;

    iget-object v4, v14, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mDualWifiManager:Lasus/net/vicewifi/WifiViceManager;

    iget-object v5, v14, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mWifiNetworkScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    const/4 v6, 0x0

    move-object/from16 p1, v1

    move-object/from16 p2, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v0

    move-object/from16 p5, v4

    move-object/from16 p6, v5

    move/from16 p7, v6

    invoke-direct/range {p1 .. p7}, Lcom/android/settings/dualwifi/dualwifitrackerlib/NetworkRequestEntry;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$StandardDualWifiEntryKey;Lasus/net/vicewifi/WifiViceManager;Landroid/net/wifi/WifiNetworkScoreCache;Z)V

    iput-object v1, v14, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardNetworkDetailsTracker;->mChosenEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 60
    iput-boolean v1, v14, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardNetworkDetailsTracker;->mIsNetworkRequest:Z

    .line 61
    new-instance v1, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;

    iget-object v2, v14, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mContext:Landroid/content/Context;

    iget-object v3, v14, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mMainHandler:Landroid/os/Handler;

    iget-object v4, v14, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mDualWifiManager:Lasus/net/vicewifi/WifiViceManager;

    iget-object v5, v14, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mWifiNetworkScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    const/4 v6, 0x0

    move-object/from16 p1, v1

    move-object/from16 p2, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v0

    move-object/from16 p5, v4

    move-object/from16 p6, v5

    move/from16 p7, v6

    invoke-direct/range {p1 .. p7}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$StandardDualWifiEntryKey;Lasus/net/vicewifi/WifiViceManager;Landroid/net/wifi/WifiNetworkScoreCache;Z)V

    iput-object v1, v14, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardNetworkDetailsTracker;->mChosenEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;

    .line 67
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardNetworkDetailsTracker;->updateStartInfo()V

    return-void
.end method

.method private cacheNewScanResults()V
    .locals 3

    .line 161
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mScanResultUpdater:Lcom/android/settings/dualwifi/dualwifitrackerlib/ScanResultUpdater;

    iget-object v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mDualWifiManager:Lasus/net/vicewifi/WifiViceManager;

    invoke-virtual {v1}, Lasus/net/vicewifi/WifiViceManager;->getScanResults()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardNetworkDetailsTracker$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardNetworkDetailsTracker$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardNetworkDetailsTracker;)V

    .line 162
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 163
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 161
    invoke-virtual {v0, p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/ScanResultUpdater;->update(Ljava/util/List;)V

    return-void
.end method

.method private conditionallyUpdateConfig()V
    .locals 3

    .line 151
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardNetworkDetailsTracker;->mChosenEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;

    iget-object v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mDualWifiManager:Lasus/net/vicewifi/WifiViceManager;

    .line 152
    invoke-virtual {v1}, Lasus/net/vicewifi/WifiViceManager;->getPrivilegedConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardNetworkDetailsTracker$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardNetworkDetailsTracker$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardNetworkDetailsTracker;)V

    .line 153
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 154
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 151
    invoke-virtual {v0, p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->updateConfig(Ljava/util/List;)V

    return-void
.end method

.method private conditionallyUpdateScanResults(Z)V
    .locals 4

    .line 130
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mDualWifiManager:Lasus/net/vicewifi/WifiViceManager;

    invoke-virtual {v0}, Lasus/net/vicewifi/WifiViceManager;->getWifiState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 131
    iget-object p0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardNetworkDetailsTracker;->mChosenEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->updateScanResultInfo(Ljava/util/List;)V

    return-void

    .line 135
    :cond_0
    iget-wide v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mMaxScanAgeMillis:J

    if-eqz p1, :cond_1

    .line 137
    invoke-direct {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardNetworkDetailsTracker;->cacheNewScanResults()V

    goto :goto_0

    .line 141
    :cond_1
    iget-wide v2, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mScanIntervalMillis:J

    add-long/2addr v0, v2

    .line 143
    :goto_0
    iget-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardNetworkDetailsTracker;->mChosenEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;

    iget-object p0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mScanResultUpdater:Lcom/android/settings/dualwifi/dualwifitrackerlib/ScanResultUpdater;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/ScanResultUpdater;->getScanResults(J)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->updateScanResultInfo(Ljava/util/List;)V

    return-void
.end method

.method private configMatches(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 2

    .line 167
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 170
    :cond_0
    iget-object p0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardNetworkDetailsTracker;->mKey:Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$StandardDualWifiEntryKey;

    new-instance v0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$StandardDualWifiEntryKey;

    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$StandardDualWifiEntryKey;->isTargetingNewNetworks()Z

    move-result v1

    invoke-direct {v0, p1, v1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$StandardDualWifiEntryKey;-><init>(Landroid/net/wifi/WifiConfiguration;Z)V

    invoke-virtual {p0, v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$StandardDualWifiEntryKey;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$cacheNewScanResults$0(Landroid/net/wifi/ScanResult;)Z
    .locals 1

    .line 162
    new-instance v0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$ScanResultKey;

    invoke-direct {v0, p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$ScanResultKey;-><init>(Landroid/net/wifi/ScanResult;)V

    iget-object p0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardNetworkDetailsTracker;->mKey:Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$StandardDualWifiEntryKey;

    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$StandardDualWifiEntryKey;->getScanResultKey()Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$ScanResultKey;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$ScanResultKey;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private updateStartInfo()V
    .locals 5

    const/4 v0, 0x1

    .line 112
    invoke-direct {p0, v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardNetworkDetailsTracker;->conditionallyUpdateScanResults(Z)V

    .line 113
    invoke-direct {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardNetworkDetailsTracker;->conditionallyUpdateConfig()V

    .line 114
    iget-object v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mDualWifiManager:Lasus/net/vicewifi/WifiViceManager;

    invoke-virtual {v1}, Lasus/net/vicewifi/WifiViceManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 115
    iget-object v2, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mDualWifiManager:Lasus/net/vicewifi/WifiViceManager;

    invoke-virtual {v2}, Lasus/net/vicewifi/WifiViceManager;->getCurrentNetwork()Landroid/net/Network;

    move-result-object v2

    .line 116
    iget-object v3, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v3, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardNetworkDetailsTracker;->mCurrentNetworkInfo:Landroid/net/NetworkInfo;

    .line 117
    iget-object v4, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardNetworkDetailsTracker;->mChosenEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;

    invoke-virtual {v4, v1, v3}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->updateConnectionInfo(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)V

    .line 118
    iget-object v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 119
    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v1

    .line 118
    invoke-virtual {p0, v1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/NetworkDetailsTracker;->handleNetworkCapabilitiesChanged(Landroid/net/NetworkCapabilities;)V

    .line 120
    iget-object v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/NetworkDetailsTracker;->handleLinkPropertiesChanged(Landroid/net/LinkProperties;)V

    .line 121
    iget-object v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardNetworkDetailsTracker;->mChosenEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;

    iget-boolean v2, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mIsDualWifiDefaultRoute:Z

    invoke-virtual {v1, v2}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->setIsDefaultNetwork(Z)V

    .line 122
    iget-object v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardNetworkDetailsTracker;->mChosenEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;

    iget-boolean v2, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mIsDualWifiValidated:Z

    if-eqz v2, :cond_0

    iget-boolean p0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mIsCellDefaultRoute:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->setIsLowQuality(Z)V

    return-void
.end method


# virtual methods
.method public getDualWifiEntry()Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardNetworkDetailsTracker;->mChosenEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;

    return-object p0
.end method

.method protected handleConfiguredNetworksChangedAction(Landroid/content/Intent;)V
    .locals 1

    const-string v0, "Intent cannot be null!"

    .line 100
    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    invoke-direct {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardNetworkDetailsTracker;->conditionallyUpdateConfig()V

    return-void
.end method

.method protected handleNetworkScoreCacheUpdated()V
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardNetworkDetailsTracker;->mChosenEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;

    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->onScoreCacheUpdated()V

    return-void
.end method

.method protected handleOnStart()V
    .locals 0

    .line 80
    invoke-direct {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardNetworkDetailsTracker;->updateStartInfo()V

    return-void
.end method

.method protected handleScanResultsAvailableAction(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "Intent cannot be null!"

    .line 92
    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "resultsUpdated"

    const/4 v1, 0x1

    .line 94
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 93
    invoke-direct {p0, p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardNetworkDetailsTracker;->conditionallyUpdateScanResults(Z)V

    return-void
.end method

.method protected handleWifiStateChangedAction()V
    .locals 1

    const/4 v0, 0x1

    .line 86
    invoke-direct {p0, v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardNetworkDetailsTracker;->conditionallyUpdateScanResults(Z)V

    return-void
.end method

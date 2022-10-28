.class public Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointNetworkDetailsTracker;
.super Lcom/android/settings/dualwifi/dualwifitrackerlib/NetworkDetailsTracker;
.source "PasspointNetworkDetailsTracker.java"


# instance fields
.field private final mChosenEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;

.field private mCurrentNetworkInfo:Landroid/net/NetworkInfo;

.field private mCurrentWifiConfig:Landroid/net/wifi/WifiConfiguration;


# direct methods
.method public static synthetic $r8$lambda$0dk8OBHja22_PyPDCRUzP2BlMmo(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointNetworkDetailsTracker;->lambda$new$0(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroidx/lifecycle/Lifecycle;Landroid/content/Context;Lasus/net/vicewifi/WifiViceManager;Landroid/net/ConnectivityManager;Landroid/net/NetworkScoreManager;Landroid/os/Handler;Landroid/os/Handler;Ljava/time/Clock;JJLjava/lang/String;)V
    .locals 15

    move-object v14, p0

    const-string v13, "PasspointNetworkDetailsTracker"

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

    .line 57
    invoke-direct/range {v0 .. v13}, Lcom/android/settings/dualwifi/dualwifitrackerlib/NetworkDetailsTracker;-><init>(Landroidx/lifecycle/Lifecycle;Landroid/content/Context;Lasus/net/vicewifi/WifiViceManager;Landroid/net/ConnectivityManager;Landroid/net/NetworkScoreManager;Landroid/os/Handler;Landroid/os/Handler;Ljava/time/Clock;JJLjava/lang/String;)V

    .line 71
    iget-object v0, v14, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mDualWifiManager:Lasus/net/vicewifi/WifiViceManager;

    .line 72
    invoke-virtual {v0}, Lasus/net/vicewifi/WifiViceManager;->getPrivilegedConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    .line 73
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointNetworkDetailsTracker$$ExternalSyntheticLambda0;

    move-object/from16 v2, p13

    invoke-direct {v1, v2}, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointNetworkDetailsTracker$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 77
    invoke-interface {v0}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    move-result-object v0

    .line 79
    new-instance v1, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;

    iget-object v2, v14, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mContext:Landroid/content/Context;

    iget-object v3, v14, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mMainHandler:Landroid/os/Handler;

    .line 80
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

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

    invoke-direct/range {p1 .. p7}, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/net/wifi/WifiConfiguration;Lasus/net/vicewifi/WifiViceManager;Landroid/net/wifi/WifiNetworkScoreCache;Z)V

    iput-object v1, v14, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointNetworkDetailsTracker;->mChosenEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;

    return-void
.end method

.method private cacheNewScanResults()V
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mScanResultUpdater:Lcom/android/settings/dualwifi/dualwifitrackerlib/ScanResultUpdater;

    iget-object p0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mDualWifiManager:Lasus/net/vicewifi/WifiViceManager;

    invoke-virtual {p0}, Lasus/net/vicewifi/WifiViceManager;->getScanResults()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/ScanResultUpdater;->update(Ljava/util/List;)V

    return-void
.end method

.method private conditionallyUpdateConfig()V
    .locals 0

    return-void
.end method

.method private conditionallyUpdateScanResults(Z)V
    .locals 4

    .line 209
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mDualWifiManager:Lasus/net/vicewifi/WifiViceManager;

    invoke-virtual {v0}, Lasus/net/vicewifi/WifiViceManager;->getWifiState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 210
    iget-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointNetworkDetailsTracker;->mChosenEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;

    iget-object p0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointNetworkDetailsTracker;->mCurrentWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0, v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->updateScanResultInfo(Landroid/net/wifi/WifiConfiguration;Ljava/util/List;Ljava/util/List;)V

    return-void

    .line 216
    :cond_0
    iget-wide v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mMaxScanAgeMillis:J

    if-eqz p1, :cond_1

    .line 218
    invoke-direct {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointNetworkDetailsTracker;->cacheNewScanResults()V

    goto :goto_0

    .line 222
    :cond_1
    iget-wide v2, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mScanIntervalMillis:J

    add-long/2addr v0, v2

    .line 225
    :goto_0
    iget-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mScanResultUpdater:Lcom/android/settings/dualwifi/dualwifitrackerlib/ScanResultUpdater;

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/ScanResultUpdater;->getScanResults(J)Ljava/util/List;

    move-result-object p1

    .line 226
    invoke-direct {p0, p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointNetworkDetailsTracker;->updatePasspointDualWifiEntryScans(Ljava/util/List;)V

    .line 227
    invoke-direct {p0, p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointNetworkDetailsTracker;->updateOsuDualWifiEntryScans(Ljava/util/List;)V

    return-void
.end method

.method private static synthetic lambda$new$0(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 1

    .line 74
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->uniqueIdToPasspointDualWifiEntryKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 75
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private updateOsuDualWifiEntryScans(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    const-string p0, "Scan Result list should not be null!"

    .line 169
    invoke-static {p1, p0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private updatePasspointDualWifiEntryScans(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    const-string p0, "Scan Result list should not be null!"

    .line 144
    invoke-static {p1, p0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private updateStartInfo()V
    .locals 5

    const/4 v0, 0x1

    .line 129
    invoke-direct {p0, v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointNetworkDetailsTracker;->conditionallyUpdateScanResults(Z)V

    .line 130
    invoke-direct {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointNetworkDetailsTracker;->conditionallyUpdateConfig()V

    .line 131
    iget-object v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mDualWifiManager:Lasus/net/vicewifi/WifiViceManager;

    invoke-virtual {v1}, Lasus/net/vicewifi/WifiViceManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 132
    iget-object v2, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mDualWifiManager:Lasus/net/vicewifi/WifiViceManager;

    invoke-virtual {v2}, Lasus/net/vicewifi/WifiViceManager;->getCurrentNetwork()Landroid/net/Network;

    move-result-object v2

    .line 133
    iget-object v3, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v3, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointNetworkDetailsTracker;->mCurrentNetworkInfo:Landroid/net/NetworkInfo;

    .line 134
    iget-object v4, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointNetworkDetailsTracker;->mChosenEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;

    invoke-virtual {v4, v1, v3}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->updateConnectionInfo(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)V

    .line 135
    iget-object v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 136
    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v1

    .line 135
    invoke-virtual {p0, v1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/NetworkDetailsTracker;->handleNetworkCapabilitiesChanged(Landroid/net/NetworkCapabilities;)V

    .line 137
    iget-object v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/NetworkDetailsTracker;->handleLinkPropertiesChanged(Landroid/net/LinkProperties;)V

    .line 138
    iget-object v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointNetworkDetailsTracker;->mChosenEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;

    iget-boolean v2, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mIsDualWifiDefaultRoute:Z

    invoke-virtual {v1, v2}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->setIsDefaultNetwork(Z)V

    .line 139
    iget-object v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointNetworkDetailsTracker;->mChosenEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;

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

    .line 97
    iget-object p0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointNetworkDetailsTracker;->mChosenEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;

    return-object p0
.end method

.method protected handleConfiguredNetworksChangedAction(Landroid/content/Intent;)V
    .locals 1

    const-string v0, "Intent cannot be null!"

    .line 123
    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    invoke-direct {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointNetworkDetailsTracker;->conditionallyUpdateConfig()V

    return-void
.end method

.method protected handleOnStart()V
    .locals 0

    .line 103
    invoke-direct {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointNetworkDetailsTracker;->updateStartInfo()V

    return-void
.end method

.method protected handleScanResultsAvailableAction(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "Intent cannot be null!"

    .line 115
    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "resultsUpdated"

    const/4 v1, 0x1

    .line 117
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 116
    invoke-direct {p0, p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointNetworkDetailsTracker;->conditionallyUpdateScanResults(Z)V

    return-void
.end method

.method protected handleWifiStateChangedAction()V
    .locals 1

    const/4 v0, 0x1

    .line 109
    invoke-direct {p0, v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointNetworkDetailsTracker;->conditionallyUpdateScanResults(Z)V

    return-void
.end method

.class public abstract Lcom/android/settings/dualwifi/dualwifitrackerlib/NetworkDetailsTracker;
.super Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;
.source "NetworkDetailsTracker.java"


# instance fields
.field protected mCurrentNetworkInfo:Landroid/net/NetworkInfo;


# direct methods
.method constructor <init>(Landroidx/lifecycle/Lifecycle;Landroid/content/Context;Lasus/net/vicewifi/WifiViceManager;Landroid/net/ConnectivityManager;Landroid/net/NetworkScoreManager;Landroid/os/Handler;Landroid/os/Handler;Ljava/time/Clock;JJLjava/lang/String;)V
    .locals 15

    const/4 v13, 0x0

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

    move-object/from16 v14, p13

    .line 89
    invoke-direct/range {v0 .. v14}, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;-><init>(Landroidx/lifecycle/Lifecycle;Landroid/content/Context;Lasus/net/vicewifi/WifiViceManager;Landroid/net/ConnectivityManager;Landroid/net/NetworkScoreManager;Landroid/os/Handler;Landroid/os/Handler;Ljava/time/Clock;JJLcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$BaseDualWifiTrackerCallback;Ljava/lang/String;)V

    return-void
.end method

.method public static createNetworkDetailsTracker(Landroidx/lifecycle/Lifecycle;Landroid/content/Context;Lasus/net/vicewifi/WifiViceManager;Landroid/net/ConnectivityManager;Landroid/net/NetworkScoreManager;Landroid/os/Handler;Landroid/os/Handler;Ljava/time/Clock;JJLjava/lang/String;)Lcom/android/settings/dualwifi/dualwifitrackerlib/NetworkDetailsTracker;
    .locals 15

    move-object/from16 v13, p12

    const-string v0, "StandardDualWifiEntry:"

    .line 59
    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    new-instance v14, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardNetworkDetailsTracker;

    move-object v0, v14

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-wide/from16 v9, p8

    move-wide/from16 v11, p10

    move-object/from16 v13, p12

    invoke-direct/range {v0 .. v13}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardNetworkDetailsTracker;-><init>(Landroidx/lifecycle/Lifecycle;Landroid/content/Context;Lasus/net/vicewifi/WifiViceManager;Landroid/net/ConnectivityManager;Landroid/net/NetworkScoreManager;Landroid/os/Handler;Landroid/os/Handler;Ljava/time/Clock;JJLjava/lang/String;)V

    return-object v14

    :cond_0
    const-string v0, "PasspointDualWifiEntry:"

    .line 63
    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    new-instance v14, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointNetworkDetailsTracker;

    move-object v0, v14

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-wide/from16 v9, p8

    move-wide/from16 v11, p10

    move-object/from16 v13, p12

    invoke-direct/range {v0 .. v13}, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointNetworkDetailsTracker;-><init>(Landroidx/lifecycle/Lifecycle;Landroid/content/Context;Lasus/net/vicewifi/WifiViceManager;Landroid/net/ConnectivityManager;Landroid/net/NetworkScoreManager;Landroid/os/Handler;Landroid/os/Handler;Ljava/time/Clock;JJLjava/lang/String;)V

    return-object v14

    .line 68
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Key does not contain valid key prefix!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public abstract getDualWifiEntry()Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;
.end method

.method protected handleDefaultRouteChanged()V
    .locals 3

    .line 130
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/NetworkDetailsTracker;->getDualWifiEntry()Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    move-result-object v0

    .line 131
    invoke-virtual {v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getConnectedState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 132
    iget-boolean v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mIsDualWifiDefaultRoute:Z

    invoke-virtual {v0, v1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->setIsDefaultNetwork(Z)V

    .line 133
    iget-boolean v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mIsDualWifiValidated:Z

    if-eqz v1, :cond_0

    iget-boolean p0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mIsCellDefaultRoute:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->setIsLowQuality(Z)V

    :cond_1
    return-void
.end method

.method protected handleLinkPropertiesChanged(Landroid/net/LinkProperties;)V
    .locals 2

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/NetworkDetailsTracker;->getDualWifiEntry()Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    move-result-object p0

    .line 112
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getConnectedState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 113
    invoke-virtual {p0, p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->updateLinkProperties(Landroid/net/LinkProperties;)V

    :cond_0
    return-void
.end method

.method protected handleNetworkCapabilitiesChanged(Landroid/net/NetworkCapabilities;)V
    .locals 3

    .line 120
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/NetworkDetailsTracker;->getDualWifiEntry()Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    move-result-object v0

    .line 121
    invoke-virtual {v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getConnectedState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 122
    invoke-virtual {v0, p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->updateNetworkCapabilities(Landroid/net/NetworkCapabilities;)V

    .line 123
    iget-boolean p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mIsDualWifiValidated:Z

    if-eqz p1, :cond_0

    iget-boolean p0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mIsCellDefaultRoute:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->setIsLowQuality(Z)V

    :cond_1
    return-void
.end method

.method protected handleNetworkStateChangedAction(Landroid/content/Intent;)V
    .locals 1

    const-string v0, "Intent cannot be null!"

    .line 97
    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "networkInfo"

    .line 98
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkInfo;

    iput-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/NetworkDetailsTracker;->mCurrentNetworkInfo:Landroid/net/NetworkInfo;

    .line 99
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/NetworkDetailsTracker;->getDualWifiEntry()Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mDualWifiManager:Lasus/net/vicewifi/WifiViceManager;

    invoke-virtual {v0}, Lasus/net/vicewifi/WifiViceManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/NetworkDetailsTracker;->mCurrentNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {p1, v0, p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->updateConnectionInfo(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)V

    return-void
.end method

.method protected handleRssiChangedAction()V
    .locals 2

    .line 105
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/NetworkDetailsTracker;->getDualWifiEntry()Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mDualWifiManager:Lasus/net/vicewifi/WifiViceManager;

    invoke-virtual {v1}, Lasus/net/vicewifi/WifiViceManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/NetworkDetailsTracker;->mCurrentNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v1, p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->updateConnectionInfo(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)V

    return-void
.end method

.class Lcom/android/settings/dualwifi/dualwifitrackerlib/OsuDualWifiEntry;
.super Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;
.source "OsuDualWifiEntry.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mIsAlreadyProvisioned:Z

.field private final mKey:Ljava/lang/String;

.field private final mOsuProvider:Landroid/net/wifi/hotspot2/OsuProvider;

.field private mOsuStatusString:Ljava/lang/String;

.field private mSsid:Ljava/lang/String;


# virtual methods
.method public declared-synchronized canConnect()Z
    .locals 2

    monitor-enter p0

    .line 118
    :try_start_0
    iget v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mLevel:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getConnectedState()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 118
    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized connect(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectCallback;)V
    .locals 0

    monitor-enter p0

    .line 124
    :try_start_0
    iput-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mConnectCallback:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected connectionInfoMatches(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)Z
    .locals 0

    .line 162
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->isOsuAp()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 163
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getPasspointProviderFriendlyName()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/OsuDualWifiEntry;->mOsuProvider:Landroid/net/wifi/hotspot2/OsuProvider;

    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/OsuProvider;->getFriendlyName()Ljava/lang/String;

    move-result-object p0

    .line 162
    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/OsuDualWifiEntry;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method public getMacAddress()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected getScanResultDescription()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public declared-synchronized getSsid()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/OsuDualWifiEntry;->mSsid:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSummary(Z)Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/OsuDualWifiEntry;->mOsuStatusString:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 95
    monitor-exit p0

    return-object v0

    .line 96
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/OsuDualWifiEntry;->isAlreadyProvisioned()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 97
    iget-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/OsuDualWifiEntry;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/wifitrackerlib/R$string;->wifitrackerlib_wifi_passpoint_expired:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 98
    :cond_1
    iget-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/OsuDualWifiEntry;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/wifitrackerlib/R$string;->wifitrackerlib_tap_to_renew_subscription_and_connect:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    :goto_0
    monitor-exit p0

    return-object p1

    .line 101
    :cond_2
    :try_start_2
    iget-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/OsuDualWifiEntry;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/wifitrackerlib/R$string;->wifitrackerlib_tap_to_sign_up:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getTitle()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/OsuDualWifiEntry;->mOsuProvider:Landroid/net/wifi/hotspot2/OsuProvider;

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/OsuProvider;->getFriendlyName()Ljava/lang/String;

    move-result-object v0

    .line 78
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 79
    monitor-exit p0

    return-object v0

    .line 81
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/OsuDualWifiEntry;->mSsid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/OsuDualWifiEntry;->mSsid:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 84
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/OsuDualWifiEntry;->mOsuProvider:Landroid/net/wifi/hotspot2/OsuProvider;

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/OsuProvider;->getServerUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 86
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_2
    :try_start_3
    const-string v0, ""
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 88
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isAlreadyProvisioned()Z
    .locals 1

    monitor-enter p0

    .line 177
    :try_start_0
    iget-boolean v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/OsuDualWifiEntry;->mIsAlreadyProvisioned:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

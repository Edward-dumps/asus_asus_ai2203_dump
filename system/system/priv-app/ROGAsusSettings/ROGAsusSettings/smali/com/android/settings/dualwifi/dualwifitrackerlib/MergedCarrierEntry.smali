.class public Lcom/android/settings/dualwifi/dualwifitrackerlib/MergedCarrierEntry;
.super Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;
.source "MergedCarrierEntry.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field mIsCellDefaultRoute:Z

.field private final mKey:Ljava/lang/String;

.field private final mSubscriptionId:I


# direct methods
.method public static synthetic $r8$lambda$dBWYbeSEEVhylRPfZbO1O2ukY-Q(Lcom/android/settings/dualwifi/dualwifitrackerlib/MergedCarrierEntry;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/MergedCarrierEntry;->lambda$disconnect$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$qK_xwkYAviERVBNIxSRENUn0cnc(Lcom/android/settings/dualwifi/dualwifitrackerlib/MergedCarrierEntry;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/MergedCarrierEntry;->lambda$connect$0()V

    return-void
.end method

.method constructor <init>(Landroid/os/Handler;Lasus/net/vicewifi/WifiViceManager;Landroid/net/wifi/WifiNetworkScoreCache;ZLandroid/content/Context;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;-><init>(Landroid/os/Handler;Lasus/net/vicewifi/WifiViceManager;Landroid/net/wifi/WifiNetworkScoreCache;Z)V

    .line 44
    iput-object p5, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/MergedCarrierEntry;->mContext:Landroid/content/Context;

    .line 45
    iput p6, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/MergedCarrierEntry;->mSubscriptionId:I

    .line 46
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "MergedCarrierEntry:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/MergedCarrierEntry;->mKey:Ljava/lang/String;

    return-void
.end method

.method private synthetic lambda$connect$0()V
    .locals 1

    .line 100
    iget-object p0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mConnectCallback:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectCallback;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 102
    invoke-interface {p0, v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectCallback;->onConnectResult(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$disconnect$1()V
    .locals 1

    .line 120
    iget-object p0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mDisconnectCallback:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$DisconnectCallback;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 122
    invoke-interface {p0, v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$DisconnectCallback;->onDisconnectResult(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized canConnect()Z
    .locals 1

    monitor-enter p0

    .line 89
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getConnectedState()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/MergedCarrierEntry;->mIsCellDefaultRoute:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

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

.method public canDisconnect()Z
    .locals 1

    .line 110
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

.method public declared-synchronized connect(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectCallback;)V
    .locals 2

    monitor-enter p0

    .line 94
    :try_start_0
    iput-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mConnectCallback:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectCallback;

    .line 96
    iget-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/MergedCarrierEntry;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/wifitrackerlib/R$string;->wifitrackerlib_wifi_wont_autoconnect_for_now:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 97
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 98
    iget-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mConnectCallback:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectCallback;

    if-eqz p1, :cond_0

    .line 99
    iget-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mCallbackHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/dualwifi/dualwifitrackerlib/MergedCarrierEntry$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/MergedCarrierEntry$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/dualwifi/dualwifitrackerlib/MergedCarrierEntry;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected connectionInfoMatches(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)Z
    .locals 0

    .line 132
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->isCarrierMerged()Z

    move-result p2

    if-eqz p2, :cond_0

    iget p0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/MergedCarrierEntry;->mSubscriptionId:I

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSubscriptionId()I

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public declared-synchronized disconnect(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$DisconnectCallback;)V
    .locals 1

    monitor-enter p0

    .line 115
    :try_start_0
    iput-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mDisconnectCallback:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$DisconnectCallback;

    .line 117
    iget-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mDualWifiManager:Lasus/net/vicewifi/WifiViceManager;

    invoke-virtual {p1}, Lasus/net/vicewifi/WifiViceManager;->startScan()Z

    .line 118
    iget-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mDisconnectCallback:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$DisconnectCallback;

    if-eqz p1, :cond_0

    .line 119
    iget-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mCallbackHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/dualwifi/dualwifitrackerlib/MergedCarrierEntry$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/MergedCarrierEntry$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/dualwifi/dualwifitrackerlib/MergedCarrierEntry;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
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

    .line 51
    iget-object p0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/MergedCarrierEntry;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method public declared-synchronized getMacAddress()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 79
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "02:00:00:00:00:00"

    .line 80
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 81
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 84
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSsid()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/wifi/WifiInfo;->sanitizeSsid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 72
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getSubscriptionId()I
    .locals 0

    .line 151
    iget p0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/MergedCarrierEntry;->mSubscriptionId:I

    return p0
.end method

.method public getSummary(Z)Ljava/lang/String;
    .locals 3

    .line 56
    new-instance v0, Ljava/util/StringJoiner;

    iget-object v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/MergedCarrierEntry;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/wifitrackerlib/R$string;->wifitrackerlib_summary_separator:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    if-nez p1, :cond_0

    .line 59
    invoke-static {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/Utils;->getVerboseLoggingDescription(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;)Ljava/lang/String;

    move-result-object p0

    .line 60
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 61
    invoke-virtual {v0, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 64
    :cond_0
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method declared-synchronized updateIsCellDefaultRoute(Z)V
    .locals 0

    monitor-enter p0

    .line 155
    :try_start_0
    iput-boolean p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/MergedCarrierEntry;->mIsCellDefaultRoute:Z

    .line 156
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->notifyOnUpdated()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

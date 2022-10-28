.class public Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;
.super Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;
.source "PasspointDualWifiEntry.java"

# interfaces
.implements Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$DualWifiEntryCallback;


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mCurrentHomeScanResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private final mCurrentRoamingScanResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private final mFqdn:Ljava/lang/String;

.field private final mFriendlyName:Ljava/lang/String;

.field private mIsRoaming:Z

.field private final mKey:Ljava/lang/String;

.field private mMeteredOverride:I

.field private mOsuDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/OsuDualWifiEntry;

.field private mPasspointConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

.field private mShouldAutoOpenCaptivePortal:Z

.field protected mSubscriptionExpirationTimeInMillis:J

.field private mTargetSecurityTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;


# direct methods
.method public static synthetic $r8$lambda$HRWDdiTm8YMliq9UZwF0AtkkwFM(Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$DisconnectCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->lambda$disconnect$0(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$DisconnectCallback;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/net/wifi/WifiConfiguration;Lasus/net/vicewifi/WifiViceManager;Landroid/net/wifi/WifiNetworkScoreCache;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 117
    invoke-direct {p0, p2, p4, p5, p6}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;-><init>(Landroid/os/Handler;Lasus/net/vicewifi/WifiViceManager;Landroid/net/wifi/WifiNetworkScoreCache;Z)V

    .line 58
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->mCurrentHomeScanResults:Ljava/util/List;

    .line 59
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->mCurrentRoamingScanResults:Ljava/util/List;

    const/16 p2, 0xb

    .line 69
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/16 p4, 0xc

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-static {p2, p4}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->mTargetSecurityTypes:Ljava/util/List;

    const/4 p2, 0x0

    .line 71
    iput-boolean p2, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->mIsRoaming:Z

    .line 73
    iput-boolean p2, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->mShouldAutoOpenCaptivePortal:Z

    .line 82
    iput p2, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->mMeteredOverride:I

    const-string p2, "Cannot construct with null WifiConfiguration!"

    .line 119
    invoke-static {p3, p2}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    invoke-virtual {p3}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 124
    iput-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->mContext:Landroid/content/Context;

    .line 125
    iput-object p3, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 126
    invoke-virtual {p3}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->uniqueIdToPasspointDualWifiEntryKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->mKey:Ljava/lang/String;

    .line 127
    iget-object p1, p3, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->mFqdn:Ljava/lang/String;

    const-string p2, "Cannot construct with null WifiConfiguration FQDN!"

    .line 128
    invoke-static {p1, p2}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object p1, p1, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->mFriendlyName:Ljava/lang/String;

    return-void

    .line 121
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Given WifiConfiguration is not for Passpoint!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/net/wifi/hotspot2/PasspointConfiguration;Lasus/net/vicewifi/WifiViceManager;Landroid/net/wifi/WifiNetworkScoreCache;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 92
    invoke-direct {p0, p2, p4, p5, p6}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;-><init>(Landroid/os/Handler;Lasus/net/vicewifi/WifiViceManager;Landroid/net/wifi/WifiNetworkScoreCache;Z)V

    .line 58
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->mCurrentHomeScanResults:Ljava/util/List;

    .line 59
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->mCurrentRoamingScanResults:Ljava/util/List;

    const/16 p2, 0xb

    .line 69
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/16 p4, 0xc

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-static {p2, p4}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->mTargetSecurityTypes:Ljava/util/List;

    const/4 p2, 0x0

    .line 71
    iput-boolean p2, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->mIsRoaming:Z

    .line 73
    iput-boolean p2, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->mShouldAutoOpenCaptivePortal:Z

    .line 82
    iput p2, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->mMeteredOverride:I

    const-string p2, "Cannot construct with null PasspointConfiguration!"

    .line 94
    invoke-static {p3, p2}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iput-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->mContext:Landroid/content/Context;

    .line 97
    iput-object p3, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->mPasspointConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    .line 98
    invoke-virtual {p3}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->uniqueIdToPasspointDualWifiEntryKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->mKey:Ljava/lang/String;

    .line 99
    invoke-virtual {p3}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getHomeSp()Landroid/net/wifi/hotspot2/pps/HomeSp;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/pps/HomeSp;->getFqdn()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->mFqdn:Ljava/lang/String;

    const-string p2, "Cannot construct with null PasspointConfiguration FQDN!"

    .line 100
    invoke-static {p1, p2}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    invoke-virtual {p3}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getHomeSp()Landroid/net/wifi/hotspot2/pps/HomeSp;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/pps/HomeSp;->getFriendlyName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->mFriendlyName:Ljava/lang/String;

    .line 103
    invoke-virtual {p3}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getSubscriptionExpirationTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->mSubscriptionExpirationTimeInMillis:J

    .line 104
    iget-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->mPasspointConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getMeteredOverride()I

    move-result p1

    iput p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->mMeteredOverride:I

    return-void
.end method

.method private synthetic lambda$disconnect$0(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$DisconnectCallback;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 317
    iget-boolean p0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mCalledDisconnect:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    .line 318
    invoke-interface {p1, p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$DisconnectCallback;->onDisconnectResult(I)V

    :cond_0
    return-void
.end method

.method static uniqueIdToPasspointDualWifiEntryKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "Cannot create key with null unique id!"

    .line 559
    invoke-static {p0, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PasspointDualWifiEntry:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public declared-synchronized canConnect()Z
    .locals 4

    monitor-enter p0

    .line 277
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->isExpired()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 278
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->mOsuDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/OsuDualWifiEntry;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/OsuDualWifiEntry;->canConnect()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    monitor-exit p0

    return v1

    .line 281
    :cond_1
    :try_start_1
    iget v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mLevel:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    .line 282
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->getConnectedState()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    .line 281
    :goto_1
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public canDisconnect()Z
    .locals 1

    .line 308
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->getConnectedState()I

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

.method public declared-synchronized canForget()Z
    .locals 1

    monitor-enter p0

    .line 329
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->isSuggestion()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->mPasspointConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;
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

.method public declared-synchronized canSetAutoJoinEnabled()Z
    .locals 1

    monitor-enter p0

    .line 424
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->mPasspointConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized canSetMeteredChoice()Z
    .locals 1

    monitor-enter p0

    .line 356
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->isSuggestion()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->mPasspointConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;
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

.method public declared-synchronized canSetPrivacy()Z
    .locals 1

    monitor-enter p0

    .line 385
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->isSuggestion()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->mPasspointConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;
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

.method public declared-synchronized canSignIn()Z
    .locals 2

    monitor-enter p0

    .line 590
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    if-eqz v0, :cond_0

    const/16 v1, 0x11

    .line 591
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 590
    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized connect(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectCallback;)V
    .locals 2

    monitor-enter p0

    .line 287
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->mOsuDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/OsuDualWifiEntry;

    if-eqz v0, :cond_0

    .line 289
    invoke-virtual {v0, p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/OsuDualWifiEntry;->connect(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 295
    :try_start_1
    iput-boolean v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->mShouldAutoOpenCaptivePortal:Z

    .line 296
    iput-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mConnectCallback:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectCallback;

    .line 298
    iget-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-nez p1, :cond_1

    .line 300
    new-instance p1, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectActionListener;

    invoke-direct {p1, p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectActionListener;-><init>(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectActionListener;->onFailure(I)V

    .line 303
    :cond_1
    iget-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mDualWifiManager:Lasus/net/vicewifi/WifiViceManager;

    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    new-instance v1, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectActionListener;

    invoke-direct {v1, p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectActionListener;-><init>(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;)V

    invoke-virtual {p1, v0, v1}, Lasus/net/vicewifi/WifiViceManager;->connect(Landroid/net/wifi/WifiConfiguration;Lasus/net/vicewifi/WifiViceManager$ActionListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 304
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected connectionInfoMatches(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)Z
    .locals 0

    .line 537
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->isPasspointAp()Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return p0

    .line 542
    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getPasspointFqdn()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->mFqdn:Ljava/lang/String;

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public declared-synchronized disconnect(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$DisconnectCallback;)V
    .locals 4

    monitor-enter p0

    .line 313
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->canDisconnect()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 314
    iput-boolean v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mCalledDisconnect:Z

    .line 315
    iput-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mDisconnectCallback:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$DisconnectCallback;

    .line 316
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mCallbackHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$DisconnectCallback;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 322
    iget-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mDualWifiManager:Lasus/net/vicewifi/WifiViceManager;

    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->mFqdn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lasus/net/vicewifi/WifiViceManager;->disableEphemeralNetwork(Ljava/lang/String;)V

    .line 323
    iget-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mDualWifiManager:Lasus/net/vicewifi/WifiViceManager;

    invoke-virtual {p1}, Lasus/net/vicewifi/WifiViceManager;->disconnect()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 325
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized forget(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ForgetCallback;)V
    .locals 1

    monitor-enter p0

    .line 334
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->canForget()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 335
    monitor-exit p0

    return-void

    .line 338
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mForgetCallback:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ForgetCallback;

    .line 340
    new-instance p1, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ForgetActionListener;

    invoke-direct {p1, p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ForgetActionListener;-><init>(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;)V

    invoke-virtual {p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ForgetActionListener;->onSuccess()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 341
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getConnectedState()I
    .locals 1

    monitor-enter p0

    .line 140
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    invoke-super {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getConnectedState()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->mOsuDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/OsuDualWifiEntry;

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getConnectedState()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 146
    :cond_0
    :try_start_1
    invoke-super {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getConnectedState()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method public declared-synchronized getMacAddress()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 242
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_0

    .line 243
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 244
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "02:00:00:00:00:00"

    .line 245
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 246
    monitor-exit p0

    return-object v0

    .line 249
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->getPrivacy()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 256
    :cond_1
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getRandomizedMacAddress()Landroid/net/MacAddress;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/MacAddress;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 250
    :cond_2
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mDualWifiManager:Lasus/net/vicewifi/WifiViceManager;

    invoke-virtual {v0}, Lasus/net/vicewifi/WifiViceManager;->getFactoryMacAddresses()[Ljava/lang/String;

    move-result-object v0

    .line 251
    array-length v1, v0

    if-lez v1, :cond_3

    const/4 v1, 0x0

    .line 252
    aget-object v0, v0, v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_3
    const/4 v0, 0x0

    .line 254
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

    .line 346
    :try_start_0
    iget v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->mMeteredOverride:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 347
    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 349
    monitor-exit p0

    return v1

    :cond_1
    const/4 v0, 0x0

    .line 351
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getNetworkSelectionDescription()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 571
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/Utils;->getNetworkSelectionDescription(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPrivacy()I
    .locals 1

    monitor-enter p0

    .line 391
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->mPasspointConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 392
    monitor-exit p0

    return v0

    .line 395
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->isMacRandomizationEnabled()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getScanResultDescription()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public declared-synchronized getSecondSummary()Ljava/lang/CharSequence;
    .locals 2

    monitor-enter p0

    .line 222
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->getConnectedState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 223
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v0, v1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/Utils;->getImsiProtectionDescription(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSecurityString(Z)Ljava/lang/String;
    .locals 0

    .line 438
    iget-object p0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/wifitrackerlib/R$string;->wifitrackerlib_wifi_security_passpoint:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
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

    .line 237
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->mTargetSecurityTypes:Ljava/util/List;

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

.method public declared-synchronized getSsid()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 228
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/wifi/WifiInfo;->sanitizeSsid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 232
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/wifi/WifiInfo;->sanitizeSsid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSummary(Z)Ljava/lang/String;
    .locals 7

    monitor-enter p0

    .line 156
    :try_start_0
    new-instance v0, Ljava/util/StringJoiner;

    iget-object v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/wifitrackerlib/R$string;->wifitrackerlib_summary_separator:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 159
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->isExpired()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 160
    iget-object v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->mOsuDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/OsuDualWifiEntry;

    if-eqz v1, :cond_0

    .line 161
    invoke-virtual {v1, p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/OsuDualWifiEntry;->getSummary(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_1

    .line 163
    :cond_0
    iget-object v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/wifitrackerlib/R$string;->wifitrackerlib_wifi_passpoint_expired:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_1

    .line 167
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->getConnectedState()I

    move-result v1

    if-eqz v1, :cond_4

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const-string v2, "PasspointDualWifiEntry"

    .line 187
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

    .line 179
    :cond_2
    iget-object v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v4, 0x0

    iget-boolean v5, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mIsDefaultNetwork:Z

    iget-boolean v6, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mIsLowQuality:Z

    invoke-static/range {v1 .. v6}, Lcom/android/settings/dualwifi/dualwifitrackerlib/Utils;->getConnectedDescription(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;Landroid/net/NetworkCapabilities;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 176
    :cond_3
    iget-object v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-static {v1, v2}, Lcom/android/settings/dualwifi/dualwifitrackerlib/Utils;->getConnectingDescription(Landroid/content/Context;Landroid/net/NetworkInfo;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 170
    :cond_4
    iget-object v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-boolean v3, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mForSavedNetworksPage:Z

    invoke-static {v1, v2, v3, p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/Utils;->getDisconnectedDescription(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;ZZ)Ljava/lang/String;

    move-result-object v1

    .line 190
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 191
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 195
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->mContext:Landroid/content/Context;

    invoke-static {v1, p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/Utils;->getSpeedDescription(Landroid/content/Context;Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;)Ljava/lang/String;

    move-result-object v1

    .line 196
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 197
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 200
    :cond_6
    iget-object v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->mContext:Landroid/content/Context;

    invoke-static {v1, p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/Utils;->getAutoConnectDescription(Landroid/content/Context;Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;)Ljava/lang/String;

    move-result-object v1

    .line 201
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 202
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 205
    :cond_7
    iget-object v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->mContext:Landroid/content/Context;

    invoke-static {v1, p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/Utils;->getMeteredDescription(Landroid/content/Context;Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;)Ljava/lang/String;

    move-result-object v1

    .line 206
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 207
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_8
    if-nez p1, :cond_9

    .line 211
    invoke-static {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/Utils;->getVerboseLoggingDescription(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;)Ljava/lang/String;

    move-result-object p1

    .line 212
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 213
    invoke-virtual {v0, p1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 217
    :cond_9
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

    .line 151
    iget-object p0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->mFriendlyName:Ljava/lang/String;

    return-object p0
.end method

.method public declared-synchronized isAutoJoinEnabled()Z
    .locals 1

    monitor-enter p0

    .line 413
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->mPasspointConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    if-eqz v0, :cond_0

    .line 414
    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->isAutojoinEnabled()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 416
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_1

    .line 417
    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->allowAutojoin:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    .line 419
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isExpired()Z
    .locals 6

    monitor-enter p0

    .line 443
    :try_start_0
    iget-wide v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->mSubscriptionExpirationTimeInMillis:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    .line 445
    monitor-exit p0

    return v1

    .line 447
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->mSubscriptionExpirationTimeInMillis:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isMetered()Z
    .locals 2

    monitor-enter p0

    .line 261
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->getMeteredChoice()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

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

.method public declared-synchronized isSubscription()Z
    .locals 1

    monitor-enter p0

    .line 272
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->mPasspointConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;
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

.method public declared-synchronized isSuggestion()Z
    .locals 1

    monitor-enter p0

    .line 267
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

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

.method declared-synchronized onScoreCacheUpdated()V
    .locals 2

    monitor-enter p0

    .line 519
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_0

    .line 520
    iget-object v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    invoke-static {v1, v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/Utils;->getSpeedFromWifiInfo(Landroid/net/wifi/WifiNetworkScoreCache;Landroid/net/wifi/WifiInfo;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mSpeed:I

    goto :goto_0

    .line 523
    :cond_0
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->mCurrentHomeScanResults:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 524
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    iget-object v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->mCurrentHomeScanResults:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/Utils;->getAverageSpeedFromScanResults(Landroid/net/wifi/WifiNetworkScoreCache;Ljava/util/List;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mSpeed:I

    goto :goto_0

    .line 526
    :cond_1
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    iget-object v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->mCurrentRoamingScanResults:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/Utils;->getAverageSpeedFromScanResults(Landroid/net/wifi/WifiNetworkScoreCache;Ljava/util/List;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mSpeed:I

    .line 530
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->notifyOnUpdated()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 531
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onUpdated()V
    .locals 0

    .line 585
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->notifyOnUpdated()V

    return-void
.end method

.method public declared-synchronized setAutoJoinEnabled(Z)V
    .locals 2

    monitor-enter p0

    .line 429
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->mPasspointConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    if-eqz v0, :cond_0

    .line 430
    iget-object v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mDualWifiManager:Lasus/net/vicewifi/WifiViceManager;

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getHomeSp()Landroid/net/wifi/hotspot2/pps/HomeSp;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/pps/HomeSp;->getFqdn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, p1}, Lasus/net/vicewifi/WifiViceManager;->allowAutojoinPasspoint(Ljava/lang/String;Z)V

    goto :goto_0

    .line 431
    :cond_0
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_1

    .line 432
    iget-object v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mDualWifiManager:Lasus/net/vicewifi/WifiViceManager;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v1, v0, p1}, Lasus/net/vicewifi/WifiViceManager;->allowAutojoin(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 434
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

    .line 361
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->mPasspointConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->canSetMeteredChoice()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    .line 377
    monitor-exit p0

    return-void

    .line 373
    :cond_1
    :try_start_1
    iput v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->mMeteredOverride:I

    goto :goto_0

    .line 370
    :cond_2
    iput v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->mMeteredOverride:I

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 367
    iput p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->mMeteredOverride:I

    .line 379
    :goto_0
    iget-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mDualWifiManager:Lasus/net/vicewifi/WifiViceManager;

    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->mPasspointConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getHomeSp()Landroid/net/wifi/hotspot2/pps/HomeSp;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/pps/HomeSp;->getFqdn()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->mMeteredOverride:I

    invoke-virtual {p1, v0, v1}, Lasus/net/vicewifi/WifiViceManager;->setPasspointMeteredOverride(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 381
    monitor-exit p0

    return-void

    .line 362
    :cond_4
    :goto_1
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

    .line 401
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->mPasspointConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->canSetPrivacy()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mDualWifiManager:Lasus/net/vicewifi/WifiViceManager;

    iget-object v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->mPasspointConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    .line 406
    invoke-virtual {v1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getHomeSp()Landroid/net/wifi/hotspot2/pps/HomeSp;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/hotspot2/pps/HomeSp;->getFqdn()Ljava/lang/String;

    move-result-object v1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 405
    :goto_0
    invoke-virtual {v0, v1, p1}, Lasus/net/vicewifi/WifiViceManager;->setMacRandomizationSettingPasspointEnabled(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 408
    monitor-exit p0

    return-void

    .line 402
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public signIn(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$SignInCallback;)V
    .locals 1

    .line 597
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->canSignIn()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 600
    iget-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->mContext:Landroid/content/Context;

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iget-object p0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mDualWifiManager:Lasus/net/vicewifi/WifiViceManager;

    .line 601
    invoke-virtual {p0}, Lasus/net/vicewifi/WifiViceManager;->getCurrentNetwork()Landroid/net/Network;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/net/ConnectivityManager;->startCaptivePortalApp(Landroid/net/Network;)V

    :cond_0
    return-void
.end method

.method declared-synchronized updateNetworkCapabilities(Landroid/net/NetworkCapabilities;)V
    .locals 0

    monitor-enter p0

    .line 548
    :try_start_0
    invoke-super {p0, p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->updateNetworkCapabilities(Landroid/net/NetworkCapabilities;)V

    .line 551
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->canSignIn()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->mShouldAutoOpenCaptivePortal:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 552
    iput-boolean p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->mShouldAutoOpenCaptivePortal:Z

    const/4 p1, 0x0

    .line 553
    invoke-virtual {p0, p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->signIn(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$SignInCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 555
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized updateScanResultInfo(Landroid/net/wifi/WifiConfiguration;Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/WifiConfiguration;",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;",
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

    const/4 v0, 0x0

    .line 467
    :try_start_0
    iput-boolean v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->mIsRoaming:Z

    .line 468
    iput-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 469
    iget-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->mCurrentHomeScanResults:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 470
    iget-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->mCurrentRoamingScanResults:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    if-eqz p2, :cond_0

    .line 472
    iget-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->mCurrentHomeScanResults:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    if-eqz p3, :cond_1

    .line 475
    iget-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->mCurrentRoamingScanResults:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 477
    :cond_1
    iget-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const/4 v0, -0x1

    if-eqz p1, :cond_6

    .line 478
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_2

    .line 480
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 481
    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 482
    invoke-virtual {p0, p2}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->updateWifiGenerationInfo(Ljava/util/List;)V

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    .line 483
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3

    .line 484
    invoke-interface {p1, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 p2, 0x1

    .line 485
    iput-boolean p2, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->mIsRoaming:Z

    .line 486
    invoke-virtual {p0, p3}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->updateWifiGenerationInfo(Ljava/util/List;)V

    .line 488
    :cond_3
    :goto_0
    invoke-static {p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/Utils;->getBestScanResultByLevel(Ljava/util/List;)Landroid/net/wifi/ScanResult;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 490
    iget-object p3, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 491
    invoke-virtual {p0, p2}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->updateTransitionModeCapa(Landroid/net/wifi/ScanResult;)V

    .line 493
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->getConnectedState()I

    move-result p3

    if-nez p3, :cond_7

    if-eqz p2, :cond_5

    .line 495
    iget-object p3, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mDualWifiManager:Lasus/net/vicewifi/WifiViceManager;

    iget p2, p2, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {p3, p2}, Lasus/net/vicewifi/WifiViceManager;->calculateSignalLevel(I)I

    move-result v0

    .line 496
    :cond_5
    iput v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mLevel:I

    .line 498
    iget-object p2, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    invoke-static {p2, p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/Utils;->getAverageSpeedFromScanResults(Landroid/net/wifi/WifiNetworkScoreCache;Ljava/util/List;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mSpeed:I

    goto :goto_1

    .line 501
    :cond_6
    iput v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mLevel:I

    .line 503
    :cond_7
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->notifyOnUpdated()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 504
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized updateSecurityTypes()V
    .locals 2

    monitor-enter p0

    .line 508
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_0

    .line 509
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getCurrentSecurityType()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 511
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;->mTargetSecurityTypes:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 512
    monitor-exit p0

    return-void

    .line 515
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.class public Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;
.super Ljava/lang/Object;
.source "DualWifiEntry.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ManageSubscriptionAction;,
        Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ForgetActionListener;,
        Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectActionListener;,
        Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$SignInCallback;,
        Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ForgetCallback;,
        Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$DisconnectCallback;,
        Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectCallback;,
        Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$DualWifiEntryCallback;,
        Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectedInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;",
        ">;"
    }
.end annotation


# instance fields
.field protected final mCallbackHandler:Landroid/os/Handler;

.field protected mCalledConnect:Z

.field protected mCalledDisconnect:Z

.field protected mConnectCallback:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectCallback;

.field protected mConnectedInfo:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectedInfo;

.field private mDeviceWifiStandard:I

.field protected mDisconnectCallback:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$DisconnectCallback;

.field protected final mDualWifiManager:Lasus/net/vicewifi/WifiViceManager;

.field final mForSavedNetworksPage:Z

.field protected mForgetCallback:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ForgetCallback;

.field private mHe8ssCapableAp:Z

.field private mIs24GHz:Z

.field private mIs5GHz:Z

.field private mIs6GHz:Z

.field protected mIsDefaultNetwork:Z

.field protected mIsLowQuality:Z

.field private mIsOweTransitionMode:Z

.field private mIsPskSaeTransitionMode:Z

.field private mIsValidated:Z

.field protected mLevel:I

.field private mListener:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$DualWifiEntryCallback;

.field private mManageSubscriptionAction:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ManageSubscriptionAction;",
            ">;"
        }
    .end annotation
.end field

.field protected mNetworkCapabilities:Landroid/net/NetworkCapabilities;

.field protected mNetworkInfo:Landroid/net/NetworkInfo;

.field protected mScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

.field protected mSpeed:I

.field private mVhtMax8SpatialStreamsSupport:Z

.field protected mWifiInfo:Landroid/net/wifi/WifiInfo;

.field private mWifiStandard:I


# direct methods
.method public static synthetic $r8$lambda$WKqDG2Z4z_JqLe4pDdaaffq2a54(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->lambda$updateConnectionInfo$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$kt23GecX_tQ6LPxXCcN3_nSia44(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->lambda$updateConnectionInfo$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$yKfFYw6rSf4L1k6smVry3S3r2d4(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->lambda$notifyOnUpdated$0()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lasus/net/vicewifi/WifiViceManager;Landroid/net/wifi/WifiNetworkScoreCache;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 218
    iput v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mLevel:I

    const/4 v0, 0x0

    .line 219
    iput v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mSpeed:I

    .line 230
    iput-boolean v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mCalledConnect:Z

    .line 231
    iput-boolean v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mCalledDisconnect:Z

    .line 237
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mManageSubscriptionAction:Ljava/util/Optional;

    const/4 v0, 0x1

    .line 240
    iput v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mWifiStandard:I

    const-string v0, "Cannot construct with null handler!"

    .line 252
    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Cannot construct with null WifiViceManager!"

    .line 253
    invoke-static {p2, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    iput-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mCallbackHandler:Landroid/os/Handler;

    .line 255
    iput-boolean p4, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mForSavedNetworksPage:Z

    .line 256
    iput-object p2, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mDualWifiManager:Lasus/net/vicewifi/WifiViceManager;

    .line 257
    iput-object p3, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    .line 258
    invoke-direct {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->updatetDeviceWifiGenerationInfo()V

    return-void
.end method

.method private synthetic lambda$notifyOnUpdated$0()V
    .locals 0

    .line 702
    iget-object p0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mListener:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$DualWifiEntryCallback;

    if-eqz p0, :cond_0

    .line 704
    invoke-interface {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$DualWifiEntryCallback;->onUpdated()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$updateConnectionInfo$1()V
    .locals 1

    .line 836
    iget-object p0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mConnectCallback:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectCallback;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 838
    invoke-interface {p0, v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectCallback;->onConnectResult(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$updateConnectionInfo$2()V
    .locals 1

    .line 862
    iget-object p0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mDisconnectCallback:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$DisconnectCallback;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 864
    invoke-interface {p0, v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$DisconnectCallback;->onDisconnectResult(I)V

    :cond_0
    return-void
.end method

.method private updatetDeviceWifiGenerationInfo()V
    .locals 2

    .line 1112
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mDualWifiManager:Lasus/net/vicewifi/WifiViceManager;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lasus/net/vicewifi/WifiViceManager;->isWifiStandardSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1113
    iput v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mDeviceWifiStandard:I

    goto :goto_0

    .line 1114
    :cond_0
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mDualWifiManager:Lasus/net/vicewifi/WifiViceManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lasus/net/vicewifi/WifiViceManager;->isWifiStandardSupported(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1115
    iput v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mDeviceWifiStandard:I

    goto :goto_0

    .line 1116
    :cond_1
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mDualWifiManager:Lasus/net/vicewifi/WifiViceManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lasus/net/vicewifi/WifiViceManager;->isWifiStandardSupported(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1117
    iput v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mDeviceWifiStandard:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    .line 1119
    iput v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mDeviceWifiStandard:I

    .line 1121
    :goto_0
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mDualWifiManager:Lasus/net/vicewifi/WifiViceManager;

    invoke-virtual {v0}, Lasus/net/vicewifi/WifiViceManager;->isVht8ssCapableDevice()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mVhtMax8SpatialStreamsSupport:Z

    return-void
.end method


# virtual methods
.method public canConnect()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public canDisconnect()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public canForget()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public canManageSubscription()Z
    .locals 0

    .line 611
    iget-object p0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mManageSubscriptionAction:Ljava/util/Optional;

    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result p0

    return p0
.end method

.method public canSetAutoJoinEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public canSetMeteredChoice()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public canSetPrivacy()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public canShare()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public canSignIn()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public compareTo(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;)I
    .locals 4

    .line 1023
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getLevel()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getLevel()I

    move-result v0

    if-ne v0, v1, :cond_0

    return v1

    .line 1026
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getLevel()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getLevel()I

    move-result v0

    if-eq v0, v1, :cond_1

    return v2

    .line 1030
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->isSubscription()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->isSubscription()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 1031
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->isSubscription()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->isSubscription()Z

    move-result v0

    if-eqz v0, :cond_3

    return v2

    .line 1033
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->isSaved()Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    .line 1034
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->isSaved()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_5

    return v2

    .line 1036
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->isSuggestion()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->isSuggestion()Z

    move-result v0

    if-nez v0, :cond_6

    return v1

    .line 1037
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->isSuggestion()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->isSuggestion()Z

    move-result v0

    if-eqz v0, :cond_7

    return v2

    .line 1039
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getLevel()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getLevel()I

    move-result v3

    if-le v0, v3, :cond_8

    return v1

    .line 1040
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getLevel()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getLevel()I

    move-result v1

    if-ge v0, v1, :cond_9

    return v2

    .line 1042
    :cond_9
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getTitle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 56
    check-cast p1, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    invoke-virtual {p0, p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->compareTo(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;)I

    move-result p0

    return p0
.end method

.method public connect(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectCallback;)V
    .locals 0

    return-void
.end method

.method protected connectionInfoMatches(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public disconnect(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$DisconnectCallback;)V
    .locals 0

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1047
    instance-of v0, p1, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1048
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getKey()Ljava/lang/String;

    move-result-object p0

    check-cast p1, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    invoke-virtual {p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public forget(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ForgetCallback;)V
    .locals 0

    return-void
.end method

.method public declared-synchronized getConnectedInfo()Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectedInfo;
    .locals 2

    monitor-enter p0

    .line 449
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getConnectedState()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    .line 450
    monitor-exit p0

    return-object v0

    .line 453
    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectedInfo;

    iget-object v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mConnectedInfo:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectedInfo;

    invoke-direct {v0, v1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectedInfo;-><init>(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectedInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getConnectedState()I
    .locals 3

    monitor-enter p0

    .line 272
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mNetworkInfo:Landroid/net/NetworkInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 273
    monitor-exit p0

    return v1

    .line 276
    :cond_0
    :try_start_1
    sget-object v2, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$1;->$SwitchMap$android$net$NetworkInfo$DetailedState:[I

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v0

    aget v0, v2, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    packed-switch v0, :pswitch_data_0

    .line 287
    monitor-exit p0

    return v1

    :pswitch_0
    const/4 v0, 0x2

    .line 285
    monitor-exit p0

    return v0

    :pswitch_1
    const/4 v0, 0x1

    .line 283
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getHelpUriString()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getLevel()I
    .locals 0

    .line 324
    iget p0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mLevel:I

    return p0
.end method

.method public getMacAddress()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getMeteredChoice()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method getNetworkCapabilityDescription()Ljava/lang/String;
    .locals 3

    .line 656
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 657
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getConnectedState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const-string v1, "isValidated:"

    .line 658
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mIsValidated:Z

    .line 659
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isDefaultNetwork:"

    .line 660
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mIsDefaultNetwork:Z

    .line 661
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isLowQuality:"

    .line 662
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mIsLowQuality:Z

    .line 663
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 665
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method getNetworkSelectionDescription()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getPrivacy()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method protected getScanResultDescription()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getSecondSummary()Ljava/lang/CharSequence;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getSecurity()I
    .locals 1

    .line 364
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getSecurityTypes()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/Utils;->getSingleSecurityTypeFromMultipleSecurityTypes(Ljava/util/List;)I

    move-result p0

    const/4 v0, 0x3

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 p0, 0x0

    return p0

    :pswitch_1
    return v0

    :pswitch_2
    const/4 p0, 0x7

    return p0

    :pswitch_3
    const/4 p0, 0x4

    return p0

    :pswitch_4
    const/4 p0, 0x6

    return p0

    :pswitch_5
    const/4 p0, 0x5

    return p0

    :pswitch_6
    return v0

    :pswitch_7
    const/4 p0, 0x2

    return p0

    :pswitch_8
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public getSecurityString(Z)Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getSecurityTypes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 395
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getSpeed()I
    .locals 0

    .line 346
    iget p0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mSpeed:I

    return p0
.end method

.method public getSsid()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 301
    invoke-virtual {p0, v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getSummary(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSummary(Z)Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method declared-synchronized getWifiInfoDescription()Ljava/lang/String;
    .locals 8

    monitor-enter p0

    .line 951
    :try_start_0
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, " "

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 952
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getConnectedState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v1, :cond_1

    .line 953
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "f = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 954
    iget-object v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 956
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 958
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "standard = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getWifiStandard()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 959
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rssi = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 960
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "score = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getScore()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    const-string v1, " tx=%.1f,"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    .line 961
    iget-object v4, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getSuccessfulTxPacketsPerSecond()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    const-string v1, "%.1f,"

    new-array v3, v2, [Ljava/lang/Object;

    .line 962
    iget-object v4, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getRetriedTxPacketsPerSecond()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    const-string v1, "%.1f "

    new-array v3, v2, [Ljava/lang/Object;

    .line 963
    iget-object v4, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getLostTxPacketsPerSecond()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    const-string v1, "rx=%.1f"

    new-array v2, v2, [Ljava/lang/Object;

    .line 964
    iget-object v3, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getSuccessfulRxPacketsPerSecond()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 966
    :cond_1
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

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

.method public getWifiStandard()I
    .locals 2

    .line 1128
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getConnectedInfo()Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectedInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_1

    .line 1129
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getConnectedState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1132
    :cond_0
    iget-object p0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getWifiStandard()I

    move-result p0

    return p0

    .line 1130
    :cond_1
    :goto_0
    iget p0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mWifiStandard:I

    return p0
.end method

.method public is24GHz()Z
    .locals 0

    .line 1192
    iget-boolean p0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mIs24GHz:Z

    return p0
.end method

.method public is5GHz()Z
    .locals 0

    .line 1196
    iget-boolean p0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mIs5GHz:Z

    return p0
.end method

.method public is6GHz()Z
    .locals 0

    .line 1200
    iget-boolean p0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mIs6GHz:Z

    return p0
.end method

.method public isAutoJoinEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isHe8ssCapableAp()Z
    .locals 2

    .line 1139
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getConnectedInfo()Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectedInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_1

    .line 1140
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getConnectedState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1144
    :cond_0
    iget-object p0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-static {p0}, Lcom/android/settingslib/SettingsLibHwSupport;->isHe8ssCapableApValue(Landroid/net/wifi/WifiInfo;)Z

    move-result p0

    return p0

    .line 1141
    :cond_1
    :goto_0
    iget-boolean p0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mHe8ssCapableAp:Z

    return p0
.end method

.method public isMetered()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSaved()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSubscription()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSuggestion()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isVhtMax8SpatialStreamsSupported()Z
    .locals 2

    .line 1151
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getConnectedInfo()Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectedInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_1

    .line 1152
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getConnectedState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1156
    :cond_0
    iget-object p0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-static {p0}, Lcom/android/settingslib/SettingsLibHwSupport;->isVhtMax8SpatialStreamsSupportedValue(Landroid/net/wifi/WifiInfo;)Z

    move-result p0

    return p0

    .line 1153
    :cond_1
    :goto_0
    iget-boolean p0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mVhtMax8SpatialStreamsSupport:Z

    return p0
.end method

.method public manageSubscription()V
    .locals 1

    .line 626
    iget-object p0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mManageSubscriptionAction:Ljava/util/Optional;

    sget-object v0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$$ExternalSyntheticLambda3;->INSTANCE:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$$ExternalSyntheticLambda3;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method protected notifyOnUpdated()V
    .locals 2

    .line 700
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mListener:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$DualWifiEntryCallback;

    if-eqz v0, :cond_0

    .line 701
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mCallbackHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public set24GHz(Z)V
    .locals 0

    .line 1180
    iput-boolean p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mIs24GHz:Z

    return-void
.end method

.method public set5GHz(Z)V
    .locals 0

    .line 1184
    iput-boolean p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mIs5GHz:Z

    return-void
.end method

.method public set6GHz(Z)V
    .locals 0

    .line 1188
    iput-boolean p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mIs6GHz:Z

    return-void
.end method

.method public setAutoJoinEnabled(Z)V
    .locals 0

    return-void
.end method

.method declared-synchronized setIsDefaultNetwork(Z)V
    .locals 0

    monitor-enter p0

    .line 929
    :try_start_0
    iput-boolean p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mIsDefaultNetwork:Z

    .line 930
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->notifyOnUpdated()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 931
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized setIsLowQuality(Z)V
    .locals 0

    monitor-enter p0

    .line 935
    :try_start_0
    iput-boolean p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mIsLowQuality:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 936
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setListener(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$DualWifiEntryCallback;)V
    .locals 0

    monitor-enter p0

    .line 682
    :try_start_0
    iput-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mListener:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$DualWifiEntryCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 683
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setMeteredChoice(I)V
    .locals 0

    return-void
.end method

.method public setPrivacy(I)V
    .locals 0

    return-void
.end method

.method public shouldEditBeforeConnect()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public shouldShowXLevelIcon()Z
    .locals 1

    .line 331
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getConnectedState()I

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mIsValidated:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mIsDefaultNetwork:Z

    if-nez v0, :cond_1

    .line 332
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->canSignIn()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public signIn(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$SignInCallback;)V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1053
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1054
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",title:"

    .line 1055
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1056
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",summary:"

    .line 1057
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1058
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getSummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",isSaved:"

    .line 1059
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1060
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->isSaved()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",isSubscription:"

    .line 1061
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1062
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->isSubscription()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",isSuggestion:"

    .line 1063
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1064
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->isSuggestion()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",level:"

    .line 1065
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1066
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1067
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->shouldShowXLevelIcon()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "X"

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",security:"

    .line 1068
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1069
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getSecurityTypes()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",standard:"

    .line 1070
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1071
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getWifiStandard()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",he8ssAp:"

    .line 1072
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1073
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->isHe8ssCapableAp()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",vhtMax8ssCapa:"

    .line 1074
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1075
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->isVhtMax8SpatialStreamsSupported()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",connected:"

    .line 1076
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1077
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getConnectedState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const-string v1, "true"

    goto :goto_1

    :cond_1
    const-string v1, "false"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",connectedInfo:"

    .line 1078
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1079
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getConnectedInfo()Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectedInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",isValidated:"

    .line 1080
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mIsValidated:Z

    .line 1081
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",isDefaultNetwork:"

    .line 1082
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mIsDefaultNetwork:Z

    .line 1083
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1084
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method declared-synchronized updateConnectionInfo(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 822
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->connectionInfoMatches(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 825
    iput-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 826
    iput-object p2, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 827
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result p2

    const/16 v1, -0x7f

    if-eq p2, v1, :cond_0

    .line 829
    iget-object v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mDualWifiManager:Lasus/net/vicewifi/WifiViceManager;

    invoke-virtual {v1, p2}, Lasus/net/vicewifi/WifiViceManager;->calculateSignalLevel(I)I

    move-result p2

    iput p2, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mLevel:I

    .line 830
    iget-object p2, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    invoke-static {p2, p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/Utils;->getSpeedFromWifiInfo(Landroid/net/wifi/WifiNetworkScoreCache;Landroid/net/wifi/WifiInfo;)I

    move-result p2

    iput p2, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mSpeed:I

    .line 832
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getConnectedState()I

    move-result p2

    const/4 v1, 0x2

    if-ne p2, v1, :cond_4

    .line 833
    iget-boolean p2, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mCalledConnect:Z

    if-eqz p2, :cond_1

    .line 834
    iput-boolean v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mCalledConnect:Z

    .line 835
    iget-object p2, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mCallbackHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 844
    :cond_1
    iget-object p2, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mConnectedInfo:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectedInfo;

    if-nez p2, :cond_2

    .line 845
    new-instance p2, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectedInfo;

    invoke-direct {p2}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectedInfo;-><init>()V

    iput-object p2, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mConnectedInfo:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectedInfo;

    .line 847
    :cond_2
    iget-object p2, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mConnectedInfo:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectedInfo;

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v0

    iput v0, p2, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectedInfo;->frequencyMhz:I

    .line 848
    iget-object p2, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mConnectedInfo:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectedInfo;

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v0

    iput v0, p2, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectedInfo;->linkSpeedMbps:I

    .line 849
    iget-object p2, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mConnectedInfo:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectedInfo;

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getWifiStandard()I

    move-result p1

    iput p1, p2, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectedInfo;->wifiStandard:I

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 852
    iput-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 853
    iput-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 854
    iput-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 855
    iput-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mConnectedInfo:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectedInfo;

    .line 856
    iput-boolean v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mIsValidated:Z

    .line 857
    iput-boolean v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mIsDefaultNetwork:Z

    .line 858
    iput-boolean v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mIsLowQuality:Z

    .line 859
    iget-boolean p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mCalledDisconnect:Z

    if-eqz p1, :cond_4

    .line 860
    iput-boolean v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mCalledDisconnect:Z

    .line 861
    iget-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mCallbackHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 870
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->updateSecurityTypes()V

    .line 871
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->notifyOnUpdated()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 872
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized updateLinkProperties(Landroid/net/LinkProperties;)V
    .locals 7

    monitor-enter p0

    if-eqz p1, :cond_7

    .line 883
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getConnectedState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto/16 :goto_1

    .line 889
    :cond_0
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mConnectedInfo:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectedInfo;

    if-nez v0, :cond_1

    .line 890
    new-instance v0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectedInfo;

    invoke-direct {v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectedInfo;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mConnectedInfo:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectedInfo;

    .line 893
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 894
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :catch_0
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/LinkAddress;

    .line 895
    invoke-virtual {v3}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    instance-of v4, v4, Ljava/net/Inet4Address;

    if-eqz v4, :cond_3

    .line 896
    iget-object v4, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mConnectedInfo:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectedInfo;

    invoke-virtual {v3}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectedInfo;->ipAddress:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x4

    :try_start_1
    new-array v4, v4, [B

    const/4 v5, 0x0

    const/4 v6, -0x1

    aput-byte v6, v4, v5

    const/4 v5, 0x1

    aput-byte v6, v4, v5

    aput-byte v6, v4, v1

    const/4 v5, 0x3

    aput-byte v6, v4, v5

    .line 898
    invoke-static {v4}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v4

    .line 900
    iget-object v5, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mConnectedInfo:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectedInfo;

    .line 901
    invoke-virtual {v3}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v3

    .line 900
    invoke-static {v4, v3}, Lcom/android/net/module/util/NetUtils;->getNetworkPart(Ljava/net/InetAddress;I)Ljava/net/InetAddress;

    move-result-object v3

    .line 901
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v5, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectedInfo;->subnetMask:Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 905
    :cond_3
    :try_start_2
    invoke-virtual {v3}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    instance-of v4, v4, Ljava/net/Inet6Address;

    if-eqz v4, :cond_2

    .line 906
    invoke-virtual {v3}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 909
    :cond_4
    iget-object v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mConnectedInfo:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectedInfo;

    iput-object v0, v1, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectedInfo;->ipv6Addresses:Ljava/util/List;

    .line 912
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/RouteInfo;

    .line 913
    invoke-virtual {v1}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Landroid/net/RouteInfo;->getDestination()Landroid/net/IpPrefix;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    instance-of v2, v2, Ljava/net/Inet4Address;

    if-eqz v2, :cond_5

    .line 914
    invoke-virtual {v1}, Landroid/net/RouteInfo;->hasGateway()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 915
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mConnectedInfo:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectedInfo;

    invoke-virtual {v1}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectedInfo;->gateway:Ljava/lang/String;

    .line 921
    :cond_6
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mConnectedInfo:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectedInfo;

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v1, Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2$$ExternalSyntheticLambda1;->INSTANCE:Lcom/android/settings/dualwifi/details/DualWifiDetailPreferenceController2$$ExternalSyntheticLambda1;

    .line 922
    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, v0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectedInfo;->dnsServers:Ljava/util/List;

    .line 924
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->notifyOnUpdated()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 925
    monitor-exit p0

    return-void

    :cond_7
    :goto_1
    const/4 p1, 0x0

    .line 884
    :try_start_3
    iput-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mConnectedInfo:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectedInfo;

    .line 885
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->notifyOnUpdated()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 886
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized updateNetworkCapabilities(Landroid/net/NetworkCapabilities;)V
    .locals 1

    monitor-enter p0

    .line 941
    :try_start_0
    iput-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 942
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mConnectedInfo:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectedInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 943
    monitor-exit p0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/16 v0, 0x10

    .line 946
    :try_start_1
    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mIsValidated:Z

    .line 947
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->notifyOnUpdated()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 948
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected updateSecurityTypes()V
    .locals 0

    return-void
.end method

.method protected updateTransitionModeCapa(Landroid/net/wifi/ScanResult;)V
    .locals 2

    .line 1098
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "SAE"

    .line 1099
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mIsPskSaeTransitionMode:Z

    .line 1100
    iget-object p1, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v0, "OWE_TRANSITION"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mIsOweTransitionMode:Z

    return-void
.end method

.method protected updateWifiGenerationInfo(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    .line 1161
    iget v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mDeviceWifiStandard:I

    const/4 v1, 0x1

    .line 1164
    iput-boolean v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mHe8ssCapableAp:Z

    .line 1165
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    .line 1166
    invoke-virtual {v1}, Landroid/net/wifi/ScanResult;->getWifiStandard()I

    move-result v2

    .line 1169
    iget-object v1, v1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v3, "WFA-HE-READY"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mHe8ssCapableAp:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 1170
    iput-boolean v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mHe8ssCapableAp:Z

    :cond_1
    if-ge v2, v0, :cond_0

    move v0, v2

    goto :goto_0

    .line 1176
    :cond_2
    iput v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mWifiStandard:I

    return-void
.end method

.class public Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;
.super Ljava/lang/Object;
.source "BaseDualWifiTracker.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$BaseDualWifiTrackerCallback;,
        Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$Scanner;
    }
.end annotation


# static fields
.field private static sVerboseLogging:Z


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field protected final mConnectivityManager:Landroid/net/ConnectivityManager;

.field protected final mContext:Landroid/content/Context;

.field private final mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field protected final mDualWifiManager:Lasus/net/vicewifi/WifiViceManager;

.field protected mIsCellDefaultRoute:Z

.field protected mIsDualWifiDefaultRoute:Z

.field protected mIsDualWifiValidated:Z

.field private mIsStarted:Z

.field private final mListener:Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$BaseDualWifiTrackerCallback;

.field protected final mMainHandler:Landroid/os/Handler;

.field protected final mMaxScanAgeMillis:J

.field private final mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private final mNetworkRequest:Landroid/net/NetworkRequest;

.field protected final mNetworkScoreManager:Landroid/net/NetworkScoreManager;

.field private final mRequestedScoreKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/net/NetworkKey;",
            ">;"
        }
    .end annotation
.end field

.field protected final mScanIntervalMillis:J

.field protected final mScanResultUpdater:Lcom/android/settings/dualwifi/dualwifitrackerlib/ScanResultUpdater;

.field private final mScanner:Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$Scanner;

.field private final mTag:Ljava/lang/String;

.field protected final mWifiNetworkScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

.field protected final mWorkerHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$GWhn-t6H2962oT0GFIe3wZJJFzk(Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$Scanner;)V
    .locals 0

    invoke-static {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->lambda$onStop$1(Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$Scanner;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gJg_KcSVvzkeF6Cn8DHEmLriFbo(Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->lambda$onStart$0()V

    return-void
.end method

.method constructor <init>(Landroidx/lifecycle/Lifecycle;Landroid/content/Context;Lasus/net/vicewifi/WifiViceManager;Landroid/net/ConnectivityManager;Landroid/net/NetworkScoreManager;Landroid/os/Handler;Landroid/os/Handler;Ljava/time/Clock;JJLcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$BaseDualWifiTrackerCallback;Ljava/lang/String;)V
    .locals 9

    move-object v0, p0

    move-object v1, p2

    move-object/from16 v2, p7

    move-wide/from16 v3, p9

    move-wide/from16 v5, p11

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v7, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$1;

    invoke-direct {v7, p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$1;-><init>(Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;)V

    iput-object v7, v0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 116
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    iput-object v7, v0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mRequestedScoreKeys:Ljava/util/Set;

    .line 120
    new-instance v7, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v7}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 121
    invoke-virtual {v7}, Landroid/net/NetworkRequest$Builder;->clearCapabilities()Landroid/net/NetworkRequest$Builder;

    move-result-object v7

    const/16 v8, 0xf

    .line 122
    invoke-virtual {v7, v8}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v7

    const/4 v8, 0x1

    .line 123
    invoke-virtual {v7, v8}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v7

    .line 124
    invoke-virtual {v7}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v7

    iput-object v7, v0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mNetworkRequest:Landroid/net/NetworkRequest;

    .line 126
    new-instance v7, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$2;

    invoke-direct {v7, p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$2;-><init>(Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;)V

    iput-object v7, v0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 177
    new-instance v7, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$3;

    invoke-direct {v7, p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$3;-><init>(Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;)V

    iput-object v7, v0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    move-object v7, p1

    .line 254
    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 255
    iput-object v1, v0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mContext:Landroid/content/Context;

    move-object v7, p3

    .line 256
    iput-object v7, v0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mDualWifiManager:Lasus/net/vicewifi/WifiViceManager;

    move-object v7, p4

    .line 257
    iput-object v7, v0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    move-object v7, p5

    .line 258
    iput-object v7, v0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    move-object v7, p6

    .line 259
    iput-object v7, v0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mMainHandler:Landroid/os/Handler;

    .line 260
    iput-object v2, v0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mWorkerHandler:Landroid/os/Handler;

    .line 261
    iput-wide v3, v0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mMaxScanAgeMillis:J

    .line 262
    iput-wide v5, v0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mScanIntervalMillis:J

    move-object/from16 v7, p13

    .line 263
    iput-object v7, v0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mListener:Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$BaseDualWifiTrackerCallback;

    move-object/from16 v7, p14

    .line 264
    iput-object v7, v0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mTag:Ljava/lang/String;

    .line 266
    new-instance v7, Lcom/android/settings/dualwifi/dualwifitrackerlib/ScanResultUpdater;

    add-long/2addr v3, v5

    move-object/from16 v5, p8

    invoke-direct {v7, v5, v3, v4}, Lcom/android/settings/dualwifi/dualwifitrackerlib/ScanResultUpdater;-><init>(Ljava/time/Clock;J)V

    iput-object v7, v0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mScanResultUpdater:Lcom/android/settings/dualwifi/dualwifitrackerlib/ScanResultUpdater;

    .line 268
    new-instance v3, Landroid/net/wifi/WifiNetworkScoreCache;

    new-instance v4, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$4;

    invoke-direct {v4, p0, v2}, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$4;-><init>(Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;Landroid/os/Handler;)V

    invoke-direct {v3, p2, v4}, Landroid/net/wifi/WifiNetworkScoreCache;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiNetworkScoreCache$CacheListener;)V

    iput-object v3, v0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mWifiNetworkScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    .line 275
    new-instance v3, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$Scanner;

    invoke-virtual/range {p7 .. p7}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v4, 0x0

    invoke-direct {v3, p0, v2, v4}, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$Scanner;-><init>(Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;Landroid/os/Looper;Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$1;)V

    iput-object v3, v0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mScanner:Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$Scanner;

    .line 278
    const-class v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isVerboseLoggingEnabled()Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->sVerboseLogging:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;)Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mIsStarted:Z

    return p0
.end method

.method static synthetic access$002(Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;Z)Z
    .locals 0

    .line 47
    iput-boolean p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mIsStarted:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;)Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;)Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$Scanner;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mScanner:Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$Scanner;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->notifyOnDualWifiStateChanged()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;)Ljava/util/Set;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mRequestedScoreKeys:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;Landroid/net/NetworkCapabilities;)Z
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->isPrimaryDualWifiNetwork(Landroid/net/NetworkCapabilities;)Z

    move-result p0

    return p0
.end method

.method private isPrimaryDualWifiNetwork(Landroid/net/NetworkCapabilities;)Z
    .locals 1

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    .line 222
    :cond_0
    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->getTransportInfo()Landroid/net/TransportInfo;

    move-result-object p1

    .line 223
    instance-of v0, p1, Landroid/net/wifi/WifiInfo;

    if-nez v0, :cond_1

    return p0

    .line 226
    :cond_1
    check-cast p1, Landroid/net/wifi/WifiInfo;

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->isPrimary()Z

    move-result p0

    return p0
.end method

.method public static isVerboseLoggingEnabled()Z
    .locals 1

    .line 53
    sget-boolean v0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->sVerboseLogging:Z

    return v0
.end method

.method private synthetic lambda$onStart$0()V
    .locals 1

    .line 319
    iget-boolean v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mIsStarted:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 320
    iput-boolean v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mIsStarted:Z

    .line 321
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->handleOnStart()V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$onStop$1(Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$Scanner;)V
    .locals 0

    .line 332
    invoke-static {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$Scanner;->access$400(Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$Scanner;)V

    return-void
.end method

.method private notifyOnDualWifiStateChanged()V
    .locals 2

    .line 499
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mListener:Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$BaseDualWifiTrackerCallback;

    if-eqz v0, :cond_0

    .line 500
    iget-object p0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mMainHandler:Landroid/os/Handler;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$BaseDualWifiTrackerCallback;)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public getWifiState()I
    .locals 0

    .line 353
    iget-object p0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mDualWifiManager:Lasus/net/vicewifi/WifiViceManager;

    invoke-virtual {p0}, Lasus/net/vicewifi/WifiViceManager;->getWifiState()I

    move-result p0

    return p0
.end method

.method protected handleConfiguredNetworksChangedAction(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method protected handleDefaultRouteChanged()V
    .locals 0

    return-void
.end method

.method protected handleDefaultSubscriptionChanged(I)V
    .locals 0

    return-void
.end method

.method protected handleLinkPropertiesChanged(Landroid/net/LinkProperties;)V
    .locals 0

    return-void
.end method

.method protected handleNetworkCapabilitiesChanged(Landroid/net/NetworkCapabilities;)V
    .locals 0

    return-void
.end method

.method protected handleNetworkScoreCacheUpdated()V
    .locals 0

    return-void
.end method

.method protected handleNetworkStateChangedAction(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method protected handleOnStart()V
    .locals 0

    return-void
.end method

.method protected handleRssiChangedAction()V
    .locals 0

    return-void
.end method

.method protected handleScanResultsAvailableAction(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method protected handleWifiStateChangedAction()V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 5
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 287
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "asus.net.vicewifi.WIFI_STATE_CHANGED"

    .line 288
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "asus.net.vicewifi.SCAN_RESULTS"

    .line 289
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "asus.net.vicewifi.CONFIGURED_NETWORKS_CHANGE"

    .line 290
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "asus.net.vicewifi.STATE_CHANGE"

    .line 291
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "asus.net.vicewifi.RSSI_CHANGED"

    .line 292
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    .line 293
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 294
    iget-object v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mWorkerHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 296
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mNetworkRequest:Landroid/net/NetworkRequest;

    iget-object v2, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    iget-object v3, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    .line 298
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    iget-object v2, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    .line 300
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 301
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 303
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mIsDualWifiDefaultRoute:Z

    .line 304
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mIsCellDefaultRoute:Z

    goto :goto_0

    .line 306
    :cond_0
    iput-boolean v2, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mIsDualWifiDefaultRoute:Z

    .line 307
    iput-boolean v2, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mIsCellDefaultRoute:Z

    .line 309
    :goto_0
    invoke-static {}, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->isVerboseLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 310
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wifi is the default route: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mIsDualWifiDefaultRoute:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cell is the default route: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mIsCellDefaultRoute:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :cond_1
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    iget-object v2, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mWifiNetworkScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/NetworkScoreManager;->registerNetworkScoreCache(ILandroid/net/INetworkScoreCache;I)V

    .line 318
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mWorkerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onStop()V
    .locals 3
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 332
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mWorkerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mScanner:Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$Scanner;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$Scanner;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 333
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 334
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 335
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 336
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    iget-object v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mWifiNetworkScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/net/NetworkScoreManager;->unregisterNetworkScoreCache(ILandroid/net/INetworkScoreCache;)V

    .line 338
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mWorkerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mRequestedScoreKeys:Ljava/util/Set;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$$ExternalSyntheticLambda3;

    invoke-direct {v2, v1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$$ExternalSyntheticLambda3;-><init>(Ljava/util/Set;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 339
    iput-boolean v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mIsStarted:Z

    return-void
.end method

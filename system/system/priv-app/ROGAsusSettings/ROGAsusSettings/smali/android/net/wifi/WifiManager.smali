.class public Landroid/net/wifi/WifiManager;
.super Ljava/lang/Object;
.source "WifiManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiManager$EasyConnectCallbackProxy;,
        Landroid/net/wifi/WifiManager$ProvisioningCallbackProxy;,
        Landroid/net/wifi/WifiManager$ActionListenerProxy;,
        Landroid/net/wifi/WifiManager$SoftApCallbackProxy;,
        Landroid/net/wifi/WifiManager$SoftApCallback;,
        Landroid/net/wifi/WifiManager$ActionListener;,
        Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback;,
        Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy;,
        Landroid/net/wifi/WifiManager$NetworkRequestUserSelectionCallbackProxy;,
        Landroid/net/wifi/WifiManager$NetworkRequestMatchCallback;,
        Landroid/net/wifi/WifiManager$NetworkRequestUserSelectionCallback;,
        Landroid/net/wifi/WifiManager$AddNetworkResult;
    }
.end annotation


# static fields
.field public static final ALL_ZEROS_MAC_ADDRESS:Landroid/net/MacAddress;

.field private static final sNetworkRequestMatchCallbackMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/net/wifi/INetworkRequestMatchCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static final sOnWifiUsabilityStatsListenerMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "*>;"
        }
    .end annotation
.end field

.field private static final sSoftApCallbackMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/net/wifi/ISoftApCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSuggestionConnectionStatusListenerMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "*>;"
        }
    .end annotation
.end field

.field private static final sSuggestionUserApprovalStatusListenerMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "*>;"
        }
    .end annotation
.end field

.field private static final sTrafficStateCallbackMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "*>;"
        }
    .end annotation
.end field

.field private static final sWifiVerboseLoggingStatusChangedListenerMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLooper:Landroid/os/Looper;

.field mService:Landroid/net/wifi/IWifiManager;
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private mVerboseLoggingEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "00:00:00:00:00:00"

    .line 1371
    invoke-static {v0}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/WifiManager;->ALL_ZEROS_MAC_ADDRESS:Landroid/net/MacAddress;

    .line 1392
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiManager;->sOnWifiUsabilityStatsListenerMap:Landroid/util/SparseArray;

    .line 1394
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiManager;->sSuggestionConnectionStatusListenerMap:Landroid/util/SparseArray;

    .line 1396
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiManager;->sSuggestionUserApprovalStatusListenerMap:Landroid/util/SparseArray;

    .line 1398
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiManager;->sWifiVerboseLoggingStatusChangedListenerMap:Landroid/util/SparseArray;

    .line 1400
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiManager;->sNetworkRequestMatchCallbackMap:Landroid/util/SparseArray;

    .line 1402
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiManager;->sTrafficStateCallbackMap:Landroid/util/SparseArray;

    .line 1403
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiManager;->sSoftApCallbackMap:Landroid/util/SparseArray;

    return-void
.end method

.method static synthetic access$000(Landroid/net/wifi/WifiManager;)Z
    .locals 0

    .line 120
    iget-boolean p0, p0, Landroid/net/wifi/WifiManager;->mVerboseLoggingEnabled:Z

    return p0
.end method

.method private addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I
    .locals 1

    .line 1899
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object p0, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Landroid/net/wifi/IWifiManager;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 1901
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static calculateSignalLevel(II)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, -0x64

    if-gt p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 v1, -0x37

    if-lt p0, v1, :cond_1

    add-int/lit8 p1, p1, -0x1

    return p1

    :cond_1
    const/high16 v1, 0x42340000    # 45.0f

    add-int/lit8 p1, p1, -0x1

    int-to-float p1, p1

    sub-int/2addr p0, v0

    int-to-float p0, p0

    mul-float/2addr p0, p1

    div-float/2addr p0, v1

    float-to-int p0, p0

    return p0
.end method

.method private connectInternal(Landroid/net/wifi/WifiConfiguration;ILandroid/net/wifi/WifiManager$ActionListener;)V
    .locals 3

    if-eqz p3, :cond_0

    .line 5280
    new-instance v0, Landroid/net/wifi/WifiManager$ActionListenerProxy;

    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mLooper:Landroid/os/Looper;

    const-string v2, "connect"

    invoke-direct {v0, p0, v2, v1, p3}, Landroid/net/wifi/WifiManager$ActionListenerProxy;-><init>(Landroid/net/wifi/WifiManager;Ljava/lang/String;Landroid/os/Looper;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5283
    :goto_0
    :try_start_0
    iget-object p0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {p0, p1, p2, v0}, Landroid/net/wifi/IWifiManager;->connect(Landroid/net/wifi/WifiConfiguration;ILandroid/net/wifi/IActionListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    if-eqz v0, :cond_1

    const/16 p0, 0x9

    .line 5287
    invoke-virtual {v0, p0}, Landroid/net/wifi/WifiManager$ActionListenerProxy;->onFailure(I)V

    goto :goto_1

    :catch_1
    if-eqz v0, :cond_1

    const/4 p0, 0x0

    .line 5285
    invoke-virtual {v0, p0}, Landroid/net/wifi/WifiManager$ActionListenerProxy;->onFailure(I)V

    :cond_1
    :goto_1
    return-void
.end method

.method private getSupportedFeatures()J
    .locals 2

    .line 2792
    :try_start_0
    iget-object p0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {p0}, Landroid/net/wifi/IWifiManager;->getSupportedFeatures()J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p0

    .line 2794
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private isFeatureSupported(J)Z
    .locals 2

    .line 2799
    invoke-direct {p0}, Landroid/net/wifi/WifiManager;->getSupportedFeatures()J

    move-result-wide v0

    and-long/2addr v0, p1

    cmp-long p0, v0, p1

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static parseDppChannelList(Ljava/lang/String;)Landroid/util/SparseArray;
    .locals 11
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/SparseArray<",
            "[I>;"
        }
    .end annotation

    const-string v0, "Cannot parse DPP channel list"

    const-string v1, "WifiManager"

    .line 7473
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 7475
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    .line 7478
    :cond_0
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v4, ","

    invoke-direct {v3, p0, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 7480
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 7483
    :goto_0
    :try_start_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_5

    .line 7484
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x2f

    .line 7495
    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_3

    if-eqz p0, :cond_2

    .line 7500
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [I

    move v9, v6

    .line 7501
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_1

    .line 7502
    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    aput v10, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 7504
    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v2, p0, v8}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 7505
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 7509
    :cond_2
    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    add-int/lit8 v7, v7, 0x1

    .line 7510
    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 7511
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    if-nez p0, :cond_4

    .line 7515
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7516
    new-instance p0, Landroid/util/SparseArray;

    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    return-object p0

    .line 7518
    :cond_4
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    if-eqz p0, :cond_7

    .line 7524
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [I

    .line 7525
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v6, v5, :cond_6

    .line 7526
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 7528
    :cond_6
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v2, p0, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    return-object v2

    .line 7532
    :catch_0
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7533
    new-instance p0, Landroid/util/SparseArray;

    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    return-object p0
.end method


# virtual methods
.method public addNetwork(Landroid/net/wifi/WifiConfiguration;)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    .line 1688
    :cond_0
    iput v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 1689
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiManager;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result p0

    return p0
.end method

.method public addOrUpdatePasspointConfiguration(Landroid/net/wifi/hotspot2/PasspointConfiguration;)V
    .locals 1

    .line 2337
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object p0, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Landroid/net/wifi/IWifiManager;->addOrUpdatePasspointConfiguration(Landroid/net/wifi/hotspot2/PasspointConfiguration;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 2338
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 2341
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public allowAutojoin(IZ)V
    .locals 0
    .annotation build Landroid/annotation/RequiresPermission;
        value = "android.permission.NETWORK_SETTINGS"
    .end annotation

    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 5526
    :try_start_0
    iget-object p0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {p0, p1, p2}, Landroid/net/wifi/IWifiManager;->allowAutojoin(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 5528
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public allowAutojoinPasspoint(Ljava/lang/String;Z)V
    .locals 0
    .annotation build Landroid/annotation/RequiresPermission;
        value = "android.permission.NETWORK_SETTINGS"
    .end annotation

    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 5543
    :try_start_0
    iget-object p0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {p0, p1, p2}, Landroid/net/wifi/IWifiManager;->allowAutojoinPasspoint(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 5545
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public calculateSignalLevel(I)I
    .locals 0

    .line 3714
    :try_start_0
    iget-object p0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {p0, p1}, Landroid/net/wifi/IWifiManager;->calculateSignalLevel(I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 3716
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public connect(ILandroid/net/wifi/WifiManager$ActionListener;)V
    .locals 1
    .annotation build Landroid/annotation/RequiresPermission;
        anyOf = {
            "android.permission.NETWORK_SETTINGS",
            "android.permission.NETWORK_SETUP_WIZARD",
            "android.permission.NETWORK_STACK"
        }
    .end annotation

    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    if-ltz p1, :cond_0

    const/4 v0, 0x0

    .line 5341
    invoke-direct {p0, v0, p1, p2}, Landroid/net/wifi/WifiManager;->connectInternal(Landroid/net/wifi/WifiConfiguration;ILandroid/net/wifi/WifiManager$ActionListener;)V

    return-void

    .line 5340
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Network id cannot be negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V
    .locals 1
    .annotation build Landroid/annotation/RequiresPermission;
        anyOf = {
            "android.permission.NETWORK_SETTINGS",
            "android.permission.NETWORK_SETUP_WIZARD",
            "android.permission.NETWORK_STACK"
        }
    .end annotation

    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, -0x1

    .line 5314
    invoke-direct {p0, p1, v0, p2}, Landroid/net/wifi/WifiManager;->connectInternal(Landroid/net/wifi/WifiConfiguration;ILandroid/net/wifi/WifiManager$ActionListener;)V

    return-void

    .line 5313
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "config cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public disableEphemeralNetwork(Ljava/lang/String;)V
    .locals 1
    .annotation build Landroid/annotation/RequiresPermission;
        anyOf = {
            "android.permission.NETWORK_SETTINGS",
            "android.permission.NETWORK_STACK"
        }
    .end annotation

    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 5601
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5605
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object p0, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Landroid/net/wifi/IWifiManager;->disableEphemeralNetwork(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 5607
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    .line 5602
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "SSID cannot be null or empty!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public disableNetwork(I)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2554
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object p0, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Landroid/net/wifi/IWifiManager;->disableNetwork(ILjava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 2556
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public disconnect()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2583
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object p0, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Landroid/net/wifi/IWifiManager;->disconnect(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 2585
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public enableNetwork(IZ)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2518
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object p0, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p1, p2, p0}, Landroid/net/wifi/IWifiManager;->enableNetwork(IZLjava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 2520
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public enableVerboseLogging(I)V
    .locals 0
    .annotation build Landroid/annotation/RequiresPermission;
        value = "android.permission.NETWORK_SETTINGS"
    .end annotation

    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
        maxTargetSdk = 0x1d
        publicAlternatives = "Use {@code #setVerboseLoggingEnabled(boolean)} instead."
    .end annotation

    .line 6109
    :try_start_0
    iget-object p0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {p0, p1}, Landroid/net/wifi/IWifiManager;->enableVerboseLogging(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 6111
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public factoryReset()V
    .locals 1
    .annotation build Landroid/annotation/RequiresPermission;
        value = "android.permission.NETWORK_SETTINGS"
    .end annotation

    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 6160
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object p0, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Landroid/net/wifi/IWifiManager;->factoryReset(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 6162
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public forget(ILandroid/net/wifi/WifiManager$ActionListener;)V
    .locals 3
    .annotation build Landroid/annotation/RequiresPermission;
        anyOf = {
            "android.permission.NETWORK_SETTINGS",
            "android.permission.NETWORK_SETUP_WIZARD",
            "android.permission.NETWORK_STACK"
        }
    .end annotation

    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    if-ltz p1, :cond_2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 5454
    new-instance v0, Landroid/net/wifi/WifiManager$ActionListenerProxy;

    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mLooper:Landroid/os/Looper;

    const-string v2, "forget"

    invoke-direct {v0, p0, v2, v1, p2}, Landroid/net/wifi/WifiManager$ActionListenerProxy;-><init>(Landroid/net/wifi/WifiManager;Ljava/lang/String;Landroid/os/Looper;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 5457
    :cond_0
    :try_start_0
    iget-object p0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {p0, p1, v0}, Landroid/net/wifi/IWifiManager;->forget(ILandroid/net/wifi/IActionListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    if-eqz v0, :cond_1

    const/16 p0, 0x9

    .line 5461
    invoke-virtual {v0, p0}, Landroid/net/wifi/WifiManager$ActionListenerProxy;->onFailure(I)V

    goto :goto_0

    :catch_1
    if-eqz v0, :cond_1

    const/4 p0, 0x0

    .line 5459
    invoke-virtual {v0, p0}, Landroid/net/wifi/WifiManager$ActionListenerProxy;->onFailure(I)V

    :cond_1
    :goto_0
    return-void

    .line 5451
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Network id cannot be negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getAllMatchingWifiConfigs(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation build Landroid/annotation/RequiresPermission;
        anyOf = {
            "android.permission.NETWORK_SETTINGS",
            "android.permission.NETWORK_SETUP_WIZARD"
        }
    .end annotation

    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Landroid/net/wifi/WifiConfiguration;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;>;>;>;"
        }
    .end annotation

    .line 1542
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1544
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    .line 1545
    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->getAllMatchingPasspointProfilesForScanResults(Ljava/util/List;)Ljava/util/Map;

    move-result-object p1

    .line 1546
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 1549
    :cond_0
    iget-object p0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    new-instance v1, Ljava/util/ArrayList;

    .line 1551
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1550
    invoke-interface {p0, v1}, Landroid/net/wifi/IWifiManager;->getWifiConfigsForPasspointProfiles(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    .line 1552
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 1554
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getProfileKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    if-eqz v2, :cond_1

    .line 1556
    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    return-object v0

    :catch_0
    move-exception p0

    .line 1560
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public getConfiguredNetworks()Ljava/util/List;
    .locals 3
    .annotation build Landroid/annotation/RequiresPermission;
        allOf = {
            "android.permission.ACCESS_FINE_LOCATION",
            "android.permission.ACCESS_WIFI_STATE"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1468
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    .line 1469
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    .line 1470
    invoke-virtual {p0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    .line 1469
    invoke-interface {v0, v1, p0, v2}, Landroid/net/wifi/IWifiManager;->getConfiguredNetworks(Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/modules/utils/ParceledListSlice;

    move-result-object p0

    if-nez p0, :cond_0

    .line 1472
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 1474
    :cond_0
    invoke-virtual {p0}, Lcom/android/modules/utils/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1476
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public getConnectionInfo()Landroid/net/wifi/WifiInfo;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3236
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    .line 3237
    invoke-virtual {p0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object p0

    .line 3236
    invoke-interface {v0, v1, p0}, Landroid/net/wifi/IWifiManager;->getConnectionInfo(Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WifiInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 3239
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 0
    .annotation build Landroid/annotation/RequiresPermission;
        value = "android.permission.NETWORK_SETTINGS"
    .end annotation

    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3367
    :try_start_0
    iget-object p0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {p0}, Landroid/net/wifi/IWifiManager;->getCountryCode()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 3369
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public getCurrentNetwork()Landroid/net/Network;
    .locals 0
    .annotation build Landroid/annotation/RequiresPermission;
        anyOf = {
            "android.permission.NETWORK_SETTINGS",
            "android.permission.NETWORK_SETUP_WIZARD"
        }
    .end annotation

    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 6178
    :try_start_0
    iget-object p0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {p0}, Landroid/net/wifi/IWifiManager;->getCurrentNetwork()Landroid/net/Network;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 6180
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public getFactoryMacAddresses()[Ljava/lang/String;
    .locals 0
    .annotation build Landroid/annotation/RequiresPermission;
        value = "android.permission.NETWORK_SETTINGS"
    .end annotation

    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 6594
    :try_start_0
    iget-object p0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {p0}, Landroid/net/wifi/IWifiManager;->getFactoryMacAddresses()[Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 6596
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public getMatchingOsuProviders(Ljava/util/List;)Ljava/util/Map;
    .locals 0
    .annotation build Landroid/annotation/RequiresPermission;
        anyOf = {
            "android.permission.NETWORK_SETTINGS",
            "android.permission.NETWORK_SETUP_WIZARD"
        }
    .end annotation

    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)",
            "Ljava/util/Map<",
            "Landroid/net/wifi/hotspot2/OsuProvider;",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1615
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-object p0

    .line 1618
    :cond_0
    :try_start_0
    iget-object p0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {p0, p1}, Landroid/net/wifi/IWifiManager;->getMatchingOsuProviders(Ljava/util/List;)Ljava/util/Map;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1620
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public getMatchingPasspointConfigsForOsuProviders(Ljava/util/Set;)Ljava/util/Map;
    .locals 1
    .annotation build Landroid/annotation/RequiresPermission;
        anyOf = {
            "android.permission.NETWORK_SETTINGS",
            "android.permission.NETWORK_SETUP_WIZARD"
        }
    .end annotation

    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/net/wifi/hotspot2/OsuProvider;",
            ">;)",
            "Ljava/util/Map<",
            "Landroid/net/wifi/hotspot2/OsuProvider;",
            "Landroid/net/wifi/hotspot2/PasspointConfiguration;",
            ">;"
        }
    .end annotation

    .line 1645
    :try_start_0
    iget-object p0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {p0, v0}, Landroid/net/wifi/IWifiManager;->getMatchingPasspointConfigsForOsuProviders(Ljava/util/List;)Ljava/util/Map;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1648
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public getMaxSignalLevel()I
    .locals 1

    const v0, 0x7fffffff

    .line 3726
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(I)I

    move-result p0

    return p0
.end method

.method public getPasspointConfigurations()Ljava/util/List;
    .locals 1
    .annotation build Landroid/annotation/RequiresPermission;
        anyOf = {
            "android.permission.NETWORK_SETTINGS",
            "android.permission.NETWORK_SETUP_WIZARD"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/hotspot2/PasspointConfiguration;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2384
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object p0, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Landroid/net/wifi/IWifiManager;->getPasspointConfigurations(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2386
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public getPrivilegedConfiguredNetworks()Ljava/util/List;
    .locals 2
    .annotation build Landroid/annotation/RequiresPermission;
        allOf = {
            "android.permission.ACCESS_FINE_LOCATION",
            "android.permission.ACCESS_WIFI_STATE",
            "android.permission.READ_WIFI_CREDENTIAL"
        }
    .end annotation

    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .line 1511
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    .line 1512
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    .line 1513
    invoke-virtual {p0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object p0

    .line 1512
    invoke-interface {v0, v1, p0}, Landroid/net/wifi/IWifiManager;->getPrivilegedConfiguredNetworks(Ljava/lang/String;Ljava/lang/String;)Lcom/android/modules/utils/ParceledListSlice;

    move-result-object p0

    if-nez p0, :cond_0

    .line 1515
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 1517
    :cond_0
    invoke-virtual {p0}, Lcom/android/modules/utils/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1519
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public getScanResults()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .line 3251
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    .line 3252
    invoke-virtual {p0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object p0

    .line 3251
    invoke-interface {v0, v1, p0}, Landroid/net/wifi/IWifiManager;->getScanResults(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 3254
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public getSoftApClientInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 8252
    :try_start_0
    iget-object p0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {p0, p1}, Landroid/net/wifi/IWifiManager;->getSoftApClientInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 8254
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;
    .locals 0
    .annotation build Landroid/annotation/RequiresPermission;
        anyOf = {
            "android.permission.NETWORK_SETTINGS",
            "android.permission.OVERRIDE_WIFI_CONFIG"
        }
    .end annotation

    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4351
    :try_start_0
    iget-object p0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {p0}, Landroid/net/wifi/IWifiManager;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 4353
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public getVerboseLoggingLevel()I
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 6144
    :try_start_0
    iget-object p0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {p0}, Landroid/net/wifi/IWifiManager;->getVerboseLoggingLevel()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 6146
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public getWifiApState()I
    .locals 0
    .annotation build Landroid/annotation/RequiresPermission;
        value = "android.permission.ACCESS_WIFI_STATE"
    .end annotation

    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4296
    :try_start_0
    iget-object p0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {p0}, Landroid/net/wifi/IWifiManager;->getWifiApEnabledState()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 4298
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public getWifiConfigForMatchedNetworkSuggestionsSharedWithUser(Ljava/util/List;)Ljava/util/List;
    .locals 0
    .annotation build Landroid/annotation/RequiresPermission;
        anyOf = {
            "android.permission.NETWORK_SETTINGS",
            "android.permission.NETWORK_SETUP_WIZARD"
        }
    .end annotation

    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .line 1590
    :try_start_0
    iget-object p0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {p0, p1}, Landroid/net/wifi/IWifiManager;->getWifiConfigForMatchedNetworkSuggestionsSharedWithUser(Ljava/util/List;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1592
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public getWifiState()I
    .locals 0

    .line 3664
    :try_start_0
    iget-object p0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {p0}, Landroid/net/wifi/IWifiManager;->getWifiEnabledState()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 3666
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public is5GHzBandSupported()Z
    .locals 0

    .line 2980
    :try_start_0
    iget-object p0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {p0}, Landroid/net/wifi/IWifiManager;->is5GHzBandSupported()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 2982
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public is6GHzBandSupported()Z
    .locals 0

    .line 3006
    :try_start_0
    iget-object p0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {p0}, Landroid/net/wifi/IWifiManager;->is6GHzBandSupported()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 3008
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public isAutoWakeupEnabled()Z
    .locals 0
    .annotation build Landroid/annotation/RequiresPermission;
        value = "android.permission.ACCESS_WIFI_STATE"
    .end annotation

    .line 7891
    :try_start_0
    iget-object p0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {p0}, Landroid/net/wifi/IWifiManager;->isAutoWakeupEnabled()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 7893
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public isCarrierNetworkOffloadEnabled(IZ)Z
    .locals 0
    .annotation build Landroid/annotation/RequiresPermission;
        value = "android.permission.ACCESS_WIFI_STATE"
    .end annotation

    .line 7938
    :try_start_0
    iget-object p0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {p0, p1, p2}, Landroid/net/wifi/IWifiManager;->isCarrierNetworkOffloadEnabled(IZ)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 7940
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public isConnectedMacRandomizationSupported()Z
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const-wide v0, 0x200000000L

    .line 2950
    invoke-direct {p0, v0, v1}, Landroid/net/wifi/WifiManager;->isFeatureSupported(J)Z

    move-result p0

    return p0
.end method

.method public isEasyConnectSupported()Z
    .locals 2

    const-wide v0, 0x80000000L

    .line 6528
    invoke-direct {p0, v0, v1}, Landroid/net/wifi/WifiManager;->isFeatureSupported(J)Z

    move-result p0

    return p0
.end method

.method public isEnhancedOpenSupported()Z
    .locals 2

    const-wide/32 v0, 0x20000000

    .line 6516
    invoke-direct {p0, v0, v1}, Landroid/net/wifi/WifiManager;->isFeatureSupported(J)Z

    move-result p0

    return p0
.end method

.method public isScanAlwaysAvailable()Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3322
    :try_start_0
    iget-object p0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {p0}, Landroid/net/wifi/IWifiManager;->isScanAlwaysAvailable()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 3324
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public isScanThrottleEnabled()Z
    .locals 0
    .annotation build Landroid/annotation/RequiresPermission;
        value = "android.permission.ACCESS_WIFI_STATE"
    .end annotation

    .line 7845
    :try_start_0
    iget-object p0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {p0}, Landroid/net/wifi/IWifiManager;->isScanThrottleEnabled()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 7847
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public isStaApConcurrencySupported()Z
    .locals 2

    const-wide/32 v0, 0x8000

    .line 2849
    invoke-direct {p0, v0, v1}, Landroid/net/wifi/WifiManager;->isFeatureSupported(J)Z

    move-result p0

    return p0
.end method

.method public isVerboseLoggingEnabled()Z
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 6127
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getVerboseLoggingLevel()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isVht8ssCapableDevice()Z
    .locals 0

    .line 8074
    :try_start_0
    iget-object p0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {p0}, Landroid/net/wifi/IWifiManager;->isVht8ssCapableDevice()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 8076
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public isWifiApEnabled()Z
    .locals 1
    .annotation build Landroid/annotation/RequiresPermission;
        value = "android.permission.ACCESS_WIFI_STATE"
    .end annotation

    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4312
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result p0

    const/16 v0, 0xd

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isWifiEnabled()Z
    .locals 1

    .line 3676
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isWifiStandardSupported(I)Z
    .locals 0

    .line 3020
    :try_start_0
    iget-object p0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {p0, p1}, Landroid/net/wifi/IWifiManager;->isWifiStandardSupported(I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 3022
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public isWpa3SaeSupported()Z
    .locals 2

    const-wide/32 v0, 0x8000000

    .line 6502
    invoke-direct {p0, v0, v1}, Landroid/net/wifi/WifiManager;->isFeatureSupported(J)Z

    move-result p0

    return p0
.end method

.method public isWpa3SuiteBSupported()Z
    .locals 2

    const-wide/32 v0, 0x10000000

    .line 6509
    invoke-direct {p0, v0, v1}, Landroid/net/wifi/WifiManager;->isFeatureSupported(J)Z

    move-result p0

    return p0
.end method

.method public registerNetworkRequestMatchCallback(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$NetworkRequestMatchCallback;)V
    .locals 3
    .annotation build Landroid/annotation/RequiresPermission;
        value = "android.permission.NETWORK_SETTINGS"
    .end annotation

    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    const-string v0, "WifiManager"

    .line 2131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerNetworkRequestMatchCallback: callback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", executor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2135
    :try_start_0
    sget-object v0, Landroid/net/wifi/WifiManager;->sNetworkRequestMatchCallbackMap:Landroid/util/SparseArray;

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2136
    :try_start_1
    new-instance v1, Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy;

    invoke-direct {v1, p0, p1, p2}, Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy;-><init>(Landroid/net/wifi/WifiManager;Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$NetworkRequestMatchCallback;)V

    .line 2138
    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2140
    iget-object p0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {p0, v1}, Landroid/net/wifi/IWifiManager;->registerNetworkRequestMatchCallback(Landroid/net/wifi/INetworkRequestMatchCallback;)V

    .line 2141
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    .line 2143
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    .line 2130
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "callback cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2129
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "executor cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public registerSoftApCallback(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$SoftApCallback;)V
    .locals 3
    .annotation build Landroid/annotation/RequiresPermission;
        anyOf = {
            "android.permission.NETWORK_SETTINGS",
            "android.permission.MAINLINE_NETWORK_STACK",
            "android.permission.OVERRIDE_WIFI_CONFIG"
        }
    .end annotation

    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    const-string v0, "WifiManager"

    .line 4893
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerSoftApCallback: callback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", executor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4896
    :try_start_0
    sget-object v0, Landroid/net/wifi/WifiManager;->sSoftApCallbackMap:Landroid/util/SparseArray;

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4897
    :try_start_1
    new-instance v1, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;

    invoke-direct {v1, p0, p1, p2}, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;-><init>(Landroid/net/wifi/WifiManager;Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$SoftApCallback;)V

    .line 4898
    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4899
    iget-object p0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {p0, v1}, Landroid/net/wifi/IWifiManager;->registerSoftApCallback(Landroid/net/wifi/ISoftApCallback;)V

    .line 4900
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    .line 4902
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    .line 4892
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "callback cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4891
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "executor cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public registerSubsystemRestartTrackingCallback(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback;)V
    .locals 1
    .annotation build Landroid/annotation/RequiresPermission;
        value = "android.permission.ACCESS_WIFI_STATE"
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 3596
    invoke-virtual {p2}, Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback;->getProxy()Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback$SubsystemRestartCallbackProxy;

    move-result-object v0

    .line 3597
    invoke-virtual {v0, p1, p2}, Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback$SubsystemRestartCallbackProxy;->initProxy(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback;)V

    .line 3599
    :try_start_0
    iget-object p0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {p0, v0}, Landroid/net/wifi/IWifiManager;->registerSubsystemRestartCallback(Landroid/net/wifi/ISubsystemRestartCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 3601
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback$SubsystemRestartCallbackProxy;->cleanUpProxy()V

    .line 3602
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    .line 3595
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "callback must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3594
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "executor must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public removePasspointConfiguration(Ljava/lang/String;)V
    .locals 1
    .annotation build Landroid/annotation/RequiresPermission;
        anyOf = {
            "android.permission.NETWORK_SETTINGS",
            "android.permission.NETWORK_CARRIER_PROVISIONING"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2361
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object p0, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Landroid/net/wifi/IWifiManager;->removePasspointConfiguration(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 2362
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 2365
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public restartWifiSubsystem()V
    .locals 0
    .annotation build Landroid/annotation/RequiresPermission;
        value = "android.permission.RESTART_WIFI_SUBSYSTEM"
    .end annotation

    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3649
    :try_start_0
    iget-object p0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {p0}, Landroid/net/wifi/IWifiManager;->restartWifiSubsystem()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 3651
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V
    .locals 3
    .annotation build Landroid/annotation/RequiresPermission;
        anyOf = {
            "android.permission.NETWORK_SETTINGS",
            "android.permission.NETWORK_SETUP_WIZARD",
            "android.permission.NETWORK_STACK"
        }
    .end annotation

    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 5420
    new-instance v0, Landroid/net/wifi/WifiManager$ActionListenerProxy;

    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mLooper:Landroid/os/Looper;

    const-string v2, "save"

    invoke-direct {v0, p0, v2, v1, p2}, Landroid/net/wifi/WifiManager$ActionListenerProxy;-><init>(Landroid/net/wifi/WifiManager;Ljava/lang/String;Landroid/os/Looper;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 5423
    :cond_0
    :try_start_0
    iget-object p0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {p0, p1, v0}, Landroid/net/wifi/IWifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/IActionListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    if-eqz v0, :cond_1

    const/16 p0, 0x9

    .line 5427
    invoke-virtual {v0, p0}, Landroid/net/wifi/WifiManager$ActionListenerProxy;->onFailure(I)V

    goto :goto_0

    :catch_1
    if-eqz v0, :cond_1

    const/4 p0, 0x0

    .line 5425
    invoke-virtual {v0, p0}, Landroid/net/wifi/WifiManager$ActionListenerProxy;->onFailure(I)V

    :cond_1
    :goto_0
    return-void

    .line 5417
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "config cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setAutoWakeupEnabled(Z)V
    .locals 0
    .annotation build Landroid/annotation/RequiresPermission;
        value = "android.permission.NETWORK_SETTINGS"
    .end annotation

    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 7868
    :try_start_0
    iget-object p0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {p0, p1}, Landroid/net/wifi/IWifiManager;->setAutoWakeupEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 7870
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public setCarrierNetworkOffloadEnabled(IZZ)V
    .locals 0
    .annotation build Landroid/annotation/RequiresPermission;
        anyOf = {
            "android.permission.NETWORK_SETTINGS",
            "android.permission.NETWORK_SETUP_WIZARD"
        }
    .end annotation

    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 7921
    :try_start_0
    iget-object p0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {p0, p1, p2, p3}, Landroid/net/wifi/IWifiManager;->setCarrierNetworkOffloadEnabled(IZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 7923
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public setMacRandomizationSettingPasspointEnabled(Ljava/lang/String;Z)V
    .locals 0
    .annotation build Landroid/annotation/RequiresPermission;
        value = "android.permission.NETWORK_SETTINGS"
    .end annotation

    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 5561
    :try_start_0
    iget-object p0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {p0, p1, p2}, Landroid/net/wifi/IWifiManager;->setMacRandomizationSettingPasspointEnabled(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 5563
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public setPasspointMeteredOverride(Ljava/lang/String;I)V
    .locals 0
    .annotation build Landroid/annotation/RequiresPermission;
        value = "android.permission.NETWORK_SETTINGS"
    .end annotation

    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 5581
    :try_start_0
    iget-object p0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {p0, p1, p2}, Landroid/net/wifi/IWifiManager;->setPasspointMeteredOverride(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 5583
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public setScanAlwaysAvailable(Z)V
    .locals 1
    .annotation build Landroid/annotation/RequiresPermission;
        value = "android.permission.NETWORK_SETTINGS"
    .end annotation

    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3303
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object p0, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Landroid/net/wifi/IWifiManager;->setScanAlwaysAvailable(ZLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 3305
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public setScanThrottleEnabled(Z)V
    .locals 0
    .annotation build Landroid/annotation/RequiresPermission;
        value = "android.permission.NETWORK_SETTINGS"
    .end annotation

    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 7823
    :try_start_0
    iget-object p0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {p0, p1}, Landroid/net/wifi/IWifiManager;->setScanThrottleEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 7825
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public setSoftApConfiguration(Landroid/net/wifi/SoftApConfiguration;)Z
    .locals 1
    .annotation build Landroid/annotation/RequiresPermission;
        anyOf = {
            "android.permission.NETWORK_SETTINGS",
            "android.permission.OVERRIDE_WIFI_CONFIG"
        }
    .end annotation

    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4404
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object p0, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    .line 4405
    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object p0

    .line 4404
    invoke-interface {v0, p1, p0}, Landroid/net/wifi/IWifiManager;->setSoftApConfiguration(Landroid/net/wifi/SoftApConfiguration;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 4407
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public setVerboseLoggingEnabled(Z)V
    .locals 0
    .annotation build Landroid/annotation/RequiresPermission;
        value = "android.permission.NETWORK_SETTINGS"
    .end annotation

    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 6082
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->enableVerboseLogging(I)V

    return-void
.end method

.method public setWifiEnabled(Z)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3485
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object p0, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Landroid/net/wifi/IWifiManager;->setWifiEnabled(Ljava/lang/String;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 3487
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public setWifiScoringEnabled(Z)Z
    .locals 2
    .annotation build Landroid/annotation/RequiresPermission;
        value = "android.permission.NETWORK_SETTINGS"
    .end annotation

    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 8092
    iget-boolean v0, p0, Landroid/net/wifi/WifiManager;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 8093
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setWifiScoringEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8096
    :cond_0
    :try_start_0
    iget-object p0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {p0, p1}, Landroid/net/wifi/IWifiManager;->setWifiScoringEnabled(Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 8098
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public startEasyConnectAsConfiguratorInitiator(Ljava/lang/String;IILjava/util/concurrent/Executor;Landroid/net/wifi/EasyConnectStatusCallback;)V
    .locals 7
    .annotation build Landroid/annotation/RequiresPermission;
        anyOf = {
            "android.permission.NETWORK_SETTINGS",
            "android.permission.NETWORK_SETUP_WIZARD"
        }
    .end annotation

    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 6826
    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    .line 6828
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object p0, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v6, Landroid/net/wifi/WifiManager$EasyConnectCallbackProxy;

    invoke-direct {v6, p4, p5}, Landroid/net/wifi/WifiManager$EasyConnectCallbackProxy;-><init>(Ljava/util/concurrent/Executor;Landroid/net/wifi/EasyConnectStatusCallback;)V

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-interface/range {v0 .. v6}, Landroid/net/wifi/IWifiManager;->startDppAsConfiguratorInitiator(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;IILandroid/net/wifi/IDppCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 6832
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public startEasyConnectAsEnrolleeInitiator(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/net/wifi/EasyConnectStatusCallback;)V
    .locals 2
    .annotation build Landroid/annotation/RequiresPermission;
        anyOf = {
            "android.permission.NETWORK_SETTINGS",
            "android.permission.NETWORK_SETUP_WIZARD"
        }
    .end annotation

    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 6853
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    .line 6855
    :try_start_0
    iget-object p0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    new-instance v1, Landroid/net/wifi/WifiManager$EasyConnectCallbackProxy;

    invoke-direct {v1, p2, p3}, Landroid/net/wifi/WifiManager$EasyConnectCallbackProxy;-><init>(Ljava/util/concurrent/Executor;Landroid/net/wifi/EasyConnectStatusCallback;)V

    invoke-interface {p0, v0, p1, v1}, Landroid/net/wifi/IWifiManager;->startDppAsEnrolleeInitiator(Landroid/os/IBinder;Ljava/lang/String;Landroid/net/wifi/IDppCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 6858
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public startRestrictingAutoJoinToSubscriptionId(I)V
    .locals 0
    .annotation build Landroid/annotation/RequiresPermission;
        anyOf = {
            "android.permission.NETWORK_SETTINGS",
            "android.permission.NETWORK_SETUP_WIZARD"
        }
    .end annotation

    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 5365
    :try_start_0
    iget-object p0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {p0, p1}, Landroid/net/wifi/IWifiManager;->startRestrictingAutoJoinToSubscriptionId(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 5367
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public startScan()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 3156
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiManager;->startScan(Landroid/os/WorkSource;)Z

    move-result p0

    return p0
.end method

.method public startScan(Landroid/os/WorkSource;)Z
    .locals 1
    .annotation build Landroid/annotation/RequiresPermission;
        value = "android.permission.UPDATE_DEVICE_STATS"
    .end annotation

    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3164
    :try_start_0
    iget-object p1, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object p1

    .line 3165
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v0

    .line 3166
    iget-object p0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {p0, p1, v0}, Landroid/net/wifi/IWifiManager;->startScan(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 3168
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public startSubscriptionProvisioning(Landroid/net/wifi/hotspot2/OsuProvider;Ljava/util/concurrent/Executor;Landroid/net/wifi/hotspot2/ProvisioningCallback;)V
    .locals 1
    .annotation build Landroid/annotation/RequiresPermission;
        anyOf = {
            "android.permission.NETWORK_SETTINGS",
            "android.permission.NETWORK_SETUP_WIZARD"
        }
    .end annotation

    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 6313
    :try_start_0
    iget-object p0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    new-instance v0, Landroid/net/wifi/WifiManager$ProvisioningCallbackProxy;

    invoke-direct {v0, p2, p3}, Landroid/net/wifi/WifiManager$ProvisioningCallbackProxy;-><init>(Ljava/util/concurrent/Executor;Landroid/net/wifi/hotspot2/ProvisioningCallback;)V

    invoke-interface {p0, p1, v0}, Landroid/net/wifi/IWifiManager;->startSubscriptionProvisioning(Landroid/net/wifi/hotspot2/OsuProvider;Landroid/net/wifi/hotspot2/IProvisioningCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 6316
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    .line 6310
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "callback must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6307
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "executor must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public stopEasyConnectSession()V
    .locals 0
    .annotation build Landroid/annotation/RequiresPermission;
        anyOf = {
            "android.permission.NETWORK_SETTINGS",
            "android.permission.NETWORK_SETUP_WIZARD"
        }
    .end annotation

    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 6936
    :try_start_0
    iget-object p0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {p0}, Landroid/net/wifi/IWifiManager;->stopDppSession()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 6938
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public stopRestrictingAutoJoinToSubscriptionId()V
    .locals 0
    .annotation build Landroid/annotation/RequiresPermission;
        anyOf = {
            "android.permission.NETWORK_SETTINGS",
            "android.permission.NETWORK_SETUP_WIZARD"
        }
    .end annotation

    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 5383
    :try_start_0
    iget-object p0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {p0}, Landroid/net/wifi/IWifiManager;->stopRestrictingAutoJoinToSubscriptionId()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 5385
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public unregisterNetworkRequestMatchCallback(Landroid/net/wifi/WifiManager$NetworkRequestMatchCallback;)V
    .locals 3
    .annotation build Landroid/annotation/RequiresPermission;
        value = "android.permission.NETWORK_SETTINGS"
    .end annotation

    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    if-eqz p1, :cond_1

    const-string v0, "WifiManager"

    .line 2163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterNetworkRequestMatchCallback: callback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2166
    :try_start_0
    sget-object v0, Landroid/net/wifi/WifiManager;->sNetworkRequestMatchCallbackMap:Landroid/util/SparseArray;

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2167
    :try_start_1
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    .line 2168
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-nez v1, :cond_0

    const-string p0, "WifiManager"

    .line 2169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown external callback "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2170
    monitor-exit v0

    return-void

    .line 2172
    :cond_0
    iget-object p0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    .line 2173
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/INetworkRequestMatchCallback;

    .line 2172
    invoke-interface {p0, v1}, Landroid/net/wifi/IWifiManager;->unregisterNetworkRequestMatchCallback(Landroid/net/wifi/INetworkRequestMatchCallback;)V

    .line 2174
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 2175
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    .line 2177
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    .line 2162
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "callback cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public unregisterSoftApCallback(Landroid/net/wifi/WifiManager$SoftApCallback;)V
    .locals 3
    .annotation build Landroid/annotation/RequiresPermission;
        anyOf = {
            "android.permission.NETWORK_SETTINGS",
            "android.permission.MAINLINE_NETWORK_STACK",
            "android.permission.OVERRIDE_WIFI_CONFIG"
        }
    .end annotation

    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    if-eqz p1, :cond_1

    const-string v0, "WifiManager"

    .line 4922
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterSoftApCallback: callback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4925
    :try_start_0
    sget-object v0, Landroid/net/wifi/WifiManager;->sSoftApCallbackMap:Landroid/util/SparseArray;

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4926
    :try_start_1
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    .line 4927
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-nez v1, :cond_0

    const-string p0, "WifiManager"

    .line 4928
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown external callback "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4929
    monitor-exit v0

    return-void

    .line 4931
    :cond_0
    iget-object p0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ISoftApCallback;

    invoke-interface {p0, v1}, Landroid/net/wifi/IWifiManager;->unregisterSoftApCallback(Landroid/net/wifi/ISoftApCallback;)V

    .line 4932
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 4933
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    .line 4935
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    .line 4921
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "callback cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public unregisterSubsystemRestartTrackingCallback(Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback;)V
    .locals 0
    .annotation build Landroid/annotation/RequiresPermission;
        value = "android.permission.ACCESS_WIFI_STATE"
    .end annotation

    if-eqz p1, :cond_0

    .line 3617
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback;->getProxy()Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback$SubsystemRestartCallbackProxy;

    move-result-object p1

    .line 3619
    :try_start_0
    iget-object p0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {p0, p1}, Landroid/net/wifi/IWifiManager;->unregisterSubsystemRestartCallback(Landroid/net/wifi/ISubsystemRestartCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3623
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback$SubsystemRestartCallbackProxy;->cleanUpProxy()V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3621
    :try_start_1
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3623
    :goto_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback$SubsystemRestartCallbackProxy;->cleanUpProxy()V

    .line 3624
    throw p0

    .line 3616
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "callback must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

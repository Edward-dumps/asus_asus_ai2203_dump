.class public Lasus/net/vicewifi/WifiViceManager;
.super Ljava/lang/Object;
.source "WifiViceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lasus/net/vicewifi/WifiViceManager$ActionListenerProxy;,
        Lasus/net/vicewifi/WifiViceManager$ActionListener;
    }
.end annotation


# static fields
.field public static final ALL_ZEROS_MAC_ADDRESS:Landroid/net/MacAddress;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private mLooper:Landroid/os/Looper;

.field mService:Lasus/net/vicewifi/IWifiViceManager;
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private final mTargetSdkVersion:I

.field private mVerboseLoggingEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "00:00:00:00:00:00"

    .line 1153
    invoke-static {v0}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object v0

    sput-object v0, Lasus/net/vicewifi/WifiViceManager;->ALL_ZEROS_MAC_ADDRESS:Landroid/net/MacAddress;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lasus/net/vicewifi/IWifiViceManager;Landroid/os/Looper;)V
    .locals 1

    .line 1182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1165
    iput-boolean v0, p0, Lasus/net/vicewifi/WifiViceManager;->mVerboseLoggingEnabled:Z

    .line 1167
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lasus/net/vicewifi/WifiViceManager;->mLock:Ljava/lang/Object;

    .line 1183
    iput-object p1, p0, Lasus/net/vicewifi/WifiViceManager;->mContext:Landroid/content/Context;

    .line 1184
    iput-object p2, p0, Lasus/net/vicewifi/WifiViceManager;->mService:Lasus/net/vicewifi/IWifiViceManager;

    .line 1185
    iput-object p3, p0, Lasus/net/vicewifi/WifiViceManager;->mLooper:Landroid/os/Looper;

    .line 1186
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iput p1, p0, Lasus/net/vicewifi/WifiViceManager;->mTargetSdkVersion:I

    .line 1187
    invoke-direct {p0}, Lasus/net/vicewifi/WifiViceManager;->updateVerboseLoggingEnabledFromService()V

    return-void
.end method

.method static synthetic access$000(Lasus/net/vicewifi/WifiViceManager;)Z
    .locals 0

    .line 112
    iget-boolean p0, p0, Lasus/net/vicewifi/WifiViceManager;->mVerboseLoggingEnabled:Z

    return p0
.end method

.method private addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I
    .locals 1

    .line 1361
    :try_start_0
    iget-object v0, p0, Lasus/net/vicewifi/WifiViceManager;->mService:Lasus/net/vicewifi/IWifiViceManager;

    iget-object p0, p0, Lasus/net/vicewifi/WifiViceManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Lasus/net/vicewifi/IWifiViceManager;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 1363
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private connectInternal(Landroid/net/wifi/WifiConfiguration;ILasus/net/vicewifi/WifiViceManager$ActionListener;)V
    .locals 8

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 2390
    new-instance v0, Lasus/net/vicewifi/WifiViceManager$ActionListenerProxy;

    iget-object v1, p0, Lasus/net/vicewifi/WifiViceManager;->mLooper:Landroid/os/Looper;

    const-string v2, "connect"

    invoke-direct {v0, p0, v2, v1, p3}, Lasus/net/vicewifi/WifiViceManager$ActionListenerProxy;-><init>(Lasus/net/vicewifi/WifiViceManager;Ljava/lang/String;Landroid/os/Looper;Lasus/net/vicewifi/WifiViceManager$ActionListener;)V

    .line 2391
    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    move-object v5, v1

    goto :goto_0

    :cond_0
    move-object v5, v0

    :goto_0
    const/4 v1, 0x0

    .line 2394
    :try_start_0
    iget-object v2, p0, Lasus/net/vicewifi/WifiViceManager;->mService:Lasus/net/vicewifi/IWifiViceManager;

    if-nez p3, :cond_1

    move v7, v1

    goto :goto_1

    .line 2395
    :cond_1
    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result p0

    move v7, p0

    :goto_1
    move-object v3, p1

    move v4, p2

    move-object v6, v0

    .line 2394
    invoke-interface/range {v2 .. v7}, Lasus/net/vicewifi/IWifiViceManager;->connect(Landroid/net/wifi/WifiConfiguration;ILandroid/os/IBinder;Landroid/net/wifi/IActionListener;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    if-eqz v0, :cond_2

    const/16 p0, 0x9

    .line 2399
    invoke-virtual {v0, p0}, Lasus/net/vicewifi/WifiViceManager$ActionListenerProxy;->onFailure(I)V

    goto :goto_2

    :catch_1
    if-eqz v0, :cond_2

    .line 2397
    invoke-virtual {v0, v1}, Lasus/net/vicewifi/WifiViceManager$ActionListenerProxy;->onFailure(I)V

    :cond_2
    :goto_2
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lasus/net/vicewifi/WifiViceManager;
    .locals 3

    const-string/jumbo v0, "vicewifi"

    .line 1191
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "WifiViceManager"

    const-string v0, "Vice Wifi service not available"

    .line 1193
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 1196
    :cond_0
    invoke-static {v0}, Lasus/net/vicewifi/IWifiViceManager$Stub;->asInterface(Landroid/os/IBinder;)Lasus/net/vicewifi/IWifiViceManager;

    move-result-object v0

    .line 1197
    new-instance v1, Lasus/net/vicewifi/WifiViceManager;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v0, v2}, Lasus/net/vicewifi/WifiViceManager;-><init>(Landroid/content/Context;Lasus/net/vicewifi/IWifiViceManager;Landroid/os/Looper;)V

    return-object v1
.end method

.method private getSupportedFeatures()J
    .locals 2

    .line 1732
    :try_start_0
    iget-object p0, p0, Lasus/net/vicewifi/WifiViceManager;->mService:Lasus/net/vicewifi/IWifiViceManager;

    invoke-interface {p0}, Lasus/net/vicewifi/IWifiViceManager;->getSupportedFeatures()J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p0

    .line 1734
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private isFeatureSupported(J)Z
    .locals 2

    .line 1739
    invoke-direct {p0}, Lasus/net/vicewifi/WifiViceManager;->getSupportedFeatures()J

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

.method private updateVerboseLoggingEnabledFromService()V
    .locals 1

    .line 3398
    invoke-virtual {p0}, Lasus/net/vicewifi/WifiViceManager;->isVerboseLoggingEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lasus/net/vicewifi/WifiViceManager;->mVerboseLoggingEnabled:Z

    return-void
.end method


# virtual methods
.method public addNetwork(Landroid/net/wifi/WifiConfiguration;)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    .line 1307
    :cond_0
    iput v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 1308
    invoke-direct {p0, p1}, Lasus/net/vicewifi/WifiViceManager;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result p0

    return p0
.end method

.method public allowAutojoin(IZ)V
    .locals 0
    .annotation build Landroid/annotation/RequiresPermission;
        value = "android.permission.NETWORK_SETTINGS"
    .end annotation

    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2599
    :try_start_0
    iget-object p0, p0, Lasus/net/vicewifi/WifiViceManager;->mService:Lasus/net/vicewifi/IWifiViceManager;

    invoke-interface {p0, p1, p2}, Lasus/net/vicewifi/IWifiViceManager;->allowAutojoin(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 2601
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

    .line 2616
    :try_start_0
    iget-object p0, p0, Lasus/net/vicewifi/WifiViceManager;->mService:Lasus/net/vicewifi/IWifiViceManager;

    invoke-interface {p0, p1, p2}, Lasus/net/vicewifi/IWifiViceManager;->allowAutojoinPasspoint(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 2618
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public calculateSignalLevel(I)I
    .locals 0

    .line 2174
    :try_start_0
    iget-object p0, p0, Lasus/net/vicewifi/WifiViceManager;->mService:Lasus/net/vicewifi/IWifiViceManager;

    invoke-interface {p0, p1}, Lasus/net/vicewifi/IWifiViceManager;->calculateSignalLevel(I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 2176
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public connect(ILasus/net/vicewifi/WifiViceManager$ActionListener;)V
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

    .line 2453
    invoke-direct {p0, v0, p1, p2}, Lasus/net/vicewifi/WifiViceManager;->connectInternal(Landroid/net/wifi/WifiConfiguration;ILasus/net/vicewifi/WifiViceManager$ActionListener;)V

    return-void

    .line 2452
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Network id cannot be negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public connect(Landroid/net/wifi/WifiConfiguration;Lasus/net/vicewifi/WifiViceManager$ActionListener;)V
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

    .line 2426
    invoke-direct {p0, p1, v0, p2}, Lasus/net/vicewifi/WifiViceManager;->connectInternal(Landroid/net/wifi/WifiConfiguration;ILasus/net/vicewifi/WifiViceManager$ActionListener;)V

    return-void

    .line 2425
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

    .line 2674
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2678
    :try_start_0
    iget-object v0, p0, Lasus/net/vicewifi/WifiViceManager;->mService:Lasus/net/vicewifi/IWifiViceManager;

    iget-object p0, p0, Lasus/net/vicewifi/WifiViceManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Lasus/net/vicewifi/IWifiViceManager;->disableEphemeralNetwork(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 2680
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    .line 2675
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "SSID cannot be null or empty!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public disconnect()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1578
    :try_start_0
    iget-object v0, p0, Lasus/net/vicewifi/WifiViceManager;->mService:Lasus/net/vicewifi/IWifiViceManager;

    iget-object p0, p0, Lasus/net/vicewifi/WifiViceManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lasus/net/vicewifi/IWifiViceManager;->disconnect(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 1580
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public enableNetwork(IZ)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1513
    :try_start_0
    iget-object v0, p0, Lasus/net/vicewifi/WifiViceManager;->mService:Lasus/net/vicewifi/IWifiViceManager;

    iget-object p0, p0, Lasus/net/vicewifi/WifiViceManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p1, p2, p0}, Lasus/net/vicewifi/IWifiViceManager;->enableNetwork(IZLjava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 1515
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

    .line 3184
    :try_start_0
    iget-object v0, p0, Lasus/net/vicewifi/WifiViceManager;->mService:Lasus/net/vicewifi/IWifiViceManager;

    iget-object p0, p0, Lasus/net/vicewifi/WifiViceManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lasus/net/vicewifi/IWifiViceManager;->factoryReset(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 3186
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public forget(ILasus/net/vicewifi/WifiViceManager$ActionListener;)V
    .locals 4
    .annotation build Landroid/annotation/RequiresPermission;
        anyOf = {
            "android.permission.NETWORK_SETTINGS",
            "android.permission.NETWORK_SETUP_WIZARD",
            "android.permission.NETWORK_STACK"
        }
    .end annotation

    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    if-ltz p1, :cond_3

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 2525
    new-instance v0, Lasus/net/vicewifi/WifiViceManager$ActionListenerProxy;

    iget-object v1, p0, Lasus/net/vicewifi/WifiViceManager;->mLooper:Landroid/os/Looper;

    const-string v2, "forget"

    invoke-direct {v0, p0, v2, v1, p2}, Lasus/net/vicewifi/WifiViceManager$ActionListenerProxy;-><init>(Lasus/net/vicewifi/WifiViceManager;Ljava/lang/String;Landroid/os/Looper;Lasus/net/vicewifi/WifiViceManager$ActionListener;)V

    .line 2526
    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    const/4 v2, 0x0

    .line 2529
    :try_start_0
    iget-object p0, p0, Lasus/net/vicewifi/WifiViceManager;->mService:Lasus/net/vicewifi/IWifiViceManager;

    if-nez p2, :cond_1

    move p2, v2

    goto :goto_1

    .line 2530
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p2

    .line 2529
    :goto_1
    invoke-interface {p0, p1, v0, v1, p2}, Lasus/net/vicewifi/IWifiViceManager;->forget(ILandroid/os/IBinder;Landroid/net/wifi/IActionListener;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    if-eqz v1, :cond_2

    const/16 p0, 0x9

    .line 2534
    invoke-virtual {v1, p0}, Lasus/net/vicewifi/WifiViceManager$ActionListenerProxy;->onFailure(I)V

    goto :goto_2

    :catch_1
    if-eqz v1, :cond_2

    .line 2532
    invoke-virtual {v1, v2}, Lasus/net/vicewifi/WifiViceManager$ActionListenerProxy;->onFailure(I)V

    :cond_2
    :goto_2
    return-void

    .line 2521
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Network id cannot be negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getConfiguredNetworks()Ljava/util/List;
    .locals 2
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

    .line 1242
    :try_start_0
    iget-object v0, p0, Lasus/net/vicewifi/WifiViceManager;->mService:Lasus/net/vicewifi/IWifiViceManager;

    iget-object v1, p0, Lasus/net/vicewifi/WifiViceManager;->mContext:Landroid/content/Context;

    .line 1243
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lasus/net/vicewifi/WifiViceManager;->mContext:Landroid/content/Context;

    .line 1244
    invoke-virtual {p0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object p0

    .line 1243
    invoke-interface {v0, v1, p0}, Lasus/net/vicewifi/IWifiViceManager;->getConfiguredNetworks(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    if-nez p0, :cond_0

    .line 1246
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 1248
    :cond_0
    invoke-virtual {p0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1250
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public getConnectionInfo()Landroid/net/wifi/WifiInfo;
    .locals 2

    .line 1975
    :try_start_0
    iget-object v0, p0, Lasus/net/vicewifi/WifiViceManager;->mService:Lasus/net/vicewifi/IWifiViceManager;

    iget-object v1, p0, Lasus/net/vicewifi/WifiViceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lasus/net/vicewifi/WifiViceManager;->mContext:Landroid/content/Context;

    .line 1976
    invoke-virtual {p0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object p0

    .line 1975
    invoke-interface {v0, v1, p0}, Lasus/net/vicewifi/IWifiViceManager;->getConnectionInfo(Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WifiInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1978
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

    .line 3202
    :try_start_0
    iget-object p0, p0, Lasus/net/vicewifi/WifiViceManager;->mService:Lasus/net/vicewifi/IWifiViceManager;

    invoke-interface {p0}, Lasus/net/vicewifi/IWifiViceManager;->getCurrentNetwork()Landroid/net/Network;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 3204
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

    .line 3468
    :try_start_0
    iget-object p0, p0, Lasus/net/vicewifi/WifiViceManager;->mService:Lasus/net/vicewifi/IWifiViceManager;

    invoke-interface {p0}, Lasus/net/vicewifi/IWifiViceManager;->getFactoryMacAddresses()[Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 3470
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

    .line 1259
    :try_start_0
    iget-object v0, p0, Lasus/net/vicewifi/WifiViceManager;->mService:Lasus/net/vicewifi/IWifiViceManager;

    iget-object v1, p0, Lasus/net/vicewifi/WifiViceManager;->mContext:Landroid/content/Context;

    .line 1260
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lasus/net/vicewifi/WifiViceManager;->mContext:Landroid/content/Context;

    .line 1261
    invoke-virtual {p0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object p0

    .line 1260
    invoke-interface {v0, v1, p0}, Lasus/net/vicewifi/IWifiViceManager;->getPrivilegedConfiguredNetworks(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    if-nez p0, :cond_0

    .line 1263
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 1265
    :cond_0
    invoke-virtual {p0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1267
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

    .line 1990
    :try_start_0
    iget-object v0, p0, Lasus/net/vicewifi/WifiViceManager;->mService:Lasus/net/vicewifi/IWifiViceManager;

    iget-object v1, p0, Lasus/net/vicewifi/WifiViceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lasus/net/vicewifi/WifiViceManager;->mContext:Landroid/content/Context;

    .line 1991
    invoke-virtual {p0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object p0

    .line 1990
    invoke-interface {v0, v1, p0}, Lasus/net/vicewifi/IWifiViceManager;->getScanResults(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1993
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public getVerboseLoggingLevel()I
    .locals 0
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
        maxTargetSdk = 0x1d
        publicAlternatives = "Use {@code #isVerboseLoggingEnabled()} instead."
    .end annotation

    .line 3168
    :try_start_0
    iget-object p0, p0, Lasus/net/vicewifi/WifiViceManager;->mService:Lasus/net/vicewifi/IWifiViceManager;

    invoke-interface {p0}, Lasus/net/vicewifi/IWifiViceManager;->getVerboseLoggingLevel()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 3170
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public getWifiState()I
    .locals 0

    .line 2124
    :try_start_0
    iget-object p0, p0, Lasus/net/vicewifi/WifiViceManager;->mService:Lasus/net/vicewifi/IWifiViceManager;

    invoke-interface {p0}, Lasus/net/vicewifi/IWifiViceManager;->getWifiEnabledState()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 2126
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public isConnectedMacRandomizationSupported()Z
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const-wide v0, 0x200000000L

    .line 1860
    invoke-direct {p0, v0, v1}, Lasus/net/vicewifi/WifiViceManager;->isFeatureSupported(J)Z

    move-result p0

    return p0
.end method

.method public isEnhancedOpenSupported()Z
    .locals 2

    const-wide/32 v0, 0x20000000

    .line 3435
    invoke-direct {p0, v0, v1}, Lasus/net/vicewifi/WifiViceManager;->isFeatureSupported(J)Z

    move-result p0

    return p0
.end method

.method public isVerboseLoggingEnabled()Z
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3157
    invoke-virtual {p0}, Lasus/net/vicewifi/WifiViceManager;->getVerboseLoggingLevel()I

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

    .line 3761
    :try_start_0
    iget-object p0, p0, Lasus/net/vicewifi/WifiViceManager;->mService:Lasus/net/vicewifi/IWifiViceManager;

    invoke-interface {p0}, Lasus/net/vicewifi/IWifiViceManager;->isVht8ssCapableDevice()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 3763
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public isWifiEnabled()Z
    .locals 1

    .line 2136
    invoke-virtual {p0}, Lasus/net/vicewifi/WifiViceManager;->getWifiState()I

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

    .line 1904
    :try_start_0
    iget-object p0, p0, Lasus/net/vicewifi/WifiViceManager;->mService:Lasus/net/vicewifi/IWifiViceManager;

    invoke-interface {p0, p1}, Lasus/net/vicewifi/IWifiViceManager;->isWifiStandardSupported(I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 1906
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public isWpa3SaeSupported()Z
    .locals 2

    const-wide/32 v0, 0x8000000

    .line 3421
    invoke-direct {p0, v0, v1}, Lasus/net/vicewifi/WifiViceManager;->isFeatureSupported(J)Z

    move-result p0

    return p0
.end method

.method public isWpa3SuiteBSupported()Z
    .locals 2

    const-wide/32 v0, 0x10000000

    .line 3428
    invoke-direct {p0, v0, v1}, Lasus/net/vicewifi/WifiViceManager;->isFeatureSupported(J)Z

    move-result p0

    return p0
.end method

.method public save(Landroid/net/wifi/WifiConfiguration;Lasus/net/vicewifi/WifiViceManager$ActionListener;)V
    .locals 4
    .annotation build Landroid/annotation/RequiresPermission;
        anyOf = {
            "android.permission.NETWORK_SETTINGS",
            "android.permission.NETWORK_SETUP_WIZARD",
            "android.permission.NETWORK_STACK"
        }
    .end annotation

    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 2488
    new-instance v0, Lasus/net/vicewifi/WifiViceManager$ActionListenerProxy;

    iget-object v1, p0, Lasus/net/vicewifi/WifiViceManager;->mLooper:Landroid/os/Looper;

    const-string v2, "save"

    invoke-direct {v0, p0, v2, v1, p2}, Lasus/net/vicewifi/WifiViceManager$ActionListenerProxy;-><init>(Lasus/net/vicewifi/WifiViceManager;Ljava/lang/String;Landroid/os/Looper;Lasus/net/vicewifi/WifiViceManager$ActionListener;)V

    .line 2489
    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    const/4 v2, 0x0

    .line 2492
    :try_start_0
    iget-object p0, p0, Lasus/net/vicewifi/WifiViceManager;->mService:Lasus/net/vicewifi/IWifiViceManager;

    if-nez p2, :cond_1

    move p2, v2

    goto :goto_1

    .line 2493
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p2

    .line 2492
    :goto_1
    invoke-interface {p0, p1, v0, v1, p2}, Lasus/net/vicewifi/IWifiViceManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/os/IBinder;Landroid/net/wifi/IActionListener;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    if-eqz v1, :cond_2

    const/16 p0, 0x9

    .line 2497
    invoke-virtual {v1, p0}, Lasus/net/vicewifi/WifiViceManager$ActionListenerProxy;->onFailure(I)V

    goto :goto_2

    :catch_1
    if-eqz v1, :cond_2

    .line 2495
    invoke-virtual {v1, v2}, Lasus/net/vicewifi/WifiViceManager$ActionListenerProxy;->onFailure(I)V

    :cond_2
    :goto_2
    return-void

    .line 2484
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "config cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setMacRandomizationSettingPasspointEnabled(Ljava/lang/String;Z)V
    .locals 0
    .annotation build Landroid/annotation/RequiresPermission;
        value = "android.permission.NETWORK_SETTINGS"
    .end annotation

    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2634
    :try_start_0
    iget-object p0, p0, Lasus/net/vicewifi/WifiViceManager;->mService:Lasus/net/vicewifi/IWifiViceManager;

    invoke-interface {p0, p1, p2}, Lasus/net/vicewifi/IWifiViceManager;->setMacRandomizationSettingPasspointEnabled(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 2636
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

    .line 2654
    :try_start_0
    iget-object p0, p0, Lasus/net/vicewifi/WifiViceManager;->mService:Lasus/net/vicewifi/IWifiViceManager;

    invoke-interface {p0, p1, p2}, Lasus/net/vicewifi/IWifiViceManager;->setPasspointMeteredOverride(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 2656
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public setWifiEnabled(Z)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2109
    :try_start_0
    iget-object v0, p0, Lasus/net/vicewifi/WifiViceManager;->mService:Lasus/net/vicewifi/IWifiViceManager;

    iget-object p0, p0, Lasus/net/vicewifi/WifiViceManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lasus/net/vicewifi/IWifiViceManager;->setWifiEnabled(Ljava/lang/String;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 2111
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public startScan()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 1934
    invoke-virtual {p0, v0}, Lasus/net/vicewifi/WifiViceManager;->startScan(Landroid/os/WorkSource;)Z

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

    .line 1942
    :try_start_0
    iget-object p1, p0, Lasus/net/vicewifi/WifiViceManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object p1

    .line 1943
    iget-object v0, p0, Lasus/net/vicewifi/WifiViceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v0

    .line 1944
    iget-object p0, p0, Lasus/net/vicewifi/WifiViceManager;->mService:Lasus/net/vicewifi/IWifiViceManager;

    invoke-interface {p0, p1, v0}, Lasus/net/vicewifi/IWifiViceManager;->startScan(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 1946
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

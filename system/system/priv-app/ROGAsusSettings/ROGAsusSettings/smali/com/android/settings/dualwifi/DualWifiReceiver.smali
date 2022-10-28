.class public Lcom/android/settings/dualwifi/DualWifiReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DualWifiReceiver.java"

# interfaces
.implements Lcom/android/settings/dualwifi/DualWifiHotspotDialog$DualWifiHotspotDialogListener;
.implements Lcom/android/settings/wfd/WifiDisplayWaringDialog$WifiDisplayWaringDialogListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/dualwifi/DualWifiReceiver$SettingObserver;
    }
.end annotation


# static fields
.field private static mAlwaysOn:I = -0x1

.field private static mContentResolver:Landroid/content/ContentResolver; = null

.field private static mContext:Landroid/content/Context; = null

.field private static mDualWifiManager:Lasus/net/vicewifi/WifiViceManager; = null

.field private static mHandler:Landroid/os/Handler; = null

.field private static mIsCastConnected:Z = false

.field private static mIsTimerEnabled:Z = false

.field private static mMasterWifiManager:Landroid/net/wifi/WifiManager; = null

.field private static mPreDualWifiState:Landroid/net/NetworkInfo$DetailedState; = null

.field private static mPreState:Landroid/net/NetworkInfo$DetailedState; = null

.field private static mPreSystemModeValue:I = 0x0

.field private static mRouter:Landroid/media/MediaRouter; = null

.field private static final mRouterCallback:Landroid/media/MediaRouter$Callback;

.field private static mScreenTimeOut:I = -0x1

.field private static mSettingObserver:Lcom/android/settings/dualwifi/DualWifiReceiver$SettingObserver; = null

.field private static mSystemMode:I = 0x9

.field private static mTheme:I = 0x0

.field private static mVisualEnhance:I = -0x1


# instance fields
.field private mAutoBackgroundSyncEnabled:Z

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mDropboxTracker:Lcom/android/settings/dropbox/DropboxTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 469
    new-instance v0, Lcom/android/settings/dualwifi/DualWifiReceiver$2;

    invoke-direct {v0}, Lcom/android/settings/dualwifi/DualWifiReceiver$2;-><init>()V

    sput-object v0, Lcom/android/settings/dualwifi/DualWifiReceiver;->mRouterCallback:Landroid/media/MediaRouter$Callback;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x1

    .line 114
    iput-boolean v0, p0, Lcom/android/settings/dualwifi/DualWifiReceiver;->mAutoBackgroundSyncEnabled:Z

    return-void
.end method

.method static synthetic access$000()Lasus/net/vicewifi/WifiViceManager;
    .locals 1

    .line 57
    sget-object v0, Lcom/android/settings/dualwifi/DualWifiReceiver;->mDualWifiManager:Lasus/net/vicewifi/WifiViceManager;

    return-object v0
.end method

.method static synthetic access$002(Lasus/net/vicewifi/WifiViceManager;)Lasus/net/vicewifi/WifiViceManager;
    .locals 0

    .line 57
    sput-object p0, Lcom/android/settings/dualwifi/DualWifiReceiver;->mDualWifiManager:Lasus/net/vicewifi/WifiViceManager;

    return-object p0
.end method

.method static synthetic access$100(Landroid/content/Context;Z)Z
    .locals 0

    .line 57
    invoke-static {p0, p1}, Lcom/android/settings/dualwifi/DualWifiReceiver;->setDualWifiEnabled(Landroid/content/Context;Z)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1000(Lcom/android/settings/dualwifi/DualWifiReceiver;Z)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/android/settings/dualwifi/DualWifiReceiver;->updateAutoBackgroundSync(Z)V

    return-void
.end method

.method static synthetic access$202(Z)Z
    .locals 0

    .line 57
    sput-boolean p0, Lcom/android/settings/dualwifi/DualWifiReceiver;->mIsTimerEnabled:Z

    return p0
.end method

.method static synthetic access$300()Z
    .locals 1

    .line 57
    sget-boolean v0, Lcom/android/settings/dualwifi/DualWifiReceiver;->mIsCastConnected:Z

    return v0
.end method

.method static synthetic access$302(Z)Z
    .locals 0

    .line 57
    sput-boolean p0, Lcom/android/settings/dualwifi/DualWifiReceiver;->mIsCastConnected:Z

    return p0
.end method

.method static synthetic access$400()Z
    .locals 1

    .line 57
    invoke-static {}, Lcom/android/settings/dualwifi/DualWifiReceiver;->isCastConnected()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500()Landroid/content/Context;
    .locals 1

    .line 57
    sget-object v0, Lcom/android/settings/dualwifi/DualWifiReceiver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600()I
    .locals 1

    .line 57
    sget v0, Lcom/android/settings/dualwifi/DualWifiReceiver;->mPreSystemModeValue:I

    return v0
.end method

.method static synthetic access$602(I)I
    .locals 0

    .line 57
    sput p0, Lcom/android/settings/dualwifi/DualWifiReceiver;->mPreSystemModeValue:I

    return p0
.end method

.method static synthetic access$700(Lcom/android/settings/dualwifi/DualWifiReceiver;)Z
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/android/settings/dualwifi/DualWifiReceiver;->isHotspotEnabled()Z

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/android/settings/dualwifi/DualWifiReceiver;)Z
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/android/settings/dualwifi/DualWifiReceiver;->isBackgroundSyncEnabled()Z

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/android/settings/dualwifi/DualWifiReceiver;)Z
    .locals 0

    .line 57
    iget-boolean p0, p0, Lcom/android/settings/dualwifi/DualWifiReceiver;->mAutoBackgroundSyncEnabled:Z

    return p0
.end method

.method static synthetic access$902(Lcom/android/settings/dualwifi/DualWifiReceiver;Z)Z
    .locals 0

    .line 57
    iput-boolean p1, p0, Lcom/android/settings/dualwifi/DualWifiReceiver;->mAutoBackgroundSyncEnabled:Z

    return p1
.end method

.method public static getAlwaysOn()I
    .locals 1

    .line 663
    sget v0, Lcom/android/settings/dualwifi/DualWifiReceiver;->mAlwaysOn:I

    return v0
.end method

.method private getAvoidBadWifiValue(Landroid/content/Context;)I
    .locals 1

    .line 430
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "network_avoid_bad_wifi"

    const/4 v0, 0x1

    .line 429
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getTheme()I
    .locals 1

    .line 655
    sget v0, Lcom/android/settings/dualwifi/DualWifiReceiver;->mTheme:I

    return v0
.end method

.method private isBackgroundSyncEnabled()Z
    .locals 6

    .line 627
    sget-object p0, Lcom/android/settings/dualwifi/DualWifiReceiver;->mContentResolver:Landroid/content/ContentResolver;

    const-string v0, "auto_background_sync_settings"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    .line 628
    sget-object v0, Lcom/android/settings/dualwifi/DualWifiReceiver;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "auto_background_sync_gamegenie"

    const/4 v3, -0x1

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 629
    sget-object v2, Lcom/android/settings/dualwifi/DualWifiReceiver;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "auto_background_sync_systemmode"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 630
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AutoBackgroundSyncEnable = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", AutoBackgroundSyncEnableGameGenie = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", AutoBackgroundSyncEnableSystemMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "DualWifiReceiver"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    if-eq v0, v3, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    return v1

    :cond_1
    if-eq v2, v3, :cond_5

    const/4 v0, 0x2

    if-ne v2, v0, :cond_3

    if-ne p0, v1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v4

    :goto_1
    return v1

    :cond_3
    if-ne v2, v1, :cond_4

    goto :goto_2

    :cond_4
    move v1, v4

    :goto_2
    return v1

    :cond_5
    if-ne p0, v1, :cond_6

    goto :goto_3

    :cond_6
    move v1, v4

    :goto_3
    return v1
.end method

.method private static isCastConnected()Z
    .locals 5

    .line 502
    sget-object v0, Lcom/android/settings/dualwifi/DualWifiReceiver;->mRouter:Landroid/media/MediaRouter;

    invoke-virtual {v0}, Landroid/media/MediaRouter;->getRouteCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 504
    sget-object v3, Lcom/android/settings/dualwifi/DualWifiReceiver;->mRouter:Landroid/media/MediaRouter;

    invoke-virtual {v3, v2}, Landroid/media/MediaRouter;->getRouteAt(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v3

    const/4 v4, 0x4

    .line 505
    invoke-virtual {v3, v4}, Landroid/media/MediaRouter$RouteInfo;->matchesTypes(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 506
    invoke-virtual {v3}, Landroid/media/MediaRouter$RouteInfo;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Landroid/media/MediaRouter$RouteInfo;->isConnecting()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v0, "DualWifiReceiver"

    const-string v1, "cast is connected"

    .line 507
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Connection"

    const-string v2, "1"

    .line 509
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Cast function"

    .line 510
    invoke-static {v1, v0}, Lcom/microsoft/appcenter/analytics/Analytics;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private static isDualWifiSettingsEnabled(Landroid/content/Context;)Z
    .locals 4

    .line 416
    invoke-static {p0}, Lcom/android/settings/dualwifi/DualWifiUtils;->getSystemModeValue(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1

    .line 421
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "dual_wifi_enabled_settings"

    .line 420
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v2, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method private isHotspotEnabled()Z
    .locals 1

    .line 358
    sget-object p0, Lcom/android/settings/dualwifi/DualWifiReceiver;->mMasterWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz p0, :cond_0

    .line 359
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result p0

    const/16 v0, 0xb

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private sendWifiInfoBroadcast(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    .line 453
    new-instance p0, Landroid/content/Intent;

    const-string v0, "com.android.settings.dualwifi.WIFI_INFO"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "wifi_ssid"

    .line 454
    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo p2, "wifi_band"

    .line 455
    invoke-virtual {p0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "from_settings_page"

    const/4 p3, 0x0

    .line 456
    invoke-virtual {p0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 457
    invoke-virtual {p1, p0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private static setDualWifiEnabled(Landroid/content/Context;Z)Z
    .locals 5

    .line 336
    sget-object v0, Lcom/android/settings/dualwifi/DualWifiReceiver;->mDualWifiManager:Lasus/net/vicewifi/WifiViceManager;

    invoke-virtual {v0, p1}, Lasus/net/vicewifi/WifiViceManager;->setWifiEnabled(Z)Z

    move-result v0

    const-string v1, "dual_wifi_enabled"

    const-string v2, "set dual Wi-Fi enable:"

    const-string v3, "DualWifiReceiver"

    if-nez v0, :cond_1

    .line 338
    invoke-static {p0}, Lcom/android/settings/dualwifi/DualWifiUtils;->isSystemMode(Landroid/content/Context;)Z

    move-result v0

    const/4 v4, 0x0

    if-nez v0, :cond_0

    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " failed"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 342
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " failed by other apps"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v4

    .line 346
    :cond_1
    invoke-static {p0}, Lcom/android/settings/dualwifi/DualWifiUtils;->isSystemMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 351
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " by other apps"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method private setDualWifiEverConnectedValue(Landroid/content/Context;)V
    .locals 1

    .line 449
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "dual_wifi_ever_connected"

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public static setTimer(Landroid/content/Context;Z)V
    .locals 3

    const/4 v0, 0x0

    const-string v1, "DualWifiReceiver"

    if-eqz p1, :cond_1

    const-string v2, "Start timer..."

    .line 386
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    sget-object v1, Lcom/android/settings/dualwifi/DualWifiReceiver;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 388
    new-instance v1, Lcom/android/settings/dualwifi/DualWifiReceiver$1;

    invoke-direct {v1, p0}, Lcom/android/settings/dualwifi/DualWifiReceiver$1;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/settings/dualwifi/DualWifiReceiver;->mHandler:Landroid/os/Handler;

    .line 403
    :cond_0
    sget-object p0, Lcom/android/settings/dualwifi/DualWifiReceiver;->mHandler:Landroid/os/Handler;

    const-wide/32 v1, 0x493e0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_1
    const-string p0, "Cancel timer..."

    .line 405
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    sget-object p0, Lcom/android/settings/dualwifi/DualWifiReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 408
    :goto_0
    sput-boolean p1, Lcom/android/settings/dualwifi/DualWifiReceiver;->mIsTimerEnabled:Z

    return-void
.end method

.method private updateAutoBackgroundSync(Z)V
    .locals 0

    .line 647
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    invoke-static {p1, p0}, Landroid/content/ContentResolver;->setMasterSyncAutomaticallyAsUser(ZI)V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    const-string p0, "DualWifiReceiver"

    const-string v0, "cancel"

    .line 371
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    sget-object p0, Lcom/android/settings/dualwifi/DualWifiReceiver;->mContext:Landroid/content/Context;

    .line 373
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "dual_wifi_enabled_settings"

    const/4 v1, 0x0

    .line 372
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public onNotNow()V
    .locals 0

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .line 126
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 130
    :cond_0
    sput-object p1, Lcom/android/settings/dualwifi/DualWifiReceiver;->mContext:Landroid/content/Context;

    .line 132
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 135
    sget-object v1, Lcom/android/settings/dualwifi/DualWifiReceiver;->mDualWifiManager:Lasus/net/vicewifi/WifiViceManager;

    if-nez v1, :cond_1

    .line 136
    sget-object v1, Lcom/android/settings/dualwifi/DualWifiReceiver;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/dualwifi/DualWifiUtils;->getWifiViceManager(Landroid/content/Context;)Lasus/net/vicewifi/WifiViceManager;

    move-result-object v1

    sput-object v1, Lcom/android/settings/dualwifi/DualWifiReceiver;->mDualWifiManager:Lasus/net/vicewifi/WifiViceManager;

    .line 138
    :cond_1
    sget-object v1, Lcom/android/settings/dualwifi/DualWifiReceiver;->mMasterWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_2

    .line 139
    sget-object v1, Lcom/android/settings/dualwifi/DualWifiReceiver;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    sput-object v1, Lcom/android/settings/dualwifi/DualWifiReceiver;->mMasterWifiManager:Landroid/net/wifi/WifiManager;

    .line 142
    :cond_2
    sget-object v1, Lcom/android/settings/dualwifi/DualWifiReceiver;->mRouter:Landroid/media/MediaRouter;

    if-nez v1, :cond_3

    .line 143
    sget-object v1, Lcom/android/settings/dualwifi/DualWifiReceiver;->mContext:Landroid/content/Context;

    const-string v2, "media_router"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter;

    sput-object v1, Lcom/android/settings/dualwifi/DualWifiReceiver;->mRouter:Landroid/media/MediaRouter;

    const/4 v2, 0x4

    .line 144
    sget-object v3, Lcom/android/settings/dualwifi/DualWifiReceiver;->mRouterCallback:Landroid/media/MediaRouter$Callback;

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;)V

    .line 147
    :cond_3
    iget-object v1, p0, Lcom/android/settings/dualwifi/DualWifiReceiver;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v1, :cond_4

    .line 148
    sget-object v1, Lcom/android/settings/dualwifi/DualWifiReceiver;->mContext:Landroid/content/Context;

    const-class v2, Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/android/settings/dualwifi/DualWifiReceiver;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 151
    :cond_4
    sget-object v1, Lcom/android/settings/dualwifi/DualWifiReceiver;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "DualWifiReceiver"

    if-nez v1, :cond_5

    .line 152
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sput-object v1, Lcom/android/settings/dualwifi/DualWifiReceiver;->mContentResolver:Landroid/content/ContentResolver;

    .line 153
    new-instance v1, Lcom/android/settings/dualwifi/DualWifiReceiver$SettingObserver;

    invoke-direct {v1, p0}, Lcom/android/settings/dualwifi/DualWifiReceiver$SettingObserver;-><init>(Lcom/android/settings/dualwifi/DualWifiReceiver;)V

    sput-object v1, Lcom/android/settings/dualwifi/DualWifiReceiver;->mSettingObserver:Lcom/android/settings/dualwifi/DualWifiReceiver$SettingObserver;

    .line 154
    sget-object v3, Lcom/android/settings/dualwifi/DualWifiReceiver;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v1, v3}, Lcom/android/settings/dualwifi/DualWifiReceiver$SettingObserver;->register(Landroid/content/ContentResolver;)V

    .line 155
    invoke-static {p1}, Lcom/android/settings/dualwifi/DualWifiUtils;->getSystemModeValue(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/android/settings/dualwifi/DualWifiReceiver;->mPreSystemModeValue:I

    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init system mode: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/android/settings/dualwifi/DualWifiReceiver;->mPreSystemModeValue:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_5
    invoke-static {}, Lcom/android/settings/Utils;->isCNSKU()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 162
    invoke-static {p1}, Lcom/android/settings/dropbox/DropboxTracker;->getInstance(Landroid/content/Context;)Lcom/android/settings/dropbox/DropboxTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/dualwifi/DualWifiReceiver;->mDropboxTracker:Lcom/android/settings/dropbox/DropboxTracker;

    :cond_6
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    .line 165
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto/16 :goto_3

    :cond_7
    const-string v1, "android.intent.action.LOCKED_BOOT_COMPLETED"

    .line 170
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string p0, "ACTION_LOCKED_BOOT_COMPLETED"

    .line 171
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    sget-object p0, Lcom/android/settings/dualwifi/DualWifiReceiver;->mContentResolver:Landroid/content/ContentResolver;

    const-string p1, "auto_background_sync_settings"

    const/4 p2, 0x7

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, p2, :cond_1d

    .line 174
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    .line 173
    invoke-static {p0}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result p0

    .line 175
    sget-object p2, Lcom/android/settings/dualwifi/DualWifiReceiver;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p2, p1, p0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 176
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "auto_background_sync do not init, set init value = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_8
    const-string v1, "com.asus.setupwizard.Finished"

    .line 178
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_9

    const-string p0, "ACTION_SETUPWIZARD_COMPLETE"

    .line 179
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p1, "wifi_softap_ax_enabled"

    invoke-static {p0, p1, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    :cond_9
    const-string v1, "change_system_mode"

    .line 181
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_b

    const-string p1, "SYSTEM_MODE_CHANGED"

    .line 182
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_a

    const/16 p2, 0x9

    const-string v0, "mode"

    .line 185
    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    sput p2, Lcom/android/settings/dualwifi/DualWifiReceiver;->mSystemMode:I

    const-string p2, "Theme"

    .line 186
    invoke-virtual {p1, p2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    sput p2, Lcom/android/settings/dualwifi/DualWifiReceiver;->mTheme:I

    const-string p2, "VisualEnhance"

    .line 187
    invoke-virtual {p1, p2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    sput p2, Lcom/android/settings/dualwifi/DualWifiReceiver;->mVisualEnhance:I

    const-string p2, "AlwaysOn"

    .line 188
    invoke-virtual {p1, p2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    sput p2, Lcom/android/settings/dualwifi/DualWifiReceiver;->mAlwaysOn:I

    const-string p2, "ScreenTimeOut"

    .line 189
    invoke-virtual {p1, p2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    sput p1, Lcom/android/settings/dualwifi/DualWifiReceiver;->mScreenTimeOut:I

    .line 191
    :cond_a
    invoke-direct {p0}, Lcom/android/settings/dualwifi/DualWifiReceiver;->isBackgroundSyncEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/dualwifi/DualWifiReceiver;->mAutoBackgroundSyncEnabled:Z

    .line 192
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "auto background sync enable: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/settings/dualwifi/DualWifiReceiver;->mAutoBackgroundSyncEnabled:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-boolean p1, p0, Lcom/android/settings/dualwifi/DualWifiReceiver;->mAutoBackgroundSyncEnabled:Z

    invoke-direct {p0, p1}, Lcom/android/settings/dualwifi/DualWifiReceiver;->updateAutoBackgroundSync(Z)V

    goto/16 :goto_3

    .line 194
    :cond_b
    sget-object v1, Lcom/android/settings/dualwifi/DualWifiReceiver;->mDualWifiManager:Lasus/net/vicewifi/WifiViceManager;

    if-eqz v1, :cond_1d

    const-string v1, "com.asus.settings.dualwifi.action.ENABLE_WIFI"

    .line 195
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 196
    sget-boolean p2, Lcom/android/settings/dualwifi/DualWifiReceiver;->mIsTimerEnabled:Z

    if-eqz p2, :cond_c

    .line 197
    invoke-static {p1, v5}, Lcom/android/settings/dualwifi/DualWifiReceiver;->setTimer(Landroid/content/Context;Z)V

    .line 200
    :cond_c
    iget-object p2, p0, Lcom/android/settings/dualwifi/DualWifiReceiver;->mConnectivityManager:Landroid/net/ConnectivityManager;

    sget-object v0, Lcom/android/settings/dualwifi/DualWifiReceiver;->mMasterWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getCurrentNetwork()Landroid/net/Network;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object p2

    if-eqz p2, :cond_d

    .line 201
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p2

    if-eqz p2, :cond_d

    move v5, v3

    .line 202
    :cond_d
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "dual wifi enabled="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/android/settings/dualwifi/DualWifiReceiver;->mDualWifiManager:Lasus/net/vicewifi/WifiViceManager;

    invoke-virtual {v0}, Lasus/net/vicewifi/WifiViceManager;->isWifiEnabled()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", main wifi is connected:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "enable dual wifi, cast is connected: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/android/settings/dualwifi/DualWifiReceiver;->mIsCastConnected:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    invoke-direct {p0}, Lcom/android/settings/dualwifi/DualWifiReceiver;->isHotspotEnabled()Z

    move-result p2

    if-eqz p2, :cond_e

    .line 206
    new-instance p2, Landroidx/appcompat/view/ContextThemeWrapper;

    invoke-static {p1}, Lcom/asus/commonresx/AsusResxUtils;->getAsusResxThemeStyle(Landroid/content/Context;)I

    move-result v0

    invoke-direct {p2, p1, v0}, Landroidx/appcompat/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 207
    new-instance p1, Lcom/android/settings/dualwifi/DualWifiHotspotDialog;

    invoke-direct {p1, p2, p0}, Lcom/android/settings/dualwifi/DualWifiHotspotDialog;-><init>(Landroid/content/Context;Lcom/android/settings/dualwifi/DualWifiHotspotDialog$DualWifiHotspotDialogListener;)V

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto/16 :goto_3

    .line 208
    :cond_e
    sget-boolean p2, Lcom/android/settings/dualwifi/DualWifiReceiver;->mIsCastConnected:Z

    if-eqz p2, :cond_f

    .line 209
    new-instance p2, Landroidx/appcompat/view/ContextThemeWrapper;

    invoke-static {p1}, Lcom/asus/commonresx/AsusResxUtils;->getAsusResxThemeStyle(Landroid/content/Context;)I

    move-result v0

    invoke-direct {p2, p1, v0}, Landroidx/appcompat/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 210
    new-instance p1, Lcom/android/settings/wfd/WifiDisplayWaringDialog;

    invoke-direct {p1, p2, p0, v3}, Lcom/android/settings/wfd/WifiDisplayWaringDialog;-><init>(Landroid/content/Context;Lcom/android/settings/wfd/WifiDisplayWaringDialog$WifiDisplayWaringDialogListener;I)V

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_3

    .line 211
    :cond_f
    sget-object p2, Lcom/android/settings/dualwifi/DualWifiReceiver;->mDualWifiManager:Lasus/net/vicewifi/WifiViceManager;

    invoke-virtual {p2}, Lasus/net/vicewifi/WifiViceManager;->isWifiEnabled()Z

    move-result p2

    if-nez p2, :cond_1d

    sget-object p2, Lcom/android/settings/dualwifi/DualWifiReceiver;->mMasterWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result p2

    if-eqz p2, :cond_1d

    if-eqz v5, :cond_1d

    const-string p2, "**** Enable dual Wi-Fi"

    .line 212
    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-direct {p0, p1}, Lcom/android/settings/dualwifi/DualWifiReceiver;->getAvoidBadWifiValue(Landroid/content/Context;)I

    .line 218
    invoke-static {p1, v3}, Lcom/android/settings/dualwifi/DualWifiReceiver;->setDualWifiEnabled(Landroid/content/Context;Z)Z

    goto/16 :goto_3

    :cond_10
    const-string v1, "com.asus.settings.dualwifi.action.DISABLE_WIFI"

    .line 220
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 221
    sget-boolean p0, Lcom/android/settings/dualwifi/DualWifiReceiver;->mIsTimerEnabled:Z

    if-eqz p0, :cond_11

    .line 222
    invoke-static {p1, v5}, Lcom/android/settings/dualwifi/DualWifiReceiver;->setTimer(Landroid/content/Context;Z)V

    .line 225
    :cond_11
    sget-object p0, Lcom/android/settings/dualwifi/DualWifiReceiver;->mDualWifiManager:Lasus/net/vicewifi/WifiViceManager;

    invoke-virtual {p0}, Lasus/net/vicewifi/WifiViceManager;->isWifiEnabled()Z

    move-result p0

    if-eqz p0, :cond_1d

    .line 227
    invoke-static {p1, v5}, Lcom/android/settings/dualwifi/DualWifiReceiver;->setDualWifiEnabled(Landroid/content/Context;Z)Z

    goto/16 :goto_3

    :cond_12
    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    .line 233
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    const-string/jumbo v0, "wifi_state"

    .line 234
    invoke-virtual {p2, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const/16 v0, 0xb

    if-ne p2, v0, :cond_1d

    .line 235
    invoke-static {p1}, Lcom/android/settings/dualwifi/DualWifiReceiver;->isDualWifiSettingsEnabled(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1d

    .line 236
    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiReceiver;->mConnectivityManager:Landroid/net/ConnectivityManager;

    sget-object p2, Lcom/android/settings/dualwifi/DualWifiReceiver;->mMasterWifiManager:Landroid/net/wifi/WifiManager;

    .line 237
    invoke-virtual {p2}, Landroid/net/wifi/WifiManager;->getCurrentNetwork()Landroid/net/Network;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_13

    .line 238
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_13

    move v5, v3

    .line 239
    :cond_13
    sget-object p0, Lcom/android/settings/dualwifi/DualWifiReceiver;->mMasterWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result p0

    if-eqz p0, :cond_1d

    if-eqz v5, :cond_1d

    sget-object p0, Lcom/android/settings/dualwifi/DualWifiReceiver;->mDualWifiManager:Lasus/net/vicewifi/WifiViceManager;

    .line 240
    invoke-virtual {p0}, Lasus/net/vicewifi/WifiViceManager;->getWifiState()I

    move-result p0

    if-ne p0, v3, :cond_1d

    .line 241
    invoke-static {}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->isRestartHotspot()Z

    move-result p0

    if-nez p0, :cond_1d

    const-string p0, "Enable dual Wi-Fi"

    .line 242
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    invoke-static {p1, v3}, Lcom/android/settings/dualwifi/DualWifiReceiver;->setDualWifiEnabled(Landroid/content/Context;Z)Z

    goto/16 :goto_3

    :cond_14
    const-string v1, "android.net.wifi.STATE_CHANGE"

    .line 246
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v6, "networkInfo"

    if-eqz v1, :cond_18

    .line 248
    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/net/NetworkInfo;

    if-eqz p0, :cond_15

    .line 249
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p2

    if-eqz p2, :cond_15

    move p2, v3

    goto :goto_0

    :cond_15
    move p2, v5

    .line 250
    :goto_0
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object p0

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "main network detail state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", wifi state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/settings/dualwifi/DualWifiReceiver;->mMasterWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_16

    .line 252
    sget-object v0, Lcom/android/settings/dualwifi/DualWifiReceiver;->mDualWifiManager:Lasus/net/vicewifi/WifiViceManager;

    invoke-virtual {v0}, Lasus/net/vicewifi/WifiViceManager;->getWifiState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_16

    sget-object v0, Lcom/android/settings/dualwifi/DualWifiReceiver;->mPreState:Landroid/net/NetworkInfo$DetailedState;

    .line 253
    invoke-virtual {p0, v0}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 254
    sget-object p2, Lcom/android/settings/dualwifi/DualWifiReceiver;->mMasterWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p2}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result p2

    if-eq p2, v3, :cond_17

    if-eqz p2, :cond_17

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Disable dual Wi-Fi due to main Wi-Fi disconnect, main wifi state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    invoke-static {p1, v5}, Lcom/android/settings/dualwifi/DualWifiReceiver;->setDualWifiEnabled(Landroid/content/Context;Z)Z

    goto :goto_1

    :cond_16
    if-eqz p2, :cond_17

    .line 259
    sget-object p2, Lcom/android/settings/dualwifi/DualWifiReceiver;->mDualWifiManager:Lasus/net/vicewifi/WifiViceManager;

    invoke-virtual {p2}, Lasus/net/vicewifi/WifiViceManager;->getWifiState()I

    move-result p2

    if-ne p2, v3, :cond_17

    .line 260
    invoke-static {p1}, Lcom/android/settings/dualwifi/DualWifiReceiver;->isDualWifiSettingsEnabled(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_17

    sget-object p2, Lcom/android/settings/dualwifi/DualWifiReceiver;->mPreState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {p0, p2}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_17

    sget-object p2, Lcom/android/settings/dualwifi/DualWifiReceiver;->mMasterWifiManager:Landroid/net/wifi/WifiManager;

    .line 261
    invoke-virtual {p2}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result p2

    if-nez p2, :cond_17

    const-string p2, "Enable dual Wi-Fi due to main Wi-Fi connect and not timeout"

    .line 262
    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    invoke-static {p1, v3}, Lcom/android/settings/dualwifi/DualWifiReceiver;->setDualWifiEnabled(Landroid/content/Context;Z)Z

    .line 266
    :cond_17
    :goto_1
    sput-object p0, Lcom/android/settings/dualwifi/DualWifiReceiver;->mPreState:Landroid/net/NetworkInfo$DetailedState;

    goto/16 :goto_3

    :cond_18
    const-string v1, "asus.net.vicewifi.STATE_CHANGE"

    .line 267
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 269
    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/net/NetworkInfo;

    if-eqz p2, :cond_1d

    .line 271
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object p2

    .line 272
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const-string v1, ""

    if-ne p2, v0, :cond_19

    .line 273
    sget-object v0, Lcom/android/settings/dualwifi/DualWifiReceiver;->mDualWifiManager:Lasus/net/vicewifi/WifiViceManager;

    invoke-virtual {v0}, Lasus/net/vicewifi/WifiViceManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 274
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 275
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v0

    invoke-static {v0}, Lcom/android/settings/dualwifi/DualWifiUtils;->getBandIndex(I)I

    move-result v0

    .line 276
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dual wifi connected, SSID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", band type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    invoke-direct {p0, p1, v1, v0}, Lcom/android/settings/dualwifi/DualWifiReceiver;->sendWifiInfoBroadcast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 278
    invoke-direct {p0, p1}, Lcom/android/settings/dualwifi/DualWifiReceiver;->setDualWifiEverConnectedValue(Landroid/content/Context;)V

    .line 279
    sget-object p1, Lcom/android/settings/dualwifi/DualWifiReceiver;->mPreDualWifiState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {p2, p1}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1a

    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiReceiver;->mDropboxTracker:Lcom/android/settings/dropbox/DropboxTracker;

    if-eqz p0, :cond_1a

    const-string p1, "dual_wifi_connected"

    .line 280
    invoke-virtual {p0, p1}, Lcom/android/settings/dropbox/DropboxTracker;->addDualWifiText(Ljava/lang/String;)V

    goto :goto_2

    .line 282
    :cond_19
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p2, v0, :cond_1a

    const-string v0, "Dual wifi diconnect"

    .line 283
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    invoke-direct {p0, p1, v1, v5}, Lcom/android/settings/dualwifi/DualWifiReceiver;->sendWifiInfoBroadcast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 285
    sget-object p1, Lcom/android/settings/dualwifi/DualWifiReceiver;->mPreDualWifiState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {p2, p1}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1a

    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiReceiver;->mDropboxTracker:Lcom/android/settings/dropbox/DropboxTracker;

    if-eqz p0, :cond_1a

    const-string p1, "dual_wifi_disconnect"

    .line 286
    invoke-virtual {p0, p1}, Lcom/android/settings/dropbox/DropboxTracker;->addDualWifiText(Ljava/lang/String;)V

    .line 289
    :cond_1a
    :goto_2
    sput-object p2, Lcom/android/settings/dualwifi/DualWifiReceiver;->mPreDualWifiState:Landroid/net/NetworkInfo$DetailedState;

    goto/16 :goto_3

    :cond_1b
    const-string p0, "com.asus.captiveportal.unwant_wifi"

    .line 291
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1d

    const-string/jumbo p0, "wifi_interface"

    .line 292
    invoke-virtual {p2, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 293
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "interface type = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "0"

    .line 294
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string p2, "forget SSID = "

    const/4 v0, 0x0

    if-eqz p1, :cond_1c

    .line 295
    sget-object p0, Lcom/android/settings/dualwifi/DualWifiReceiver;->mMasterWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    .line 296
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result p1

    if-eq p1, v4, :cond_1d

    .line 297
    sget-object p1, Lcom/android/settings/dualwifi/DualWifiReceiver;->mMasterWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    invoke-virtual {p1, v1, v0}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 298
    sget-object p1, Lcom/android/settings/dualwifi/DualWifiReceiver;->mMasterWifiManager:Landroid/net/wifi/WifiManager;

    .line 299
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result p0

    .line 298
    invoke-static {p1, p0}, Lcom/android/settings/dualwifi/DualWifiUtils;->getWifiConfigurationByNetwordId(Landroid/net/wifi/WifiManager;I)Landroid/net/wifi/WifiConfiguration;

    move-result-object p0

    if-eqz p0, :cond_1d

    .line 301
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    sget-object p1, Lcom/android/settings/dualwifi/DualWifiReceiver;->mDualWifiManager:Lasus/net/vicewifi/WifiViceManager;

    .line 305
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object p0

    .line 303
    invoke-static {p1, p0}, Lcom/android/settings/dualwifi/DualWifiUtils;->getWifiConfigurationByKey(Lasus/net/vicewifi/WifiViceManager;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p0

    if-eqz p0, :cond_1d

    .line 307
    iget p0, p0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq p0, v4, :cond_1d

    .line 308
    sget-object p1, Lcom/android/settings/dualwifi/DualWifiReceiver;->mDualWifiManager:Lasus/net/vicewifi/WifiViceManager;

    invoke-virtual {p1, p0, v0}, Lasus/net/vicewifi/WifiViceManager;->forget(ILasus/net/vicewifi/WifiViceManager$ActionListener;)V

    goto :goto_3

    :cond_1c
    const-string p1, "1"

    .line 312
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1d

    .line 313
    sget-object p0, Lcom/android/settings/dualwifi/DualWifiReceiver;->mDualWifiManager:Lasus/net/vicewifi/WifiViceManager;

    invoke-virtual {p0}, Lasus/net/vicewifi/WifiViceManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    .line 314
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result p1

    if-eq p1, v4, :cond_1d

    .line 315
    sget-object p1, Lcom/android/settings/dualwifi/DualWifiReceiver;->mDualWifiManager:Lasus/net/vicewifi/WifiViceManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    invoke-virtual {p1, v1, v0}, Lasus/net/vicewifi/WifiViceManager;->forget(ILasus/net/vicewifi/WifiViceManager$ActionListener;)V

    .line 316
    sget-object p1, Lcom/android/settings/dualwifi/DualWifiReceiver;->mDualWifiManager:Lasus/net/vicewifi/WifiViceManager;

    .line 317
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result p0

    .line 316
    invoke-static {p1, p0}, Lcom/android/settings/dualwifi/DualWifiUtils;->getWifiConfigurationByNetwordId(Lasus/net/vicewifi/WifiViceManager;I)Landroid/net/wifi/WifiConfiguration;

    move-result-object p0

    if-eqz p0, :cond_1d

    .line 319
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    sget-object p1, Lcom/android/settings/dualwifi/DualWifiReceiver;->mMasterWifiManager:Landroid/net/wifi/WifiManager;

    .line 323
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object p0

    .line 321
    invoke-static {p1, p0}, Lcom/android/settings/dualwifi/DualWifiUtils;->getWifiConfigurationByKey(Landroid/net/wifi/WifiManager;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p0

    if-eqz p0, :cond_1d

    .line 325
    iget p0, p0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq p0, v4, :cond_1d

    .line 326
    sget-object p1, Lcom/android/settings/dualwifi/DualWifiReceiver;->mMasterWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, p0, v0}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    :cond_1d
    :goto_3
    return-void
.end method

.method public onTurnOff()V
    .locals 2

    const-string p0, "DualWifiReceiver"

    const-string v0, "Disalbe cast"

    .line 519
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    sget-object p0, Lcom/android/settings/dualwifi/DualWifiReceiver;->mRouter:Landroid/media/MediaRouter;

    invoke-virtual {p0}, Landroid/media/MediaRouter;->getSelectedRoute()Landroid/media/MediaRouter$RouteInfo;

    move-result-object p0

    .line 521
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 522
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->isBluetooth()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 523
    sget-object p0, Lcom/android/settings/dualwifi/DualWifiReceiver;->mRouter:Landroid/media/MediaRouter;

    invoke-virtual {p0}, Landroid/media/MediaRouter;->getDefaultRoute()Landroid/media/MediaRouter$RouteInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->select()V

    goto :goto_0

    .line 525
    :cond_0
    sget-object p0, Lcom/android/settings/dualwifi/DualWifiReceiver;->mRouter:Landroid/media/MediaRouter;

    invoke-virtual {p0}, Landroid/media/MediaRouter;->getFallbackRoute()Landroid/media/MediaRouter$RouteInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->select()V

    .line 529
    :cond_1
    :goto_0
    new-instance p0, Landroid/content/Intent;

    const-string v0, "com.asus.settings.dualwifi.action.ENABLE_WIFI"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x1000000

    .line 530
    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 531
    sget-object v0, Lcom/android/settings/dualwifi/DualWifiReceiver;->mContext:Landroid/content/Context;

    const-string v1, "com.asus.settings.permission.ENABLE_DISABLE_DUAL_WIFI"

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public onTurnOffHotspot()V
    .locals 1

    const-string p0, "DualWifiReceiver"

    const-string v0, "Disalbe hotspot at first"

    .line 364
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    sget-object p0, Lcom/android/settings/dualwifi/DualWifiReceiver;->mContext:Landroid/content/Context;

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    const/4 v0, 0x0

    .line 366
    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->stopTethering(I)V

    return-void
.end method

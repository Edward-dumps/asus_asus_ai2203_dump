.class public final Lcom/android/settings/dualwifi/DualWifiSummaryUpdater;
.super Lcom/android/settings/widget/SummaryUpdater;
.source "DualWifiSummaryUpdater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/dualwifi/DualWifiSummaryUpdater$SettingObserver;
    }
.end annotation


# static fields
.field private static final INTENT_FILTER:Landroid/content/IntentFilter;


# instance fields
.field private mBound:Z

.field private mConnection:Landroid/content/ServiceConnection;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mDualWifiManager:Lasus/net/vicewifi/WifiViceManager;

.field private mIPwrSvrMgr:Lcom/android/settings/fuelgauge/IPowerSaverManager;

.field private mIsConnected:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mSettingObserver:Lcom/android/settings/dualwifi/DualWifiSummaryUpdater$SettingObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 49
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/android/settings/dualwifi/DualWifiSummaryUpdater;->INTENT_FILTER:Landroid/content/IntentFilter;

    const-string v1, "asus.net.vicewifi.STATE_CHANGE"

    .line 50
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "change_system_mode"

    .line 51
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/widget/SummaryUpdater$OnSummaryChangeListener;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/SummaryUpdater;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SummaryUpdater$OnSummaryChangeListener;)V

    .line 159
    new-instance p2, Lcom/android/settings/dualwifi/DualWifiSummaryUpdater$2;

    invoke-direct {p2, p0}, Lcom/android/settings/dualwifi/DualWifiSummaryUpdater$2;-><init>(Lcom/android/settings/dualwifi/DualWifiSummaryUpdater;)V

    iput-object p2, p0, Lcom/android/settings/dualwifi/DualWifiSummaryUpdater;->mConnection:Landroid/content/ServiceConnection;

    .line 57
    invoke-static {p1}, Lasus/net/vicewifi/WifiViceManager;->getInstance(Landroid/content/Context;)Lasus/net/vicewifi/WifiViceManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/dualwifi/DualWifiSummaryUpdater;->mDualWifiManager:Lasus/net/vicewifi/WifiViceManager;

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/dualwifi/DualWifiSummaryUpdater;->mContentResolver:Landroid/content/ContentResolver;

    .line 60
    new-instance p1, Lcom/android/settings/dualwifi/DualWifiSummaryUpdater$SettingObserver;

    invoke-direct {p1, p0}, Lcom/android/settings/dualwifi/DualWifiSummaryUpdater$SettingObserver;-><init>(Lcom/android/settings/dualwifi/DualWifiSummaryUpdater;)V

    iput-object p1, p0, Lcom/android/settings/dualwifi/DualWifiSummaryUpdater;->mSettingObserver:Lcom/android/settings/dualwifi/DualWifiSummaryUpdater$SettingObserver;

    .line 61
    new-instance p1, Lcom/android/settings/dualwifi/DualWifiSummaryUpdater$1;

    invoke-direct {p1, p0}, Lcom/android/settings/dualwifi/DualWifiSummaryUpdater$1;-><init>(Lcom/android/settings/dualwifi/DualWifiSummaryUpdater;)V

    iput-object p1, p0, Lcom/android/settings/dualwifi/DualWifiSummaryUpdater;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/dualwifi/DualWifiSummaryUpdater;Z)Z
    .locals 0

    .line 34
    iput-boolean p1, p0, Lcom/android/settings/dualwifi/DualWifiSummaryUpdater;->mIsConnected:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/dualwifi/DualWifiSummaryUpdater;)V
    .locals 0

    .line 34
    invoke-virtual {p0}, Lcom/android/settings/widget/SummaryUpdater;->notifyChangeIfNeeded()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/dualwifi/DualWifiSummaryUpdater;)V
    .locals 0

    .line 34
    invoke-virtual {p0}, Lcom/android/settings/widget/SummaryUpdater;->notifyChangeIfNeeded()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/dualwifi/DualWifiSummaryUpdater;)V
    .locals 0

    .line 34
    invoke-virtual {p0}, Lcom/android/settings/widget/SummaryUpdater;->notifyChangeIfNeeded()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/dualwifi/DualWifiSummaryUpdater;)V
    .locals 0

    .line 34
    invoke-virtual {p0}, Lcom/android/settings/widget/SummaryUpdater;->notifyChangeIfNeeded()V

    return-void
.end method

.method static synthetic access$502(Lcom/android/settings/dualwifi/DualWifiSummaryUpdater;Lcom/android/settings/fuelgauge/IPowerSaverManager;)Lcom/android/settings/fuelgauge/IPowerSaverManager;
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/android/settings/dualwifi/DualWifiSummaryUpdater;->mIPwrSvrMgr:Lcom/android/settings/fuelgauge/IPowerSaverManager;

    return-object p1
.end method

.method static synthetic access$602(Lcom/android/settings/dualwifi/DualWifiSummaryUpdater;Z)Z
    .locals 0

    .line 34
    iput-boolean p1, p0, Lcom/android/settings/dualwifi/DualWifiSummaryUpdater;->mBound:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/settings/dualwifi/DualWifiSummaryUpdater;)V
    .locals 0

    .line 34
    invoke-virtual {p0}, Lcom/android/settings/widget/SummaryUpdater;->notifyChangeIfNeeded()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/dualwifi/DualWifiSummaryUpdater;)V
    .locals 0

    .line 34
    invoke-virtual {p0}, Lcom/android/settings/widget/SummaryUpdater;->notifyChangeIfNeeded()V

    return-void
.end method

.method private isDualWifiEnabled()Z
    .locals 4

    .line 184
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiSummaryUpdater;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "dual_wifi_enabled_settings"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 185
    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiSummaryUpdater;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "dual_wifi_enabled_systemmode"

    const/4 v3, -0x1

    invoke-static {p0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x1

    if-eq p0, v3, :cond_1

    if-ne p0, v1, :cond_0

    move v2, v1

    :cond_0
    return v2

    :cond_1
    if-ne v0, v1, :cond_2

    move v2, v1

    :cond_2
    return v2
.end method


# virtual methods
.method public getSummary()Ljava/lang/String;
    .locals 5

    .line 102
    invoke-direct {p0}, Lcom/android/settings/dualwifi/DualWifiSummaryUpdater;->isDualWifiEnabled()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 103
    iget-object v0, p0, Lcom/android/settings/widget/SummaryUpdater;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/dualwifi/DualWifiUtils;->isSystemMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settings/widget/SummaryUpdater;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settings/R$string;->switch_off_text:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/widget/SummaryUpdater;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->asus_system_mode_managed:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/android/settings/Utils;->getSystemModeName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-virtual {p0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 105
    :cond_0
    iget-object p0, p0, Lcom/android/settings/widget/SummaryUpdater;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->switch_off_text:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    .line 106
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/dualwifi/DualWifiSummaryUpdater;->mIsConnected:Z

    if-nez v0, :cond_3

    .line 107
    iget-object v0, p0, Lcom/android/settings/widget/SummaryUpdater;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/dualwifi/DualWifiUtils;->isSystemMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settings/widget/SummaryUpdater;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settings/R$string;->disconnected:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/widget/SummaryUpdater;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->asus_system_mode_managed:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/android/settings/Utils;->getSystemModeName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-virtual {p0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 109
    :cond_2
    iget-object p0, p0, Lcom/android/settings/widget/SummaryUpdater;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->disconnected:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0

    .line 112
    :cond_3
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiSummaryUpdater;->mDualWifiManager:Lasus/net/vicewifi/WifiViceManager;

    invoke-virtual {v0}, Lasus/net/vicewifi/WifiViceManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 114
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    const-string v4, "<unknown ssid>"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 115
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/wifi/WifiInfo;->sanitizeSsid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 122
    iget-object v3, p0, Lcom/android/settings/widget/SummaryUpdater;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/dualwifi/DualWifiUtils;->isSystemMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 123
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/widget/SummaryUpdater;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->asus_system_mode_managed:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/android/settings/Utils;->getSystemModeName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_4
    return-object v0

    .line 117
    :cond_5
    iget-object v0, p0, Lcom/android/settings/widget/SummaryUpdater;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/dualwifi/DualWifiUtils;->isSystemMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settings/widget/SummaryUpdater;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settings/R$string;->disconnected:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/widget/SummaryUpdater;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->asus_system_mode_managed:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/android/settings/Utils;->getSystemModeName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-virtual {p0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    .line 119
    :cond_6
    iget-object p0, p0, Lcom/android/settings/widget/SummaryUpdater;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->disconnected:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_2
    return-object p0
.end method

.method public register(Z)V
    .locals 3

    const-string v0, "DualWifiSummaryUpdater"

    if-eqz p1, :cond_0

    const-string p1, "register"

    .line 81
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/widget/SummaryUpdater;->notifyChangeIfNeeded()V

    .line 83
    iget-object p1, p0, Lcom/android/settings/widget/SummaryUpdater;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiSummaryUpdater;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v1, Lcom/android/settings/dualwifi/DualWifiSummaryUpdater;->INTENT_FILTER:Landroid/content/IntentFilter;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 84
    iget-object p1, p0, Lcom/android/settings/dualwifi/DualWifiSummaryUpdater;->mSettingObserver:Lcom/android/settings/dualwifi/DualWifiSummaryUpdater$SettingObserver;

    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiSummaryUpdater;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p1, v0}, Lcom/android/settings/dualwifi/DualWifiSummaryUpdater$SettingObserver;->register(Landroid/content/ContentResolver;)V

    .line 87
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 88
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.asus.powersaver"

    const-string v2, "com.asus.powersaver.PowerSaverService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 90
    iget-object v0, p0, Lcom/android/settings/widget/SummaryUpdater;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiSummaryUpdater;->mConnection:Landroid/content/ServiceConnection;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_0

    :cond_0
    const-string p1, "unregister"

    .line 92
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object p1, p0, Lcom/android/settings/widget/SummaryUpdater;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiSummaryUpdater;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 94
    iget-object p1, p0, Lcom/android/settings/dualwifi/DualWifiSummaryUpdater;->mSettingObserver:Lcom/android/settings/dualwifi/DualWifiSummaryUpdater$SettingObserver;

    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiSummaryUpdater;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p1, v0}, Lcom/android/settings/dualwifi/DualWifiSummaryUpdater$SettingObserver;->unregister(Landroid/content/ContentResolver;)V

    .line 96
    iget-object p1, p0, Lcom/android/settings/widget/SummaryUpdater;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiSummaryUpdater;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :goto_0
    return-void
.end method

.class public Lcom/android/settings/dualwifi/DualWifiEnabler;
.super Ljava/lang/Object;
.source "DualWifiEnabler.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/dualwifi/DualWifiEnabler$SettingObserver;
    }
.end annotation


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mIsSystemMode:Z

.field private mListeningToOnSwitchChange:Z

.field private final mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mSettingObserver:Lcom/android/settings/dualwifi/DualWifiEnabler$SettingObserver;

.field private mStateMachineEvent:Z

.field private final mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchWidgetController;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dualwifi/DualWifiEnabler;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/android/settings/dualwifi/DualWifiEnabler;->mListeningToOnSwitchChange:Z

    .line 36
    new-instance v0, Lcom/android/settings/dualwifi/DualWifiEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/dualwifi/DualWifiEnabler$1;-><init>(Lcom/android/settings/dualwifi/DualWifiEnabler;)V

    iput-object v0, p0, Lcom/android/settings/dualwifi/DualWifiEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 48
    iput-object p1, p0, Lcom/android/settings/dualwifi/DualWifiEnabler;->mContext:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lcom/android/settings/dualwifi/DualWifiEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    .line 50
    invoke-virtual {p2, p0}, Lcom/android/settings/widget/SwitchWidgetController;->setListener(Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;)V

    .line 51
    iput-object p3, p0, Lcom/android/settings/dualwifi/DualWifiEnabler;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    const-string/jumbo p2, "wifi"

    .line 52
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/wifi/WifiManager;

    iput-object p2, p0, Lcom/android/settings/dualwifi/DualWifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/dualwifi/DualWifiEnabler;->mContentResolver:Landroid/content/ContentResolver;

    .line 54
    new-instance p1, Lcom/android/settings/dualwifi/DualWifiEnabler$SettingObserver;

    invoke-direct {p1, p0}, Lcom/android/settings/dualwifi/DualWifiEnabler$SettingObserver;-><init>(Lcom/android/settings/dualwifi/DualWifiEnabler;)V

    iput-object p1, p0, Lcom/android/settings/dualwifi/DualWifiEnabler;->mSettingObserver:Lcom/android/settings/dualwifi/DualWifiEnabler$SettingObserver;

    .line 55
    new-instance p1, Landroid/content/IntentFilter;

    const-string p2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {p1, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/settings/dualwifi/DualWifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 57
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/DualWifiEnabler;->setupSwitchController()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/dualwifi/DualWifiEnabler;)Z
    .locals 0

    .line 21
    iget-boolean p0, p0, Lcom/android/settings/dualwifi/DualWifiEnabler;->mIsSystemMode:Z

    return p0
.end method

.method static synthetic access$002(Lcom/android/settings/dualwifi/DualWifiEnabler;Z)Z
    .locals 0

    .line 21
    iput-boolean p1, p0, Lcom/android/settings/dualwifi/DualWifiEnabler;->mIsSystemMode:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/dualwifi/DualWifiEnabler;)Landroid/net/wifi/WifiManager;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/dualwifi/DualWifiEnabler;I)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/android/settings/dualwifi/DualWifiEnabler;->handleWifiStateChanged(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/dualwifi/DualWifiEnabler;)Lcom/android/settings/widget/SwitchWidgetController;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/settings/dualwifi/DualWifiEnabler;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/android/settings/dualwifi/DualWifiEnabler;->updateState()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/dualwifi/DualWifiEnabler;)Landroid/content/Context;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiEnabler;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private handleWifiStateChanged(I)V
    .locals 3

    .line 105
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchWidgetController;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    .line 120
    invoke-direct {p0, v0}, Lcom/android/settings/dualwifi/DualWifiEnabler;->setSwitchBarChecked(Z)V

    .line 121
    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {p0, v1}, Lcom/android/settings/widget/SwitchWidgetController;->setEnabled(Z)V

    goto :goto_0

    .line 111
    :cond_0
    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {p0, v1}, Lcom/android/settings/widget/SwitchWidgetController;->setEnabled(Z)V

    goto :goto_0

    .line 117
    :cond_1
    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/SwitchWidgetController;->setEnabled(Z)V

    goto :goto_0

    .line 114
    :cond_2
    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/SwitchWidgetController;->setEnabled(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method private isSettingsEnabled()Z
    .locals 4

    .line 164
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/dualwifi/DualWifiUtils;->getSystemModeValue(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1

    .line 168
    :cond_1
    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiEnabler;->mContext:Landroid/content/Context;

    .line 169
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "dual_wifi_enabled_settings"

    .line 168
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v2, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method private setSettingsEnabled(Z)V
    .locals 1

    .line 178
    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiEnabler;->mContext:Landroid/content/Context;

    .line 179
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "dual_wifi_enabled_settings"

    .line 178
    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private setSwitchBarChecked(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 126
    iput-boolean v0, p0, Lcom/android/settings/dualwifi/DualWifiEnabler;->mStateMachineEvent:Z

    .line 127
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/SwitchWidgetController;->setChecked(Z)V

    const/4 p1, 0x0

    .line 128
    iput-boolean p1, p0, Lcom/android/settings/dualwifi/DualWifiEnabler;->mStateMachineEvent:Z

    return-void
.end method

.method private updateState()V
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    if-eqz v0, :cond_1

    .line 223
    invoke-direct {p0}, Lcom/android/settings/dualwifi/DualWifiEnabler;->isSettingsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 224
    invoke-virtual {p0, v0}, Lcom/android/settings/dualwifi/DualWifiEnabler;->setSaftyChecked(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 226
    invoke-virtual {p0, v0}, Lcom/android/settings/dualwifi/DualWifiEnabler;->setSaftyChecked(Z)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public notifySwitchUpdate()V
    .locals 2

    .line 232
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/dualwifi/DualWifiUtils;->isSystemMode(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/dualwifi/DualWifiEnabler;->mIsSystemMode:Z

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifySwitchUpdate Detect system mode change: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settings/dualwifi/DualWifiEnabler;->mIsSystemMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DualWifiEnabler"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-boolean v0, p0, Lcom/android/settings/dualwifi/DualWifiEnabler;->mIsSystemMode:Z

    if-nez v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/dualwifi/DualWifiEnabler;->handleWifiStateChanged(I)V

    goto :goto_0

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchWidgetController;->setEnabled(Z)V

    .line 239
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/dualwifi/DualWifiEnabler;->updateState()V

    return-void
.end method

.method public onSwitchToggled(Z)Z
    .locals 4

    .line 134
    iget-boolean v0, p0, Lcom/android/settings/dualwifi/DualWifiEnabler;->mStateMachineEvent:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 138
    :cond_0
    new-instance v0, Landroid/content/Intent;

    if-eqz p1, :cond_1

    const-string v2, "com.asus.settings.dualwifi.action.ENABLE_WIFI"

    goto :goto_0

    :cond_1
    const-string v2, "com.asus.settings.dualwifi.action.DISABLE_WIFI"

    .line 140
    :goto_0
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x1000000

    .line 141
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 142
    iget-object v2, p0, Lcom/android/settings/dualwifi/DualWifiEnabler;->mContext:Landroid/content/Context;

    const-string v3, "com.asus.settings.permission.ENABLE_DISABLE_DUAL_WIFI"

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/SwitchWidgetController;->setEnabled(Z)V

    .line 145
    invoke-direct {p0, p1}, Lcom/android/settings/dualwifi/DualWifiEnabler;->setSettingsEnabled(Z)V

    .line 146
    iget-object p1, p0, Lcom/android/settings/dualwifi/DualWifiEnabler;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/dualwifi/DualWifiEnabler$2;

    invoke-direct {v0, p0}, Lcom/android/settings/dualwifi/DualWifiEnabler$2;-><init>(Lcom/android/settings/dualwifi/DualWifiEnabler;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return v1
.end method

.method public pause()V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/dualwifi/DualWifiEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 96
    iget-boolean v0, p0, Lcom/android/settings/dualwifi/DualWifiEnabler;->mListeningToOnSwitchChange:Z

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchWidgetController;->stopListening()V

    const/4 v0, 0x0

    .line 98
    iput-boolean v0, p0, Lcom/android/settings/dualwifi/DualWifiEnabler;->mListeningToOnSwitchChange:Z

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiEnabler;->mSettingObserver:Lcom/android/settings/dualwifi/DualWifiEnabler$SettingObserver;

    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiEnabler;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p0}, Lcom/android/settings/dualwifi/DualWifiEnabler$SettingObserver;->unregister(Landroid/content/ContentResolver;)V

    return-void
.end method

.method public resume(Landroid/content/Context;)V
    .locals 2

    .line 84
    iput-object p1, p0, Lcom/android/settings/dualwifi/DualWifiEnabler;->mContext:Landroid/content/Context;

    .line 86
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/settings/dualwifi/DualWifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 87
    iget-boolean p1, p0, Lcom/android/settings/dualwifi/DualWifiEnabler;->mListeningToOnSwitchChange:Z

    if-nez p1, :cond_0

    .line 88
    iget-object p1, p0, Lcom/android/settings/dualwifi/DualWifiEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {p1}, Lcom/android/settings/widget/SwitchWidgetController;->startListening()V

    const/4 p1, 0x1

    .line 89
    iput-boolean p1, p0, Lcom/android/settings/dualwifi/DualWifiEnabler;->mListeningToOnSwitchChange:Z

    .line 91
    :cond_0
    iget-object p1, p0, Lcom/android/settings/dualwifi/DualWifiEnabler;->mSettingObserver:Lcom/android/settings/dualwifi/DualWifiEnabler$SettingObserver;

    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiEnabler;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p1, p0}, Lcom/android/settings/dualwifi/DualWifiEnabler$SettingObserver;->register(Landroid/content/ContentResolver;)V

    return-void
.end method

.method public setSaftyChecked(Z)V
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchWidgetController;->stopListening()V

    .line 158
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/SwitchWidgetController;->setChecked(Z)V

    .line 159
    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {p0}, Lcom/android/settings/widget/SwitchWidgetController;->startListening()V

    :cond_0
    return-void
.end method

.method public setupSwitchController()V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-direct {p0}, Lcom/android/settings/dualwifi/DualWifiEnabler;->isSettingsEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchWidgetController;->setChecked(Z)V

    .line 62
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/dualwifi/DualWifiUtils;->isSystemMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchWidgetController;->setEnabled(Z)V

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .line 67
    invoke-direct {p0, v0}, Lcom/android/settings/dualwifi/DualWifiEnabler;->handleWifiStateChanged(I)V

    .line 68
    iget-boolean v0, p0, Lcom/android/settings/dualwifi/DualWifiEnabler;->mListeningToOnSwitchChange:Z

    if-nez v0, :cond_1

    .line 69
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchWidgetController;->startListening()V

    const/4 v0, 0x1

    .line 70
    iput-boolean v0, p0, Lcom/android/settings/dualwifi/DualWifiEnabler;->mListeningToOnSwitchChange:Z

    .line 72
    :cond_1
    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {p0}, Lcom/android/settings/widget/SwitchWidgetController;->setupView()V

    return-void
.end method

.method public teardownSwitchController()V
    .locals 1

    .line 76
    iget-boolean v0, p0, Lcom/android/settings/dualwifi/DualWifiEnabler;->mListeningToOnSwitchChange:Z

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchWidgetController;->stopListening()V

    const/4 v0, 0x0

    .line 78
    iput-boolean v0, p0, Lcom/android/settings/dualwifi/DualWifiEnabler;->mListeningToOnSwitchChange:Z

    .line 80
    :cond_0
    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {p0}, Lcom/android/settings/widget/SwitchWidgetController;->teardownView()V

    return-void
.end method

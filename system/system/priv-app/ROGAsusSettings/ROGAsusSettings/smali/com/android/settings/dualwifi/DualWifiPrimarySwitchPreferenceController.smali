.class public Lcom/android/settings/dualwifi/DualWifiPrimarySwitchPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "DualWifiPrimarySwitchPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settings/widget/SummaryUpdater$OnSummaryChangeListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;
.implements Landroidx/lifecycle/LifecycleEventObserver;


# instance fields
.field private mDualWifiEnabler:Lcom/android/settings/dualwifi/DualWifiEnabler;

.field private mPreference:Lcom/android/settings/widget/PrimarySwitchPreference;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mSummaryHelper:Lcom/android/settings/dualwifi/DualWifiSummaryUpdater;

.field private mSystemModeReceiver:Landroid/content/BroadcastReceiver;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    .line 42
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    if-eqz p2, :cond_0

    .line 47
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 48
    new-instance p2, Lcom/android/settings/dualwifi/DualWifiSummaryUpdater;

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0, p0}, Lcom/android/settings/dualwifi/DualWifiSummaryUpdater;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SummaryUpdater$OnSummaryChangeListener;)V

    iput-object p2, p0, Lcom/android/settings/dualwifi/DualWifiPrimarySwitchPreferenceController;->mSummaryHelper:Lcom/android/settings/dualwifi/DualWifiSummaryUpdater;

    const-string/jumbo p2, "wifi"

    .line 49
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/android/settings/dualwifi/DualWifiPrimarySwitchPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 50
    new-instance p1, Lcom/android/settings/dualwifi/DualWifiPrimarySwitchPreferenceController$1;

    invoke-direct {p1, p0}, Lcom/android/settings/dualwifi/DualWifiPrimarySwitchPreferenceController$1;-><init>(Lcom/android/settings/dualwifi/DualWifiPrimarySwitchPreferenceController;)V

    iput-object p1, p0, Lcom/android/settings/dualwifi/DualWifiPrimarySwitchPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void

    .line 44
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Lifecycle must be set"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic access$000(Lcom/android/settings/dualwifi/DualWifiPrimarySwitchPreferenceController;)Landroid/net/wifi/WifiManager;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiPrimarySwitchPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/dualwifi/DualWifiPrimarySwitchPreferenceController;I)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/android/settings/dualwifi/DualWifiPrimarySwitchPreferenceController;->handleWifiStateChanged(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/dualwifi/DualWifiPrimarySwitchPreferenceController;)Lcom/android/settings/dualwifi/DualWifiEnabler;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiPrimarySwitchPreferenceController;->mDualWifiEnabler:Lcom/android/settings/dualwifi/DualWifiEnabler;

    return-object p0
.end method

.method private handleWifiStateChanged(I)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 157
    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiPrimarySwitchPreferenceController;->mPreference:Lcom/android/settings/widget/PrimarySwitchPreference;

    invoke-virtual {p0, v1}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    goto :goto_0

    .line 148
    :cond_0
    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiPrimarySwitchPreferenceController;->mPreference:Lcom/android/settings/widget/PrimarySwitchPreference;

    invoke-virtual {p0, v1}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    goto :goto_0

    .line 154
    :cond_1
    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiPrimarySwitchPreferenceController;->mPreference:Lcom/android/settings/widget/PrimarySwitchPreference;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    goto :goto_0

    .line 151
    :cond_2
    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiPrimarySwitchPreferenceController;->mPreference:Lcom/android/settings/widget/PrimarySwitchPreference;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 63
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "toggle_dualwifi"

    .line 64
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/PrimarySwitchPreference;

    iput-object p1, p0, Lcom/android/settings/dualwifi/DualWifiPrimarySwitchPreferenceController;->mPreference:Lcom/android/settings/widget/PrimarySwitchPreference;

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "toggle_dualwifi"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/dualwifi/DualWifiUtils;->getWifiViceManager(Landroid/content/Context;)Lasus/net/vicewifi/WifiViceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 70
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "asus.software.slm_dbs_ui"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onPause()V
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiPrimarySwitchPreferenceController;->mSummaryHelper:Lcom/android/settings/dualwifi/DualWifiSummaryUpdater;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/dualwifi/DualWifiSummaryUpdater;->register(Z)V

    .line 92
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiPrimarySwitchPreferenceController;->mDualWifiEnabler:Lcom/android/settings/dualwifi/DualWifiEnabler;

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {v0}, Lcom/android/settings/dualwifi/DualWifiEnabler;->pause()V

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiPrimarySwitchPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiPrimarySwitchPreferenceController;->mSummaryHelper:Lcom/android/settings/dualwifi/DualWifiSummaryUpdater;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/dualwifi/DualWifiSummaryUpdater;->register(Z)V

    .line 81
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiPrimarySwitchPreferenceController;->mDualWifiEnabler:Lcom/android/settings/dualwifi/DualWifiEnabler;

    if-eqz v0, :cond_0

    .line 82
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/settings/dualwifi/DualWifiEnabler;->resume(Landroid/content/Context;)V

    .line 85
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 86
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiPrimarySwitchPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onStart()V
    .locals 4

    .line 100
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiPrimarySwitchPreferenceController;->mPreference:Lcom/android/settings/widget/PrimarySwitchPreference;

    if-eqz v0, :cond_0

    .line 101
    new-instance v1, Lcom/android/settings/dualwifi/DualWifiEnabler;

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/settings/widget/GenericSwitchController;

    invoke-direct {v3, v0}, Lcom/android/settings/widget/GenericSwitchController;-><init>(Lcom/android/settings/widget/PrimarySwitchPreference;)V

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 102
    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lcom/android/settings/dualwifi/DualWifiEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchWidgetController;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;)V

    iput-object v1, p0, Lcom/android/settings/dualwifi/DualWifiPrimarySwitchPreferenceController;->mDualWifiEnabler:Lcom/android/settings/dualwifi/DualWifiEnabler;

    :cond_0
    return-void
.end method

.method public onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 0

    .line 122
    sget-object p1, Lcom/android/settings/dualwifi/DualWifiPrimarySwitchPreferenceController$3;->$SwitchMap$androidx$lifecycle$Lifecycle$Event:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 136
    :cond_0
    iget-object p1, p0, Lcom/android/settings/dualwifi/DualWifiPrimarySwitchPreferenceController;->mSystemModeReceiver:Landroid/content/BroadcastReceiver;

    if-eqz p1, :cond_2

    .line 137
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0

    .line 124
    :cond_1
    new-instance p1, Landroid/content/IntentFilter;

    const-string p2, "change_system_mode"

    invoke-direct {p1, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 125
    new-instance p2, Lcom/android/settings/dualwifi/DualWifiPrimarySwitchPreferenceController$2;

    invoke-direct {p2, p0}, Lcom/android/settings/dualwifi/DualWifiPrimarySwitchPreferenceController$2;-><init>(Lcom/android/settings/dualwifi/DualWifiPrimarySwitchPreferenceController;)V

    iput-object p2, p0, Lcom/android/settings/dualwifi/DualWifiPrimarySwitchPreferenceController;->mSystemModeReceiver:Landroid/content/BroadcastReceiver;

    .line 132
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_2
    :goto_0
    return-void
.end method

.method public onStop()V
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiPrimarySwitchPreferenceController;->mDualWifiEnabler:Lcom/android/settings/dualwifi/DualWifiEnabler;

    if-eqz p0, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/android/settings/dualwifi/DualWifiEnabler;->teardownSwitchController()V

    :cond_0
    return-void
.end method

.method public onSummaryChanged(Ljava/lang/String;)V
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiPrimarySwitchPreferenceController;->mPreference:Lcom/android/settings/widget/PrimarySwitchPreference;

    if-eqz p0, :cond_0

    .line 116
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

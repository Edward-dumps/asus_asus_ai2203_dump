.class public Lcom/android/settings/network/EthernetPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "EthernetPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private mCm:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mEm:Landroid/net/EthernetManager;

.field private mEthernetListener:Landroid/net/EthernetManager$Listener;

.field private mEthernetRegex:Ljava/lang/String;

.field private mPreference:Landroidx/preference/Preference;

.field private mTm:Landroid/net/TetheringManager;

.field private mUsbChangeReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 5

    .line 51
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 52
    iput-object p1, p0, Lcom/android/settings/network/EthernetPreferenceController;->mContext:Landroid/content/Context;

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "config_ethernet_iface_regex"

    const-string v3, "string"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 53
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/EthernetPreferenceController;->mEthernetRegex:Ljava/lang/String;

    const-string v0, "connectivity"

    .line 55
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/settings/network/EthernetPreferenceController;->mCm:Landroid/net/ConnectivityManager;

    .line 56
    iget-object v0, p0, Lcom/android/settings/network/EthernetPreferenceController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/net/TetheringManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/TetheringManager;

    iput-object v0, p0, Lcom/android/settings/network/EthernetPreferenceController;->mTm:Landroid/net/TetheringManager;

    const-string v0, "ethernet"

    .line 58
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/EthernetManager;

    iput-object p1, p0, Lcom/android/settings/network/EthernetPreferenceController;->mEm:Landroid/net/EthernetManager;

    if-eqz p2, :cond_0

    .line 61
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/network/EthernetPreferenceController;)Landroidx/preference/Preference;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/android/settings/network/EthernetPreferenceController;->mPreference:Landroidx/preference/Preference;

    return-object p0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 115
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "ethernet_settings"

    .line 116
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/EthernetPreferenceController;->mPreference:Landroidx/preference/Preference;

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "ethernet_settings"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onStart()V
    .locals 2

    .line 68
    new-instance v0, Lcom/android/settings/network/EthernetPreferenceController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/network/EthernetPreferenceController$1;-><init>(Lcom/android/settings/network/EthernetPreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/network/EthernetPreferenceController;->mEthernetListener:Landroid/net/EthernetManager$Listener;

    .line 75
    iget-object v1, p0, Lcom/android/settings/network/EthernetPreferenceController;->mEm:Landroid/net/EthernetManager;

    if-eqz v1, :cond_0

    .line 76
    invoke-virtual {v1, v0}, Landroid/net/EthernetManager;->addListener(Landroid/net/EthernetManager$Listener;)V

    .line 78
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.hardware.usb.action.USB_STATE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 79
    new-instance v1, Lcom/android/settings/network/EthernetPreferenceController$2;

    invoke-direct {v1, p0}, Lcom/android/settings/network/EthernetPreferenceController$2;-><init>(Lcom/android/settings/network/EthernetPreferenceController;)V

    iput-object v1, p0, Lcom/android/settings/network/EthernetPreferenceController;->mUsbChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 88
    iget-object p0, p0, Lcom/android/settings/network/EthernetPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/android/settings/network/EthernetPreferenceController;->mEm:Landroid/net/EthernetManager;

    if-eqz v0, :cond_0

    .line 95
    iget-object v1, p0, Lcom/android/settings/network/EthernetPreferenceController;->mEthernetListener:Landroid/net/EthernetManager$Listener;

    invoke-virtual {v0, v1}, Landroid/net/EthernetManager;->removeListener(Landroid/net/EthernetManager$Listener;)V

    :cond_0
    const/4 v0, 0x0

    .line 97
    iput-object v0, p0, Lcom/android/settings/network/EthernetPreferenceController;->mEthernetListener:Landroid/net/EthernetManager$Listener;

    .line 98
    iget-object v0, p0, Lcom/android/settings/network/EthernetPreferenceController;->mUsbChangeReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 99
    iget-object p0, p0, Lcom/android/settings/network/EthernetPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 8

    .line 124
    iget-object v0, p0, Lcom/android/settings/network/EthernetPreferenceController;->mTm:Landroid/net/TetheringManager;

    invoke-virtual {v0}, Landroid/net/TetheringManager;->getTetherableIfaces()[Ljava/lang/String;

    move-result-object v0

    .line 125
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-ge v3, v1, :cond_1

    aget-object v6, v0, v3

    .line 126
    iget-object v7, p0, Lcom/android/settings/network/EthernetPreferenceController;->mEthernetRegex:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v4, v5

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 128
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateState, isAvailable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EthernetPreferenceController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v4, :cond_3

    .line 130
    iget-object p0, p0, Lcom/android/settings/network/EthernetPreferenceController;->mEm:Landroid/net/EthernetManager;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/net/EthernetManager;->isAvailable()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    .line 134
    :cond_2
    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 135
    sget p0, Lcom/android/settings/R$string;->radioInfo_data_disconnected:I

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_2

    .line 131
    :cond_3
    :goto_1
    invoke-virtual {p1, v5}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 132
    sget p0, Lcom/android/settings/R$string;->radioInfo_data_connected:I

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(I)V

    :goto_2
    return-void
.end method

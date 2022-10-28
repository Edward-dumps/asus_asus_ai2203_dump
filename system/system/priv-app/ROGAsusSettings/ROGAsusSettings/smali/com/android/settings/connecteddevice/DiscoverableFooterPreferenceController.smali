.class public Lcom/android/settings/connecteddevice/DiscoverableFooterPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "DiscoverableFooterPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;
.implements Lcom/android/settingslib/core/lifecycle/events/OnDestroy;


# static fields
.field private static final KEY:Ljava/lang/String; = "discoverable_footer_preference"


# instance fields
.field private mAlwaysDiscoverable:Lcom/android/settings/bluetooth/AlwaysDiscoverable;

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field mBluetoothChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mIsAlwaysDiscoverable:Z

.field mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field private mPreference:Lcom/android/settingslib/widget/FooterPreference;

.field private mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 68
    invoke-static {p1}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/connecteddevice/DiscoverableFooterPreferenceController;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-nez p2, :cond_0

    return-void

    .line 72
    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/connecteddevice/DiscoverableFooterPreferenceController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 73
    new-instance p2, Lcom/android/settings/bluetooth/AlwaysDiscoverable;

    invoke-direct {p2, p1}, Lcom/android/settings/bluetooth/AlwaysDiscoverable;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/connecteddevice/DiscoverableFooterPreferenceController;->mAlwaysDiscoverable:Lcom/android/settings/bluetooth/AlwaysDiscoverable;

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/connecteddevice/DiscoverableFooterPreferenceController;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 75
    invoke-direct {p0}, Lcom/android/settings/connecteddevice/DiscoverableFooterPreferenceController;->initReceiver()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/connecteddevice/DiscoverableFooterPreferenceController;I)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/android/settings/connecteddevice/DiscoverableFooterPreferenceController;->updateFooterPreferenceTitle(I)V

    return-void
.end method

.method private getPreferenceTitle()Ljava/lang/CharSequence;
    .locals 5

    const-string v0, "ro.product.model"

    .line 139
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 140
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_name"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 142
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 145
    :cond_0
    iget-object v2, p0, Lcom/android/settings/connecteddevice/DiscoverableFooterPreferenceController;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "local_device_name"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 147
    iget-object v3, p0, Lcom/android/settings/connecteddevice/DiscoverableFooterPreferenceController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v3

    .line 148
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 149
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 151
    iget-object v0, p0, Lcom/android/settings/connecteddevice/DiscoverableFooterPreferenceController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->setName(Ljava/lang/String;)Z

    goto :goto_0

    .line 153
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 155
    iget-object v0, p0, Lcom/android/settings/connecteddevice/DiscoverableFooterPreferenceController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->setName(Ljava/lang/String;)Z

    goto :goto_0

    .line 158
    :cond_2
    iget-object v0, p0, Lcom/android/settings/connecteddevice/DiscoverableFooterPreferenceController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothAdapter;->setName(Ljava/lang/String;)Z

    move-object v1, v2

    goto :goto_0

    :cond_3
    move-object v1, v3

    .line 163
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 167
    :cond_4
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->bluetooth_device_name_summary:I

    .line 168
    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    .line 169
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 167
    invoke-static {p0, v0}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private initReceiver()V
    .locals 1

    .line 173
    new-instance v0, Lcom/android/settings/connecteddevice/DiscoverableFooterPreferenceController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/connecteddevice/DiscoverableFooterPreferenceController$1;-><init>(Lcom/android/settings/connecteddevice/DiscoverableFooterPreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/connecteddevice/DiscoverableFooterPreferenceController;->mBluetoothChangedReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private updateFooterPreferenceTitle(I)V
    .locals 1

    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    .line 132
    iget-object p1, p0, Lcom/android/settings/connecteddevice/DiscoverableFooterPreferenceController;->mPreference:Lcom/android/settingslib/widget/FooterPreference;

    invoke-direct {p0}, Lcom/android/settings/connecteddevice/DiscoverableFooterPreferenceController;->getPreferenceTitle()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 134
    :cond_0
    iget-object p0, p0, Lcom/android/settings/connecteddevice/DiscoverableFooterPreferenceController;->mPreference:Lcom/android/settingslib/widget/FooterPreference;

    sget p1, Lcom/android/settings/R$string;->bluetooth_off_footer:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setTitle(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 80
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 81
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/FooterPreference;

    iput-object p1, p0, Lcom/android/settings/connecteddevice/DiscoverableFooterPreferenceController;->mPreference:Lcom/android/settingslib/widget/FooterPreference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 86
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.bluetooth"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

    :goto_0
    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/settings/slices/SliceBackgroundWorker;",
            ">;"
        }
    .end annotation

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isCopyableSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isCopyableSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

    move-result p0

    return p0
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    .line 127
    iput-object v0, p0, Lcom/android/settings/connecteddevice/DiscoverableFooterPreferenceController;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method public onStart()V
    .locals 4

    .line 93
    iget-object v0, p0, Lcom/android/settings/connecteddevice/DiscoverableFooterPreferenceController;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-nez v0, :cond_0

    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/connecteddevice/DiscoverableFooterPreferenceController;->mBluetoothChangedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 98
    iget-boolean v0, p0, Lcom/android/settings/connecteddevice/DiscoverableFooterPreferenceController;->mIsAlwaysDiscoverable:Z

    if-eqz v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/android/settings/connecteddevice/DiscoverableFooterPreferenceController;->mAlwaysDiscoverable:Lcom/android/settings/bluetooth/AlwaysDiscoverable;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/AlwaysDiscoverable;->start()V

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/android/settings/connecteddevice/DiscoverableFooterPreferenceController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/connecteddevice/DiscoverableFooterPreferenceController;->updateFooterPreferenceTitle(I)V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/android/settings/connecteddevice/DiscoverableFooterPreferenceController;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-nez v0, :cond_0

    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/connecteddevice/DiscoverableFooterPreferenceController;->mBluetoothChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 110
    iget-boolean v0, p0, Lcom/android/settings/connecteddevice/DiscoverableFooterPreferenceController;->mIsAlwaysDiscoverable:Z

    if-eqz v0, :cond_1

    .line 111
    iget-object p0, p0, Lcom/android/settings/connecteddevice/DiscoverableFooterPreferenceController;->mAlwaysDiscoverable:Lcom/android/settings/bluetooth/AlwaysDiscoverable;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/AlwaysDiscoverable;->stop()V

    :cond_1
    return-void
.end method

.method public setAlwaysDiscoverable(Z)V
    .locals 0

    .line 122
    iput-boolean p1, p0, Lcom/android/settings/connecteddevice/DiscoverableFooterPreferenceController;->mIsAlwaysDiscoverable:Z

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method

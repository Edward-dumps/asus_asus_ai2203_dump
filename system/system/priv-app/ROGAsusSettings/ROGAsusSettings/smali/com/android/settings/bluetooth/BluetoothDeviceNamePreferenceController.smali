.class public Lcom/android/settings/bluetooth/BluetoothDeviceNamePreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "BluetoothDeviceNamePreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/android/settingslib/core/lifecycle/events/OnDestroy;


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothNamePrefCtrl"


# instance fields
.field protected mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mPause:Z

.field mPreference:Landroidx/preference/Preference;

.field final mReceiver:Landroid/content/BroadcastReceiver;

.field protected mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 161
    new-instance p2, Lcom/android/settings/bluetooth/BluetoothDeviceNamePreferenceController$1;

    invoke-direct {p2, p0}, Lcom/android/settings/bluetooth/BluetoothDeviceNamePreferenceController$1;-><init>(Lcom/android/settings/bluetooth/BluetoothDeviceNamePreferenceController;)V

    iput-object p2, p0, Lcom/android/settings/bluetooth/BluetoothDeviceNamePreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 63
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/bluetooth/BluetoothDeviceNamePreferenceController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez p2, :cond_0

    const-string p0, "BluetoothNamePrefCtrl"

    const-string p1, "Bluetooth is not supported on this device"

    .line 65
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 68
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceNamePreferenceController;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/bluetooth/BluetoothDeviceNamePreferenceController;)Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceNamePreferenceController;->mPause:Z

    return p0
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method public createBluetoothDeviceNamePreference(Landroidx/preference/PreferenceScreen;I)Landroidx/preference/Preference;
    .locals 2

    .line 135
    new-instance v0, Landroidx/preference/Preference;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceNamePreferenceController;->mPreference:Landroidx/preference/Preference;

    .line 136
    invoke-virtual {v0, p2}, Landroidx/preference/Preference;->setOrder(I)V

    .line 137
    iget-object p2, p0, Lcom/android/settings/bluetooth/BluetoothDeviceNamePreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 138
    iget-object p2, p0, Lcom/android/settings/bluetooth/BluetoothDeviceNamePreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 140
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceNamePreferenceController;->mPreference:Landroidx/preference/Preference;

    return-object p0
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceNamePreferenceController;->mPreference:Landroidx/preference/Preference;

    .line 74
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceNamePreferenceController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz p0, :cond_0

    const/4 p0, 0x0

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

.method protected getDeviceName()Ljava/lang/String;
    .locals 0

    .line 154
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceNamePreferenceController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 4

    .line 117
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDeviceNamePreferenceController;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    .line 118
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    invoke-super {p0}, Lcom/android/settingslib/core/AbstractPreferenceController;->getSummary()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 122
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->bluetooth_device_name_summary:I

    .line 123
    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    .line 124
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    .line 122
    invoke-static {p0, v1}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    .line 124
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

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

    .line 102
    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceNamePreferenceController;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method public onPause()V
    .locals 1

    const/4 v0, 0x1

    .line 97
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceNamePreferenceController;->mPause:Z

    return-void
.end method

.method public onResume()V
    .locals 1

    const/4 v0, 0x0

    .line 92
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceNamePreferenceController;->mPause:Z

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 79
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

    .line 80
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 81
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 82
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceNamePreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceNamePreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected updatePreferenceState(Landroidx/preference/Preference;)V
    .locals 1

    const/4 v0, 0x0

    .line 149
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 150
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDeviceNamePreferenceController;->getSummary()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 112
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/BluetoothDeviceNamePreferenceController;->updatePreferenceState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method

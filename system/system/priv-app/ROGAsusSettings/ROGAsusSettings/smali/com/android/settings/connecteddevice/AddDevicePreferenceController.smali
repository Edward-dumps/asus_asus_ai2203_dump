.class public Lcom/android/settings/connecteddevice/AddDevicePreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "AddDevicePreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# static fields
.field public static final KEY_ADD_BT_DEVICES:Ljava/lang/String; = "add_bt_devices"


# instance fields
.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mPreference:Landroidx/preference/Preference;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 46
    new-instance p1, Lcom/android/settings/connecteddevice/AddDevicePreferenceController$1;

    invoke-direct {p1, p0}, Lcom/android/settings/connecteddevice/AddDevicePreferenceController$1;-><init>(Lcom/android/settings/connecteddevice/AddDevicePreferenceController;)V

    iput-object p1, p0, Lcom/android/settings/connecteddevice/AddDevicePreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 57
    new-instance p1, Landroid/content/IntentFilter;

    const-string p2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {p1, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/settings/connecteddevice/AddDevicePreferenceController;->mIntentFilter:Landroid/content/IntentFilter;

    .line 58
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/connecteddevice/AddDevicePreferenceController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/connecteddevice/AddDevicePreferenceController;)Landroidx/preference/Preference;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/settings/connecteddevice/AddDevicePreferenceController;->mPreference:Landroidx/preference/Preference;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 73
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 74
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/AddDevicePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/connecteddevice/AddDevicePreferenceController;->mPreference:Landroidx/preference/Preference;

    .line 76
    invoke-virtual {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 87
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.bluetooth"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

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

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "add_bt_devices"

    return-object p0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .line 94
    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/AddDevicePreferenceController;->isBluetoothEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    goto :goto_0

    .line 96
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->connected_device_add_device_summary:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 1

    .line 105
    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/AddDevicePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 106
    iget-object p1, p0, Lcom/android/settings/connecteddevice/AddDevicePreferenceController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    .line 108
    iget-object p0, p0, Lcom/android/settings/connecteddevice/AddDevicePreferenceController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method protected isBluetoothEnabled()Z
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/android/settings/connecteddevice/AddDevicePreferenceController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
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

.method public onStart()V
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/connecteddevice/AddDevicePreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object p0, p0, Lcom/android/settings/connecteddevice/AddDevicePreferenceController;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/connecteddevice/AddDevicePreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method

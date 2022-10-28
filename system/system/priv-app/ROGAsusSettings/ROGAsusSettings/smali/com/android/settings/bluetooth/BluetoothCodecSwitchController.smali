.class public Lcom/android/settings/bluetooth/BluetoothCodecSwitchController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "BluetoothCodecSwitchController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnCreate;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnDestroy;


# static fields
.field private static mCurrentCodec:Ljava/lang/String;

.field private static state:Ljava/lang/String;


# instance fields
.field private final TAG:Ljava/lang/String;

.field final intentFilter:Landroid/content/IntentFilter;

.field protected mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mPause:Z

.field private mPreference:Landroidx/preference/SwitchPreference;

.field final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string p1, "BluetoothCodecSwitchController"

    .line 48
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothCodecSwitchController;->TAG:Ljava/lang/String;

    .line 53
    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    iput-object p2, p0, Lcom/android/settings/bluetooth/BluetoothCodecSwitchController;->intentFilter:Landroid/content/IntentFilter;

    .line 139
    new-instance p2, Lcom/android/settings/bluetooth/BluetoothCodecSwitchController$1;

    invoke-direct {p2, p0}, Lcom/android/settings/bluetooth/BluetoothCodecSwitchController$1;-><init>(Lcom/android/settings/bluetooth/BluetoothCodecSwitchController;)V

    iput-object p2, p0, Lcom/android/settings/bluetooth/BluetoothCodecSwitchController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 61
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/bluetooth/BluetoothCodecSwitchController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez p2, :cond_0

    const-string p0, "Bluetooth is not supported on this device"

    .line 63
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/bluetooth/BluetoothCodecSwitchController;)Landroidx/preference/SwitchPreference;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothCodecSwitchController;->mPreference:Landroidx/preference/SwitchPreference;

    return-object p0
.end method

.method private isBluetoothOn()Z
    .locals 0

    .line 118
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothCodecSwitchController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

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

.method private isDeviceConnected()Z
    .locals 2

    .line 122
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothCodecSwitchController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result p0

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isServiceStart()Z
    .locals 4

    .line 126
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "activity"

    .line 127
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    const v0, 0x7fffffff

    .line 129
    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    const/4 v0, 0x0

    move v1, v0

    .line 130
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 131
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 132
    const-class v3, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothCodecSwitchController;->mPreference:Landroidx/preference/SwitchPreference;

    .line 70
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    .line 96
    invoke-static {}, Lcom/android/settings/Utils;->isHouston()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

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

.method public isChecked()Z
    .locals 2

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isServiceStart:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothCodecSwitchController;->isServiceStart()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "/isDeviceConnected:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothCodecSwitchController;->isDeviceConnected()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothCodecSwitchController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothCodecSwitchController;->isDeviceConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothCodecSwitchController;->isServiceStart()Z

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

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 75
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothCodecSwitchController;->intentFilter:Landroid/content/IntentFilter;

    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 76
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothCodecSwitchController;->intentFilter:Landroid/content/IntentFilter;

    const-string v0, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 77
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothCodecSwitchController;->intentFilter:Landroid/content/IntentFilter;

    const-string v0, "ACTION_SERVICE_START"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 78
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothCodecSwitchController;->intentFilter:Landroid/content/IntentFilter;

    const-string v0, "ACTION_SERVICE_CODEC_CHANGE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 79
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothCodecSwitchController;->intentFilter:Landroid/content/IntentFilter;

    const-string v0, "ACTION_SERVICE_END"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 81
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothCodecSwitchController;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothCodecSwitchController;->intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothCodecSwitchController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothCodecSwitchController;->mPreference:Landroidx/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothCodecSwitchController;->isBluetoothOn()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothCodecSwitchController;->isDeviceConnected()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method public setChecked(Z)Z
    .locals 3

    .line 107
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 108
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothCodecSwitchController;->mPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v1, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    if-eqz p1, :cond_0

    .line 109
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothCodecSwitchController;->isServiceStart()Z

    move-result v1

    if-nez v1, :cond_0

    .line 110
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 111
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothCodecSwitchController;->isServiceStart()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 112
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method

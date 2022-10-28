.class public final Lcom/android/settings/bluetooth/DevicePickerFragment;
.super Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;
.source "DevicePickerFragment.java"


# instance fields
.field mAvailableDevicesCategory:Lcom/android/settings/bluetooth/BluetoothProgressCategory;

.field mCallingAppPackageName:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field mLaunchClass:Ljava/lang/String;

.field mLaunchPackage:Ljava/lang/String;

.field private mNeedAuth:Z

.field private mScanAllowed:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private sendDevicePickedIntent(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2

    const-string v0, "Devicepicker"

    const-string v1, "sendDevicePickedIntent"

    .line 215
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.devicepicker.action.DEVICE_SELECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.device.extra.DEVICE"

    .line 217
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 218
    iget-object p1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mLaunchPackage:Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mLaunchClass:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 219
    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mCallingAppPackageName:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 220
    iget-object p1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mLaunchPackage:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mLaunchClass:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const/high16 p1, 0x10000000

    .line 224
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 225
    iget-object p0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mContext:Landroid/content/Context;

    const-string p1, "android.permission.BLUETOOTH_CONNECT"

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDeviceListKey()Ljava/lang/String;
    .locals 0

    const-string p0, "bt_device_list"

    return-object p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "DevicePickerFragment"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x19

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 201
    sget p0, Lcom/android/settings/R$xml;->device_picker:I

    return p0
.end method

.method protected initDevicePreference(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V
    .locals 0

    .line 181
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->initDevicePreference(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V

    const/4 p0, 0x1

    .line 182
    invoke-virtual {p1, p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->setNeedNotifyHierarchyChanged(Z)V

    return-void
.end method

.method initPreferencesFromPreferenceScreen()V
    .locals 3

    .line 73
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.bluetooth.devicepicker.extra.NEED_AUTH"

    const/4 v2, 0x0

    .line 74
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mNeedAuth:Z

    const-string v1, "android.bluetooth.devicepicker.extra.FILTER_TYPE"

    .line 75
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->setFilter(I)V

    const-string v1, "android.bluetooth.devicepicker.extra.LAUNCH_PACKAGE"

    .line 77
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mLaunchPackage:Ljava/lang/String;

    const-string v1, "android.bluetooth.devicepicker.extra.DEVICE_PICKER_LAUNCH_CLASS"

    .line 78
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mLaunchClass:Ljava/lang/String;

    const-string v0, "bt_device_list"

    .line 79
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/BluetoothProgressCategory;

    iput-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mAvailableDevicesCategory:Lcom/android/settings/bluetooth/BluetoothProgressCategory;

    return-void
.end method

.method public onBluetoothStateChanged(I)V
    .locals 1

    .line 187
    invoke-super {p0, p1}, Lcom/android/settingslib/bluetooth/BluetoothCallback;->onBluetoothStateChanged(I)V

    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    .line 190
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->enableScanning()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 94
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 95
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->device_picker:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    const-string p1, "user"

    .line 96
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    const-string v0, "no_config_bluetooth"

    .line 97
    invoke-virtual {p1, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mScanAllowed:Z

    .line 99
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object p1

    .line 98
    invoke-static {p1}, Lcom/android/settings/password/PasswordUtils;->getCallingAppPackageName(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mCallingAppPackageName:Ljava/lang/String;

    .line 100
    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mLaunchPackage:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "DevicePickerFragment"

    const-string v1, "sendDevicePickedIntent() launch package name is not equivalent to calling package name!"

    .line 101
    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mContext:Landroid/content/Context;

    .line 105
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    const-string p1, "bt_device_list"

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    check-cast p0, Landroidx/preference/PreferenceGroup;

    if-eqz p0, :cond_1

    const/4 p1, 0x0

    .line 108
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 109
    sget p1, Lcom/android/settings/R$string;->bluetooth_preference_found_media_devices:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setTitle(I)V

    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    .line 84
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 135
    invoke-super {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onDestroy()V

    .line 139
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 140
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->sendDevicePickedIntent(Landroid/bluetooth/BluetoothDevice;)V

    :cond_0
    return-void
.end method

.method public onDeviceBondStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 1

    .line 167
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    .line 168
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0xc

    if-ne p2, v0, :cond_1

    .line 172
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/DevicePickerFragment;->sendDevicePickedIntent(Landroid/bluetooth/BluetoothDevice;)V

    .line 173
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    goto :goto_0

    :cond_1
    const/16 p1, 0xa

    if-ne p2, p1, :cond_2

    .line 175
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->enableScanning()V

    :cond_2
    :goto_0
    return-void
.end method

.method onDevicePreferenceClick(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V
    .locals 2

    .line 146
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->disableScanning()V

    .line 148
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 147
    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/LocalBluetoothPreferences;->persistSelectedDeviceInPicker(Landroid/content/Context;Ljava/lang/String;)V

    .line 149
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mNeedAuth:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 154
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onDevicePreferenceClick(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V

    goto :goto_1

    .line 151
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/DevicePickerFragment;->sendDevicePickedIntent(Landroid/bluetooth/BluetoothDevice;)V

    .line 152
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :goto_1
    return-void
.end method

.method public onScanningStateChanged(Z)V
    .locals 0

    .line 160
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onScanningStateChanged(Z)V

    .line 162
    iget-object p0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mAvailableDevicesCategory:Lcom/android/settings/bluetooth/BluetoothProgressCategory;

    invoke-virtual {p0, p1}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 115
    invoke-super {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onStart()V

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->removeAllDevices()V

    .line 117
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->clearNonBondedDevices()V

    .line 118
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->addCachedDevices()V

    const/4 v0, 0x0

    .line 119
    iput-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    .line 120
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mScanAllowed:Z

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->enableScanning()V

    .line 122
    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mAvailableDevicesCategory:Lcom/android/settings/bluetooth/BluetoothProgressCategory;

    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 0

    .line 129
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->disableScanning()V

    .line 130
    invoke-super {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onStop()V

    return-void
.end method

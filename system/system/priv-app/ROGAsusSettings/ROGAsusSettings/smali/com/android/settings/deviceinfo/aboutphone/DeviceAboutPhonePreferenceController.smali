.class public Lcom/android/settings/deviceinfo/aboutphone/DeviceAboutPhonePreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "DeviceAboutPhonePreferenceController.java"


# static fields
.field public static final KEY_CSC_VERSION:Ljava/lang/String; = "ro.vendor.build.csc.version"

.field public static final KEY_RENAME_DEVICE_CACHE:Ljava/lang/String; = "rename_device_cache"

.field public static final PREF_ABOUT_PHOME:Ljava/lang/String; = "about_phone"

.field public static final PROPERTY_CPU_FREQUENCY:Ljava/lang/String; = "ro.vendor.cpufreq"

.field public static final PROPERTY_MEMORY_SIZE:Ljava/lang/String; = "ro.vendor.memsize"

.field public static final TAG:Ljava/lang/String; = "DeviceAboutPhonePreferenceController"


# instance fields
.field private deviceInfo:Lcom/android/settings/widget/SettingsDeviceInfoCard;

.field private displayManager:Landroid/hardware/display/DisplayManager;

.field private final mBackgroundExecutor:Ljava/util/concurrent/Executor;

.field private final mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mDeviceName:Ljava/lang/String;

.field private mDeviceNameCache:Ljava/lang/String;

.field private mHost:Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment;

.field private final mMainExecutor:Ljava/util/concurrent/Executor;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public static synthetic $r8$lambda$0jj4hYfHBKAcE6SBkg1DceYX_9I(Lcom/android/settings/deviceinfo/aboutphone/DeviceAboutPhonePreferenceController;Landroid/widget/TextView;Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/deviceinfo/aboutphone/DeviceAboutPhonePreferenceController;->lambda$updateDeviceInformation$0(Landroid/widget/TextView;Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3vMBm7N_ALuN9BNpX3d4_IM53Ms(Lcom/android/settings/widget/SettingsDeviceInfoCard;[Ljava/lang/Integer;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/deviceinfo/aboutphone/DeviceAboutPhonePreferenceController;->lambda$updateDeviceInformation$3(Lcom/android/settings/widget/SettingsDeviceInfoCard;[Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$F1GK6MSdHW9EqxScA_D9rWGJkHc(Lcom/android/settings/deviceinfo/aboutphone/DeviceAboutPhonePreferenceController;Lcom/android/settings/widget/SettingsDeviceInfoCard;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/aboutphone/DeviceAboutPhonePreferenceController;->lambda$updateDeviceInformation$4(Lcom/android/settings/widget/SettingsDeviceInfoCard;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lgEzgEWRPyrIJCzLIyjoGQLG7eQ(Lcom/android/settings/deviceinfo/aboutphone/DeviceAboutPhonePreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/aboutphone/DeviceAboutPhonePreferenceController;->lambda$updateDeviceInformation$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$t9lJs_vADOOwArt48-7l-n-DCzQ(Lcom/android/settings/deviceinfo/aboutphone/DeviceAboutPhonePreferenceController;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/aboutphone/DeviceAboutPhonePreferenceController;->lambda$updateDeviceInformation$1(Landroid/widget/TextView;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 95
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 97
    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/storage/StorageManager;

    iput-object p2, p0, Lcom/android/settings/deviceinfo/aboutphone/DeviceAboutPhonePreferenceController;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 98
    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string v0, "display"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/display/DisplayManager;

    iput-object p2, p0, Lcom/android/settings/deviceinfo/aboutphone/DeviceAboutPhonePreferenceController;->displayManager:Landroid/hardware/display/DisplayManager;

    .line 100
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/deviceinfo/aboutphone/DeviceAboutPhonePreferenceController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const-string/jumbo p2, "wifi"

    .line 101
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/wifi/WifiManager;

    iput-object p2, p0, Lcom/android/settings/deviceinfo/aboutphone/DeviceAboutPhonePreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 103
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/deviceinfo/aboutphone/DeviceAboutPhonePreferenceController;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    .line 104
    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/aboutphone/DeviceAboutPhonePreferenceController;->mMainExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private static final getFilteredBluetoothString(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 309
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothLengthDeviceNameFilter;

    invoke-direct {v0}, Lcom/android/settings/bluetooth/BluetoothLengthDeviceNameFilter;-><init>()V

    .line 310
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Landroid/text/SpannedString;

    const-string v1, ""

    invoke-direct {v4, v1}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    .line 309
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/bluetooth/Utf8ByteLengthFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p0

    .line 317
    :cond_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$updateDeviceInformation$0(Landroid/widget/TextView;Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;)V
    .locals 2

    .line 193
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-wide v0, p2, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;->totalBytes:J

    invoke-static {p0, v0, v1}, Lcom/android/settings/deviceinfo/storage/StorageUtils;->getStorageSizeLabel(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$updateDeviceInformation$1(Landroid/widget/TextView;)V
    .locals 3

    .line 189
    new-instance v0, Lcom/android/settingslib/deviceinfo/StorageManagerVolumeProvider;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/aboutphone/DeviceAboutPhonePreferenceController;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-direct {v0, v1}, Lcom/android/settingslib/deviceinfo/StorageManagerVolumeProvider;-><init>(Landroid/os/storage/StorageManager;)V

    .line 190
    invoke-static {v0}, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;->getPrivateStorageInfo(Lcom/android/settingslib/deviceinfo/StorageVolumeProvider;)Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;

    move-result-object v0

    .line 192
    iget-object v1, p0, Lcom/android/settings/deviceinfo/aboutphone/DeviceAboutPhonePreferenceController;->mMainExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/settings/deviceinfo/aboutphone/DeviceAboutPhonePreferenceController$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/settings/deviceinfo/aboutphone/DeviceAboutPhonePreferenceController$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/deviceinfo/aboutphone/DeviceAboutPhonePreferenceController;Landroid/widget/TextView;Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$updateDeviceInformation$2()V
    .locals 0

    .line 210
    iget-object p0, p0, Lcom/android/settings/deviceinfo/aboutphone/DeviceAboutPhonePreferenceController;->mHost:Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment;

    invoke-static {p0}, Lcom/android/settings/deviceinfo/aboutphone/RenameDeviceDialog;->show(Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment;)V

    return-void
.end method

.method private static synthetic lambda$updateDeviceInformation$3(Lcom/android/settings/widget/SettingsDeviceInfoCard;[Ljava/lang/Integer;)V
    .locals 2

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Hz AMOLED"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SettingsDeviceInfoCard;->setItemValue(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$updateDeviceInformation$4(Lcom/android/settings/widget/SettingsDeviceInfoCard;)V
    .locals 5

    .line 245
    iget-object v0, p0, Lcom/android/settings/deviceinfo/aboutphone/DeviceAboutPhonePreferenceController;->displayManager:Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 246
    invoke-virtual {v0}, Landroid/view/Display;->getSupportedModes()[Landroid/view/Display$Mode;

    move-result-object v0

    .line 247
    array-length v2, v0

    new-array v2, v2, [Ljava/lang/Integer;

    .line 248
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 249
    aget-object v3, v0, v1

    invoke-virtual {v3}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v3

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "DeviceAboutPhonePreferenceController"

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    aget-object v3, v0, v1

    invoke-virtual {v3}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v3

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 252
    :cond_0
    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v2, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 254
    iget-object p0, p0, Lcom/android/settings/deviceinfo/aboutphone/DeviceAboutPhonePreferenceController;->mMainExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/android/settings/deviceinfo/aboutphone/DeviceAboutPhonePreferenceController$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1, v2}, Lcom/android/settings/deviceinfo/aboutphone/DeviceAboutPhonePreferenceController$$ExternalSyntheticLambda4;-><init>(Lcom/android/settings/widget/SettingsDeviceInfoCard;[Ljava/lang/Integer;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setBluetoothDeviceName(Ljava/lang/String;)V
    .locals 0

    .line 299
    iget-object p0, p0, Lcom/android/settings/deviceinfo/aboutphone/DeviceAboutPhonePreferenceController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz p0, :cond_0

    .line 300
    invoke-static {p1}, Lcom/android/settings/deviceinfo/aboutphone/DeviceAboutPhonePreferenceController;->getFilteredBluetoothString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothAdapter;->setName(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method private setDeviceName(Ljava/lang/String;)V
    .locals 0

    .line 284
    iput-object p1, p0, Lcom/android/settings/deviceinfo/aboutphone/DeviceAboutPhonePreferenceController;->mDeviceName:Ljava/lang/String;

    .line 285
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/aboutphone/DeviceAboutPhonePreferenceController;->setSettingsGlobalDeviceName(Ljava/lang/String;)V

    .line 286
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/aboutphone/DeviceAboutPhonePreferenceController;->setBluetoothDeviceName(Ljava/lang/String;)V

    .line 287
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/aboutphone/DeviceAboutPhonePreferenceController;->setTetherSsidName(Ljava/lang/String;)V

    .line 288
    iget-object p1, p0, Lcom/android/settings/deviceinfo/aboutphone/DeviceAboutPhonePreferenceController;->deviceInfo:Lcom/android/settings/widget/SettingsDeviceInfoCard;

    if-eqz p1, :cond_0

    .line 289
    iget-object p0, p0, Lcom/android/settings/deviceinfo/aboutphone/DeviceAboutPhonePreferenceController;->mDeviceName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/android/settings/widget/SettingsDeviceInfoCard;->setItemValue(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private setSettingsGlobalDeviceName(Ljava/lang/String;)V
    .locals 1

    .line 294
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "device_name"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private setTetherSsidName(Ljava/lang/String;)V
    .locals 2

    .line 321
    iget-object v0, p0, Lcom/android/settings/deviceinfo/aboutphone/DeviceAboutPhonePreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v0

    .line 323
    iget-object p0, p0, Lcom/android/settings/deviceinfo/aboutphone/DeviceAboutPhonePreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance v1, Landroid/net/wifi/SoftApConfiguration$Builder;

    invoke-direct {v1, v0}, Landroid/net/wifi/SoftApConfiguration$Builder;-><init>(Landroid/net/wifi/SoftApConfiguration;)V

    .line 324
    invoke-virtual {v1, p1}, Landroid/net/wifi/SoftApConfiguration$Builder;->setSsid(Ljava/lang/String;)Landroid/net/wifi/SoftApConfiguration$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration$Builder;->build()Landroid/net/wifi/SoftApConfiguration;

    move-result-object p1

    .line 323
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->setSoftApConfiguration(Landroid/net/wifi/SoftApConfiguration;)Z

    return-void
.end method

.method private updateDeviceInformation(Lcom/android/settingslib/widget/LayoutPreference;)V
    .locals 12

    .line 133
    sget v0, Lcom/android/settings/R$id;->phone_photo_id:I

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x0

    const-string v2, ""

    const/4 v3, 0x1

    if-eqz v0, :cond_9

    const-string v4, "phone_photo.png"

    const-string v5, "ro.vendor.asus.beta"

    .line 136
    invoke-static {v5, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-eq v5, v3, :cond_9

    const-string v5, "ro.build.product"

    .line 137
    invoke-static {v5, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "AI2201"

    .line 138
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x2

    const-string v8, "cn_"

    const-string/jumbo v9, "ww_"

    const/4 v10, -0x1

    const-string v11, "ro.boot.id.prj"

    if-eqz v6, :cond_4

    .line 139
    invoke-static {v11, v10}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    const-string v6, "ro.vendor.config.idcode"

    .line 140
    invoke-static {v6, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 141
    invoke-static {}, Lcom/android/settings/Utils;->isCNSKU()Z

    move-result v10

    if-eqz v10, :cond_0

    goto :goto_0

    :cond_0
    move-object v8, v9

    :goto_0
    if-nez v5, :cond_2

    const-string v4, "1D"

    .line 143
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 144
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "entry_w.c"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_2

    .line 146
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "entry_b.c"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_2
    if-eq v5, v3, :cond_3

    if-ne v5, v7, :cond_8

    .line 149
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "2d.c"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_4
    const-string v6, "AI2203"

    .line 152
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 153
    invoke-static {}, Lcom/android/settings/Utils;->isBatman()Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v4, "batm_entry.c"

    goto :goto_2

    .line 156
    :cond_5
    invoke-static {v11, v10}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 158
    invoke-static {}, Lcom/android/settings/Utils;->isCNSKU()Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_1

    :cond_6
    move-object v8, v9

    :goto_1
    if-ne v5, v7, :cond_7

    .line 161
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "a3_ulti.c"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_7
    if-nez v5, :cond_8

    .line 164
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "a3_entry.c"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 168
    :cond_8
    :goto_2
    iget-object v5, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v5, v4}, Lcom/android/settings/utils/CopyUtils;->getByteArrayCommon(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v4

    .line 169
    invoke-static {v4, v0}, Lcom/android/settings/utils/CopyUtils;->setByteToImage([BLandroid/widget/ImageView;)V

    .line 174
    :cond_9
    sget v0, Lcom/android/settings/R$id;->cpu_name:I

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_a

    const-string v4, "ro.vendor.cpufreq"

    .line 176
    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    :cond_a
    sget v0, Lcom/android/settings/R$id;->memory_name:I

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_b

    const-string v4, "ro.vendor.memsize"

    .line 182
    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    :cond_b
    sget v0, Lcom/android/settings/R$id;->storage_name:I

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_c

    .line 188
    iget-object v4, p0, Lcom/android/settings/deviceinfo/aboutphone/DeviceAboutPhonePreferenceController;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v5, Lcom/android/settings/deviceinfo/aboutphone/DeviceAboutPhonePreferenceController$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0, v0}, Lcom/android/settings/deviceinfo/aboutphone/DeviceAboutPhonePreferenceController$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/deviceinfo/aboutphone/DeviceAboutPhonePreferenceController;Landroid/widget/TextView;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 200
    :cond_c
    sget v0, Lcom/android/settings/R$id;->item_device_name:I

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/SettingsDeviceInfoCard;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/aboutphone/DeviceAboutPhonePreferenceController;->deviceInfo:Lcom/android/settings/widget/SettingsDeviceInfoCard;

    if-eqz v0, :cond_e

    .line 202
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "device_name"

    invoke-static {v0, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/aboutphone/DeviceAboutPhonePreferenceController;->mDeviceName:Ljava/lang/String;

    if-nez v0, :cond_d

    .line 205
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/aboutphone/DeviceAboutPhonePreferenceController;->mDeviceName:Ljava/lang/String;

    .line 207
    :cond_d
    iget-object v0, p0, Lcom/android/settings/deviceinfo/aboutphone/DeviceAboutPhonePreferenceController;->deviceInfo:Lcom/android/settings/widget/SettingsDeviceInfoCard;

    iget-object v4, p0, Lcom/android/settings/deviceinfo/aboutphone/DeviceAboutPhonePreferenceController;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/android/settings/widget/SettingsDeviceInfoCard;->setItemValue(Ljava/lang/CharSequence;)V

    .line 209
    new-instance v0, Lcom/android/settings/deviceinfo/aboutphone/DeviceAboutPhonePreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/aboutphone/DeviceAboutPhonePreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/deviceinfo/aboutphone/DeviceAboutPhonePreferenceController;)V

    .line 212
    iget-object v4, p0, Lcom/android/settings/deviceinfo/aboutphone/DeviceAboutPhonePreferenceController;->deviceInfo:Lcom/android/settings/widget/SettingsDeviceInfoCard;

    invoke-virtual {v4, v0}, Lcom/android/settings/widget/SettingsDeviceInfoCard;->setPressListener(Lcom/android/settings/widget/SettingsDeviceInfoCard$OnPressListener;)V

    .line 216
    :cond_e
    sget v0, Lcom/android/settings/R$id;->item_android_number:I

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/SettingsDeviceInfoCard;

    if-eqz v0, :cond_f

    .line 218
    sget-object v4, Landroid/os/Build$VERSION;->RELEASE_OR_CODENAME:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/android/settings/widget/SettingsDeviceInfoCard;->setItemValue(Ljava/lang/CharSequence;)V

    .line 222
    :cond_f
    sget v0, Lcom/android/settings/R$id;->item_build_number:I

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/SettingsDeviceInfoCard;

    if-eqz v0, :cond_13

    const-string v4, "ro.vendor.build.csc.version"

    .line 225
    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "_|-"

    .line 226
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 227
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 228
    :goto_3
    array-length v2, v4

    if-ge v1, v2, :cond_12

    if-ne v1, v3, :cond_10

    goto :goto_4

    .line 231
    :cond_10
    array-length v2, v4

    sub-int/2addr v2, v3

    if-eq v1, v2, :cond_11

    .line 232
    aget-object v2, v4, v1

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 234
    :cond_11
    aget-object v2, v4, v1

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 237
    :cond_12
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SettingsDeviceInfoCard;->setItemValue(Ljava/lang/CharSequence;)V

    .line 241
    :cond_13
    sget v0, Lcom/android/settings/R$id;->item_screen_info:I

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/SettingsDeviceInfoCard;

    if-eqz v0, :cond_14

    .line 244
    iget-object v1, p0, Lcom/android/settings/deviceinfo/aboutphone/DeviceAboutPhonePreferenceController;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/settings/deviceinfo/aboutphone/DeviceAboutPhonePreferenceController$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/deviceinfo/aboutphone/DeviceAboutPhonePreferenceController$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/deviceinfo/aboutphone/DeviceAboutPhonePreferenceController;Lcom/android/settings/widget/SettingsDeviceInfoCard;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 261
    :cond_14
    sget v0, Lcom/android/settings/R$id;->item_battery_info:I

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/SettingsDeviceInfoCard;

    if-eqz p1, :cond_15

    .line 263
    new-instance v0, Lcom/android/internal/os/PowerProfile;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/internal/os/PowerProfile;->getBatteryCapacity()D

    move-result-wide v0

    .line 264
    new-instance p0, Ljava/lang/StringBuilder;

    double-to-int v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " mAh"

    .line 265
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/widget/SettingsDeviceInfoCard;->setItemValue(Ljava/lang/CharSequence;)V

    :cond_15
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

    .line 120
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 122
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/LayoutPreference;

    .line 123
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/aboutphone/DeviceAboutPhonePreferenceController;->updateDeviceInformation(Lcom/android/settingslib/widget/LayoutPreference;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 113
    invoke-static {}, Lcom/android/settingslib/Utils;->getFirstAPIVersion()I

    move-result p0

    const/16 v0, 0x1f

    if-lt p0, v0, :cond_0

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

.method public getDeviceNameInCache()Ljava/lang/String;
    .locals 2

    .line 272
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string v0, "about_phone"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "rename_device_cache"

    const-string v1, ""

    .line 273
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

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

.method public setFragment(Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/android/settings/deviceinfo/aboutphone/DeviceAboutPhonePreferenceController;->mHost:Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment;

    return-void
.end method

.method public updateDeviceName(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 278
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/aboutphone/DeviceAboutPhonePreferenceController;->getDeviceNameInCache()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/aboutphone/DeviceAboutPhonePreferenceController;->mDeviceNameCache:Ljava/lang/String;

    .line 279
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/aboutphone/DeviceAboutPhonePreferenceController;->setDeviceName(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method

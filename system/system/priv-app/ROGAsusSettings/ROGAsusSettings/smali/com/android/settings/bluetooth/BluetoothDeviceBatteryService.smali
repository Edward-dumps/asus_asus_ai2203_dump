.class public Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;
.super Landroid/app/Service;
.source "BluetoothDeviceBatteryService.java"


# instance fields
.field private mBtScanner:Landroid/bluetooth/le/BluetoothLeScanner;

.field private mDevicePrimary:Landroid/bluetooth/BluetoothDevice;

.field private mDeviceSecondary:Landroid/bluetooth/BluetoothDevice;

.field private mLeftStatus:I

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mRecentBeacons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/bluetooth/le/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private mRightStatus:I

.field private mScanCallback:Landroid/bluetooth/le/ScanCallback;

.field private mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;->mRecentBeacons:Ljava/util/ArrayList;

    .line 353
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService$1;-><init>(Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;->mScanCallback:Landroid/bluetooth/le/ScanCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;)Ljava/util/ArrayList;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;->mRecentBeacons:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;[B)Ljava/lang/String;
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;->decodeHex([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;Ljava/lang/String;)Z
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;->isFlipped(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;)I
    .locals 0

    .line 45
    iget p0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;->mLeftStatus:I

    return p0
.end method

.method static synthetic access$302(Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;I)I
    .locals 0

    .line 45
    iput p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;->mLeftStatus:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;)I
    .locals 0

    .line 45
    iget p0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;->mRightStatus:I

    return p0
.end method

.method static synthetic access$402(Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;I)I
    .locals 0

    .line 45
    iput p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;->mRightStatus:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;->mDevicePrimary:Landroid/bluetooth/BluetoothDevice;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;->showNotification(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method private cancelNotification()V
    .locals 2

    const-string v0, "BtDeviceBatteryService"

    const-string v1, "cancelNotification"

    .line 275
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz p0, :cond_0

    .line 277
    sget v0, Lcom/android/settings/R$string;->app_name_label:I

    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_0
    return-void
.end method

.method private createNotificationChannel()V
    .locals 4

    .line 168
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    const-string v0, "notification"

    .line 169
    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 171
    :cond_0
    new-instance v0, Landroid/app/NotificationChannel;

    .line 173
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->settings_label:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const-string v3, "bluetooth_battery_notification_channel"

    invoke-direct {v0, v3, v1, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 175
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-void
.end method

.method private decodeHex([B)Ljava/lang/String;
    .locals 5

    .line 431
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 433
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    aget-byte v3, p1, v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 434
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v4, v1

    const-string v3, "%02X"

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 436
    :cond_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getIntent(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;I)Landroid/app/PendingIntent;
    .locals 2

    .line 282
    new-instance p0, Landroid/content/Intent;

    const-class v0, Lcom/android/settings/Settings$BluetoothDeviceDetailActivity;

    invoke-direct {p0, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v0, 0x10008000

    .line 283
    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 284
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 285
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p2

    const-string v1, "device_address"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, ":settings:show_fragment_args"

    .line 286
    invoke-virtual {p0, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const/high16 p2, 0x14000000

    .line 288
    invoke-static {p1, p3, p0, p2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method private getScanFilters()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;"
        }
    .end annotation

    const/16 p0, 0x1b

    new-array v0, p0, [B

    new-array p0, p0, [B

    const/4 v1, 0x7

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    const/16 v1, 0x19

    const/4 v3, 0x1

    aput-byte v1, v0, v3

    const/4 v1, -0x1

    aput-byte v1, p0, v2

    aput-byte v1, p0, v3

    .line 347
    new-instance v1, Landroid/bluetooth/le/ScanFilter$Builder;

    invoke-direct {v1}, Landroid/bluetooth/le/ScanFilter$Builder;-><init>()V

    const/16 v2, 0x4c

    .line 348
    invoke-virtual {v1, v2, v0, p0}, Landroid/bluetooth/le/ScanFilter$Builder;->setManufacturerData(I[B[B)Landroid/bluetooth/le/ScanFilter$Builder;

    .line 350
    invoke-virtual {v1}, Landroid/bluetooth/le/ScanFilter$Builder;->build()Landroid/bluetooth/le/ScanFilter;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private getTwsPeerDevice(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    .line 296
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p0

    .line 297
    invoke-static {p1}, Lcom/android/settingslib/SettingsLibHwSupport;->getTwsPlusPeerAddressValue(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object p1

    .line 298
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    return-object p0
.end method

.method private isAirPods(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 8

    const/4 p0, 0x2

    new-array v0, p0, [Landroid/os/ParcelUuid;

    const-string v1, "74ec2172-0bad-4d01-8f77-997b2be0722a"

    .line 304
    invoke-static {v1}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "2a72e02b-7b99-778f-014d-ad0b7221ec74"

    .line 305
    invoke-static {v1}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 307
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object p1

    if-nez p1, :cond_0

    return v2

    .line 312
    :cond_0
    array-length v1, p1

    move v4, v2

    :goto_0
    if-ge v4, v1, :cond_3

    aget-object v5, p1, v4

    move v6, v2

    :goto_1
    if-ge v6, p0, :cond_2

    .line 313
    aget-object v7, v0, v6

    .line 314
    invoke-virtual {v5, v7}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    return v3

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return v2
.end method

.method private isFlipped(Ljava/lang/String;)Z
    .locals 1

    .line 440
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x10

    invoke-static {p0, p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    and-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static setNotificationService(Landroid/content/Context;ZLandroid/bluetooth/BluetoothDevice;Z)V
    .locals 2

    .line 97
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "enable_service"

    .line 98
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "primary_device"

    .line 99
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "battery_change"

    .line 100
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 101
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private showNotification(Landroid/bluetooth/BluetoothDevice;)V
    .locals 12

    .line 181
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;->isAirPods(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    const/4 v1, -0x1

    const-string v2, "BtDeviceBatteryService"

    if-nez v0, :cond_0

    .line 182
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBatteryLevel()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showNotification primary device "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " battery = -1"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;->cancelNotification()V

    return-void

    :cond_0
    move v0, v1

    .line 190
    :cond_1
    invoke-static {p1}, Lcom/android/settingslib/SettingsLibHwSupport;->isTwsPlusDeviceValue(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 191
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;->getTwsPeerDevice(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getBatteryLevel()I

    move-result v1

    .line 194
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showNotification primary device = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " battery = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;->createNotificationChannel()V

    .line 198
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;->mDevicePrimary:Landroid/bluetooth/BluetoothDevice;

    const/4 v5, 0x0

    invoke-direct {p0, p0, v3, v5}, Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;->getIntent(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 200
    new-instance v6, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/app/Service;->getPackageName()Ljava/lang/String;

    move-result-object v7

    sget v8, Lcom/android/settings/R$layout;->notification_bluetooth_battery:I

    invoke-direct {v6, v7, v8}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 202
    sget v7, Lcom/android/settings/R$id;->left_battery_title:I

    .line 203
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/android/settings/R$string;->primary_device_battery_title:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 202
    invoke-virtual {v6, v7, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 204
    sget v8, Lcom/android/settings/R$id;->right_battery_title:I

    .line 205
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/android/settings/R$string;->secondary_device_battery_title:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 204
    invoke-virtual {v6, v8, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 207
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;->isAirPods(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v9

    const/4 v10, 0x1

    const/16 v11, 0x8

    if-eqz v9, :cond_5

    .line 208
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "AirPods showNotification  left battery = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;->mLeftStatus:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " right battery = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;->mRightStatus:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;->mLeftStatus:I

    const/16 v0, 0xf

    if-eq p1, v0, :cond_3

    .line 212
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/android/settings/R$string;->left_device_battery_title:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 211
    invoke-virtual {v6, v7, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 213
    sget p1, Lcom/android/settings/R$id;->left_battery_value:I

    iget v1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;->mLeftStatus:I

    .line 214
    invoke-static {v1}, Lcom/android/settingslib/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v1

    .line 213
    invoke-virtual {v6, p1, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 215
    sget p1, Lcom/android/settings/R$id;->left_panel:I

    invoke-virtual {v6, p1, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_0

    .line 217
    :cond_3
    sget p1, Lcom/android/settings/R$id;->left_panel:I

    invoke-virtual {v6, p1, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 220
    :goto_0
    iget p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;->mRightStatus:I

    if-eq p1, v0, :cond_4

    .line 222
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->right_device_battery_title:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 221
    invoke-virtual {v6, v8, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 223
    sget p1, Lcom/android/settings/R$id;->right_battery_value:I

    iget v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;->mRightStatus:I

    .line 224
    invoke-static {v0}, Lcom/android/settingslib/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v0

    .line 223
    invoke-virtual {v6, p1, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 225
    sget p1, Lcom/android/settings/R$id;->right_panel:I

    invoke-virtual {v6, p1, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_1

    .line 227
    :cond_4
    sget p1, Lcom/android/settings/R$id;->right_panel:I

    invoke-virtual {v6, p1, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_1

    .line 230
    :cond_5
    invoke-static {p1}, Lcom/android/settingslib/SettingsLibHwSupport;->isTwsPlusDeviceValue(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 231
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "showNotification secondary name = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;->getTwsPeerDevice(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v8

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    sget v2, Lcom/android/settings/R$id;->left_battery_value:I

    .line 234
    invoke-static {v0}, Lcom/android/settingslib/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v0

    .line 233
    invoke-virtual {v6, v2, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 235
    sget v0, Lcom/android/settings/R$id;->left_panel:I

    invoke-virtual {v6, v0, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    if-ltz v1, :cond_6

    .line 238
    sget v0, Lcom/android/settings/R$id;->right_battery_value:I

    .line 239
    invoke-static {v1}, Lcom/android/settingslib/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v1

    .line 238
    invoke-virtual {v6, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 241
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;->getTwsPeerDevice(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-direct {p0, p0, p1, v10}, Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;->getIntent(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 242
    sget v0, Lcom/android/settings/R$id;->right_panel:I

    invoke-virtual {v6, v0, p1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_1

    .line 244
    :cond_6
    sget p1, Lcom/android/settings/R$id;->right_panel:I

    invoke-virtual {v6, p1, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 254
    :cond_7
    :goto_1
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/android/settings/bluetooth/BatteryNotificationCancelReceiver;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "action_dismiss_noification"

    .line 255
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x2

    const/high16 v1, 0x14000000

    .line 256
    invoke-static {p0, v0, p1, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 260
    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    const-string v1, "bluetooth_battery_notification_channel"

    invoke-direct {v0, p0, v1}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 261
    sget v1, Lcom/android/settings/R$drawable;->earphone:I

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    new-instance v2, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;

    invoke-direct {v2}, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;-><init>()V

    .line 262
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 263
    invoke-virtual {v1, v6}, Landroidx/core/app/NotificationCompat$Builder;->setCustomContentView(Landroid/widget/RemoteViews;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 264
    invoke-virtual {v1, v5}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    const-wide/16 v2, 0x0

    .line 265
    invoke-virtual {v1, v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setWhen(J)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    const-string v2, "status"

    .line 266
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 267
    invoke-virtual {v1, p1}, Landroidx/core/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 269
    invoke-virtual {v0, v10}, Landroidx/core/app/NotificationCompat$Builder;->setVisibility(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 270
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;->mNotificationManager:Landroid/app/NotificationManager;

    sget p1, Lcom/android/settings/R$string;->app_name_label:I

    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method private startAirPodsScanner()V
    .locals 4

    const-string v0, "BtDeviceBatteryService"

    const-string v1, "Airpods start scanner"

    .line 324
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "bluetooth"

    .line 325
    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    .line 326
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;->mBtScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    .line 327
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;->getScanFilters()Ljava/util/List;

    move-result-object v0

    .line 328
    new-instance v1, Landroid/bluetooth/le/ScanSettings$Builder;

    invoke-direct {v1}, Landroid/bluetooth/le/ScanSettings$Builder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/bluetooth/le/ScanSettings$Builder;->setScanMode(I)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    .line 329
    invoke-virtual {v1, v2, v3}, Landroid/bluetooth/le/ScanSettings$Builder;->setReportDelay(J)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/le/ScanSettings$Builder;->build()Landroid/bluetooth/le/ScanSettings;

    move-result-object v1

    .line 331
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;->mBtScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;->mScanCallback:Landroid/bluetooth/le/ScanCallback;

    invoke-virtual {v2, v0, v1, p0}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 333
    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private stopAirPodsScanner()V
    .locals 2

    .line 445
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;->mBtScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    if-eqz v0, :cond_0

    const-string v0, "BtDeviceBatteryService"

    const-string v1, "Airpods stop scanner"

    .line 446
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;->mBtScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;->mScanCallback:Landroid/bluetooth/le/ScanCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/le/BluetoothLeScanner;->stopScan(Landroid/bluetooth/le/ScanCallback;)V

    :cond_0
    const/4 v0, 0x0

    .line 451
    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;->mBtScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    .line 452
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;->mRecentBeacons:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 454
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :goto_0
    const/16 v0, 0xf

    .line 456
    iput v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;->mLeftStatus:I

    .line 457
    iput v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;->mRightStatus:I

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 77
    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string p1, "BtDeviceBatteryService"

    const-string v0, "onConfigurationChanged : change language"

    .line 78
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;->mDevicePrimary:Landroid/bluetooth/BluetoothDevice;

    if-eqz p1, :cond_1

    .line 80
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;->isAirPods(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;->mDevicePrimary:Landroid/bluetooth/BluetoothDevice;

    .line 81
    invoke-static {p1}, Lcom/android/settingslib/SettingsLibHwSupport;->isTwsPlusDeviceValue(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 82
    :cond_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;->mDevicePrimary:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;->showNotification(Landroid/bluetooth/BluetoothDevice;)V

    :cond_1
    return-void
.end method

.method public onCreate()V
    .locals 2

    .line 70
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "BtDeviceBatteryService"

    const-string v1, "BtDeviceBatteryService onCreate"

    .line 71
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 89
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const-string v0, "BtDeviceBatteryService"

    const-string v1, "BtDeviceBatteryService onDestroy"

    .line 90
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 91
    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 92
    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4

    const-string p2, "BtDeviceBatteryService"

    const-string p3, "onStartCommand"

    .line 105
    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p3, "enable_service"

    .line 107
    invoke-virtual {p1, p3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    .line 108
    invoke-virtual {p1, p3, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p3

    const-string v1, "primary_device"

    .line 109
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    const-string v2, "battery_change"

    .line 110
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    const/4 v0, 0x0

    const-string v2, "prefs_primary_device"

    if-eqz p3, :cond_7

    if-eqz p1, :cond_4

    .line 114
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    .line 116
    :try_start_0
    iget-object p2, p0, Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string p3, ""

    invoke-interface {p2, v2, p3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-class p3, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, p2, p3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 118
    iget-object p2, p0, Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;->mDevicePrimary:Landroid/bluetooth/BluetoothDevice;

    if-nez p2, :cond_0

    if-eqz p1, :cond_0

    .line 119
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;->mDevicePrimary:Landroid/bluetooth/BluetoothDevice;

    .line 120
    invoke-static {p1}, Lcom/android/settingslib/SettingsLibHwSupport;->isTwsPlusDeviceValue(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 121
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;->mDevicePrimary:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;->getTwsPeerDevice(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;->mDeviceSecondary:Landroid/bluetooth/BluetoothDevice;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 125
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 128
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;->mDevicePrimary:Landroid/bluetooth/BluetoothDevice;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p1

    .line 129
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p2

    .line 128
    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;->mDeviceSecondary:Landroid/bluetooth/BluetoothDevice;

    if-eqz p1, :cond_8

    .line 130
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p1

    .line 131
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p2

    .line 130
    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 132
    :cond_2
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;->mDevicePrimary:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;->isAirPods(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;->mDevicePrimary:Landroid/bluetooth/BluetoothDevice;

    .line 133
    invoke-static {p1}, Lcom/android/settingslib/SettingsLibHwSupport;->isTwsPlusDeviceValue(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 134
    :cond_3
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;->mDevicePrimary:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;->showNotification(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_1

    .line 138
    :cond_4
    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;->mDevicePrimary:Landroid/bluetooth/BluetoothDevice;

    .line 139
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    .line 140
    iget-object p3, p0, Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;->mDevicePrimary:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 141
    invoke-direct {p0, v1}, Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;->isAirPods(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 142
    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;->mDeviceSecondary:Landroid/bluetooth/BluetoothDevice;

    const-string p1, "The device is AirPods"

    .line 143
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;->startAirPodsScanner()V

    goto :goto_1

    .line 145
    :cond_5
    invoke-static {v1}, Lcom/android/settingslib/SettingsLibHwSupport;->isTwsPlusDeviceValue(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 146
    invoke-direct {p0, v1}, Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;->getTwsPeerDevice(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;->mDeviceSecondary:Landroid/bluetooth/BluetoothDevice;

    .line 147
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;->stopAirPodsScanner()V

    .line 148
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;->mDevicePrimary:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;->showNotification(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_1

    .line 150
    :cond_6
    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;->mDeviceSecondary:Landroid/bluetooth/BluetoothDevice;

    .line 151
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;->stopAirPodsScanner()V

    .line 152
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;->cancelNotification()V

    goto :goto_1

    .line 157
    :cond_7
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 158
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;->stopAirPodsScanner()V

    .line 159
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;->cancelNotification()V

    .line 160
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    const/4 p0, 0x2

    return p0

    :cond_8
    :goto_1
    const/4 p0, 0x3

    return p0
.end method

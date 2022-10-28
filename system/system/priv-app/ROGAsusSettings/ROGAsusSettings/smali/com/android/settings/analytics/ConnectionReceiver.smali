.class public Lcom/android/settings/analytics/ConnectionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ConnectionReceiver.java"


# instance fields
.field private mDropboxTracker:Lcom/android/settings/dropbox/DropboxTracker;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private updateBluetoothDeviceDB(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .line 107
    invoke-static {p1}, Lcom/android/settings/analytics/BluetoothDevicesDBManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/analytics/BluetoothDevicesDBManager;

    move-result-object p0

    .line 108
    invoke-virtual {p0, p2}, Lcom/android/settings/analytics/BluetoothDevicesDBManager;->queryCount(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    add-int/lit8 p1, p1, 0x1

    .line 110
    invoke-virtual {p0, p2, p1}, Lcom/android/settings/analytics/BluetoothDevicesDBManager;->update(Ljava/lang/String;I)V

    goto :goto_0

    .line 112
    :cond_0
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/settings/analytics/BluetoothDevicesDBManager;->insert(Ljava/lang/String;Ljava/lang/String;II)Z

    :goto_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 45
    :cond_0
    invoke-static {p1}, Lcom/android/settings/dropbox/DropboxTracker;->getInstance(Landroid/content/Context;)Lcom/android/settings/dropbox/DropboxTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/analytics/ConnectionReceiver;->mDropboxTracker:Lcom/android/settings/dropbox/DropboxTracker;

    .line 47
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.bluetooth.device.action.ACL_CONNECTED"

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "android.bluetooth.device.extra.DEVICE"

    if-eqz v1, :cond_3

    .line 50
    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/bluetooth/BluetoothDevice;

    .line 52
    invoke-static {p1}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p2

    if-nez p2, :cond_1

    return-void

    .line 54
    :cond_1
    invoke-virtual {p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBtClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 58
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v2

    .line 59
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v1

    move v2, v0

    .line 61
    :goto_0
    invoke-virtual {p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v6

    move-object v3, p0

    move-object v4, p1

    move v7, v2

    move v8, v0

    invoke-direct/range {v3 .. v8}, Lcom/android/settings/analytics/ConnectionReceiver;->updateBluetoothDeviceDB(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    .line 63
    iget-object p0, p0, Lcom/android/settings/analytics/ConnectionReceiver;->mDropboxTracker:Lcom/android/settings/dropbox/DropboxTracker;

    invoke-virtual {p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p1

    .line 64
    invoke-virtual {p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 63
    invoke-virtual {p0, p1, v3, v2, v0}, Lcom/android/settings/dropbox/DropboxTracker;->addConnectivityBluetoothInfo(Ljava/lang/String;Ljava/lang/String;II)V

    .line 65
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 66
    invoke-virtual {p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v3, "device name"

    invoke-interface {p0, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    invoke-virtual {p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string p2, "device address"

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "device major"

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "device deviceClass"

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Bluetooth connected device"

    .line 70
    invoke-static {p1, p0}, Lcom/microsoft/appcenter/analytics/Analytics;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1

    :cond_3
    const-string p1, "android.bluetooth.a2dp.profile.action.ACTIVE_DEVICE_CHANGED"

    .line 71
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 72
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    if-eqz p1, :cond_4

    .line 74
    iget-object p0, p0, Lcom/android/settings/analytics/ConnectionReceiver;->mDropboxTracker:Lcom/android/settings/dropbox/DropboxTracker;

    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    move-result-object p2

    invoke-virtual {p2}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    .line 75
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p1

    .line 74
    invoke-virtual {p0, p2, p1}, Lcom/android/settings/dropbox/DropboxTracker;->addA2dpActiveBluetoothInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 77
    :cond_4
    iget-object p0, p0, Lcom/android/settings/analytics/ConnectionReceiver;->mDropboxTracker:Lcom/android/settings/dropbox/DropboxTracker;

    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Lcom/android/settings/dropbox/DropboxTracker;->addA2dpActiveBluetoothInfo(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void
.end method

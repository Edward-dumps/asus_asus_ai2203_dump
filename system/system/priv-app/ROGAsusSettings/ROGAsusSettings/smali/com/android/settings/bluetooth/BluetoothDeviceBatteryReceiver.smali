.class public Lcom/android/settings/bluetooth/BluetoothDeviceBatteryReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothDeviceBatteryReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private isServiceRunning(Landroid/content/Context;Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    const-string p0, "activity"

    .line 46
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    const p1, 0x7fffffff

    .line 47
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 48
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 21
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.bluetooth.device.action.BATTERY_LEVEL_CHANGED"

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "  battery = "

    const-string v3, "android.bluetooth.device.extra.DEVICE"

    const/4 v4, 0x1

    const-string v5, "BtDeviceBatteryReceiver"

    if-eqz v1, :cond_1

    .line 24
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/bluetooth/BluetoothDevice;

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ACTION_BATTERY_LEVEL_CHANGED device = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getBatteryLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 25
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    const-class v0, Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;

    invoke-direct {p0, p1, v0}, Lcom/android/settings/bluetooth/BluetoothDeviceBatteryReceiver;->isServiceRunning(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 29
    invoke-static {p1, v4, p2, v4}, Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;->setNotificationService(Landroid/content/Context;ZLandroid/bluetooth/BluetoothDevice;Z)V

    goto :goto_0

    :cond_1
    const-string p0, "android.bluetooth.a2dp.profile.action.ACTIVE_DEVICE_CHANGED"

    .line 32
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 33
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/bluetooth/BluetoothDevice;

    const/4 p2, 0x0

    if-eqz p0, :cond_2

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ACTION_ACTIVE_DEVICE_CHANGED  primary device  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getBatteryLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 35
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-static {p1, v4, p0, p2}, Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;->setNotificationService(Landroid/content/Context;ZLandroid/bluetooth/BluetoothDevice;Z)V

    goto :goto_0

    :cond_2
    const-string p0, "ACTION_ACTIVE_DEVICE_CHANGED device null"

    .line 39
    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 40
    invoke-static {p1, p2, p0, p2}, Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;->setNotificationService(Landroid/content/Context;ZLandroid/bluetooth/BluetoothDevice;Z)V

    :cond_3
    :goto_0
    return-void
.end method

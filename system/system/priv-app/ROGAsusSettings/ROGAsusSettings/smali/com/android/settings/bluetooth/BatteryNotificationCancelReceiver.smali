.class public Lcom/android/settings/bluetooth/BatteryNotificationCancelReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BatteryNotificationCancelReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 20
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string p2, "action_dismiss_noification"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "BatteryCancelReceiver"

    const-string p2, "Bluetooth battery Notification dismiss"

    .line 21
    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    const/4 p2, 0x0

    .line 22
    invoke-static {p1, p2, p0, p2}, Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;->setNotificationService(Landroid/content/Context;ZLandroid/bluetooth/BluetoothDevice;Z)V

    :cond_1
    return-void
.end method

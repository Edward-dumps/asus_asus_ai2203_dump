.class public Lcom/android/settings/bluetooth/BluetoothSwitchCodecReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothSwitchCodecReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 23
    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isHouston()Z

    move-result p0

    if-eqz p0, :cond_1

    return-void

    .line 26
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string v0, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    .line 27
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    const-string v0, "android.bluetooth.profile.extra.STATE"

    .line 28
    invoke-virtual {p2, v0, p0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    .line 29
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "A2dp connect state = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "BtSwitchCodecReceiver"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    new-instance p2, Landroid/content/Intent;

    const-class v0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;

    invoke-direct {p2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-nez p0, :cond_2

    .line 34
    invoke-virtual {p1, p2}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    :cond_2
    return-void
.end method

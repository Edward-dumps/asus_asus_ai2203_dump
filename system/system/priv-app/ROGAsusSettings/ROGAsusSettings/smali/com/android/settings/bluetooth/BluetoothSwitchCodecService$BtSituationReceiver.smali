.class public Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$BtSituationReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothSwitchCodecService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BtSituationReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;


# direct methods
.method public constructor <init>(Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$BtSituationReceiver;->this$0:Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 236
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 238
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 239
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    sparse-switch v0, :sswitch_data_0

    :goto_0
    move p1, v2

    goto :goto_1

    :sswitch_0
    const-string v0, "change_system_mode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x3

    goto :goto_1

    :sswitch_1
    const-string v0, "android.bluetooth.device.action.BATTERY_LEVEL_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x2

    goto :goto_1

    :sswitch_2
    const-string v0, "android.bluetooth.a2dp.profile.action.ACTIVE_DEVICE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    move p1, v3

    goto :goto_1

    :sswitch_3
    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    move p1, v1

    :goto_1
    const-string v0, "SBtSwitchCodecService"

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    .line 263
    :pswitch_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_7

    const/16 p2, 0x9

    const-string v2, "mode"

    .line 265
    invoke-virtual {p1, v2, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 266
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "System mode change, systemMode = "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object p2, p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$BtSituationReceiver;->this$0:Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;

    invoke-static {p2}, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->access$100(Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;)Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$BluetoothDeviceStatus;

    move-result-object p2

    const/16 v0, 0xb

    if-ne p1, v0, :cond_5

    move v1, v3

    :cond_5
    invoke-virtual {p2, v1}, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$BluetoothDeviceStatus;->setIsBatterySaving(Z)V

    .line 270
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$BtSituationReceiver;->this$0:Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;

    invoke-static {p0}, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->access$200(Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;)V

    goto :goto_2

    :pswitch_1
    const-string p1, "android.bluetooth.device.extra.DEVICE"

    .line 250
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    if-eqz p1, :cond_7

    .line 252
    iget-object p2, p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$BtSituationReceiver;->this$0:Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBatteryLevel()I

    move-result p1

    invoke-static {p2, p1}, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->access$302(Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;I)I

    .line 253
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mCurrentBatteryLevel:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$BtSituationReceiver;->this$0:Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;

    invoke-static {p2}, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->access$300(Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$BtSituationReceiver;->this$0:Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;

    invoke-static {p1}, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->access$300(Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;)I

    move-result p1

    if-gez p1, :cond_6

    goto :goto_2

    .line 257
    :cond_6
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$BtSituationReceiver;->this$0:Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;

    invoke-static {p1}, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->access$400(Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;)Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$BluetoothDeviceStatus;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$BtSituationReceiver;->this$0:Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;

    invoke-static {p2}, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->access$100(Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;)Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$BluetoothDeviceStatus;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$BluetoothDeviceStatus;->copy(Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$BluetoothDeviceStatus;)V

    .line 258
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$BtSituationReceiver;->this$0:Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;

    invoke-static {p0, v3}, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->access$500(Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;Z)V

    goto :goto_2

    :pswitch_2
    const-string p1, "android.bluetooth.adapter.extra.STATE"

    .line 242
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 p2, 0xa

    if-ne p1, p2, :cond_7

    .line 243
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$BtSituationReceiver;->this$0:Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    :cond_7
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5b36f014 -> :sswitch_3
        0x1d0d7e43 -> :sswitch_2
        0x2287d448 -> :sswitch_1
        0x574fefa4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

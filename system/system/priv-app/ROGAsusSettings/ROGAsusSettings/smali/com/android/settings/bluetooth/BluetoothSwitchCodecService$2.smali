.class Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$2;
.super Ljava/util/TimerTask;
.source "BluetoothSwitchCodecService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->updateCodecStatus(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;)V
    .locals 0

    .line 385
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$2;->this$0:Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "timer:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/ execute Task"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SBtSwitchCodecService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$2;->this$0:Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->access$500(Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;Z)V

    return-void
.end method

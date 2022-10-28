.class Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$3;
.super Ljava/lang/Object;
.source "BluetoothSwitchCodecService.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;
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

    .line 614
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$3;->this$0:Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 2

    const-string p1, "SBtSwitchCodecService"

    const-string v0, "onServiceConnected"

    .line 618
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$3;->this$0:Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;

    check-cast p2, Landroid/bluetooth/BluetoothA2dp;

    invoke-static {v0, p2}, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->access$602(Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;

    .line 621
    iget-object p2, p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$3;->this$0:Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;

    invoke-static {p2}, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->access$600(Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;)Landroid/bluetooth/BluetoothA2dp;

    move-result-object p2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothA2dp;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 624
    iget-object p2, p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$3;->this$0:Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;

    invoke-static {p2}, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->access$600(Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;)Landroid/bluetooth/BluetoothA2dp;

    move-result-object p2

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$3;->this$0:Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;

    .line 625
    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->access$600(Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;)Landroid/bluetooth/BluetoothA2dp;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothA2dp;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 624
    invoke-virtual {p2, v0}, Landroid/bluetooth/BluetoothA2dp;->getCodecStatus(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothCodecStatus;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 626
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothCodecStatus;->getCodecConfig()Landroid/bluetooth/BluetoothCodecConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 627
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothCodecStatus;->getCodecConfig()Landroid/bluetooth/BluetoothCodecConfig;

    move-result-object p2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecType()I

    move-result p2

    .line 628
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "A2dp codec default, codecType =  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$3;->this$0:Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->access$700(Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "default_bt_codec_type"

    .line 631
    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    .line 632
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 636
    :cond_0
    iget-object p2, p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$3;->this$0:Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;

    invoke-static {p2}, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->access$700(Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;)Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$3;->this$0:Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;

    .line 637
    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->access$600(Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;)Landroid/bluetooth/BluetoothA2dp;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothA2dp;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->access$800(Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;Landroid/bluetooth/BluetoothDevice;)[Landroid/bluetooth/BluetoothCodecConfig;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->access$900(Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;[Landroid/bluetooth/BluetoothCodecConfig;)I

    move-result v0

    const-string v1, "pref_bt_codec_type"

    .line 636
    invoke-interface {p2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    .line 638
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 641
    iget-object p2, p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$3;->this$0:Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;

    invoke-static {p2}, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->access$600(Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;)Landroid/bluetooth/BluetoothA2dp;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothA2dp;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBatteryLevel()I

    move-result v0

    invoke-static {p2, v0}, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->access$302(Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;I)I

    .line 642
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "init connected battery level:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$3;->this$0:Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->access$300(Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$3;->this$0:Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;

    invoke-static {p1}, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->access$1000(Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;)Landroid/media/AudioManager;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 645
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$3;->this$0:Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;

    invoke-static {p1}, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->access$1000(Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;)Landroid/media/AudioManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/AudioManager;->getActivePlaybackConfigurations()Ljava/util/List;

    move-result-object p1

    .line 646
    iget-object p2, p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$3;->this$0:Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;

    invoke-static {p2, p1}, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->access$000(Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;Ljava/util/List;)Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$ConfigSummary;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 648
    iget-object p2, p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$3;->this$0:Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;

    invoke-static {p2}, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->access$100(Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;)Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$BluetoothDeviceStatus;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$ConfigSummary;->isMusic()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$BluetoothDeviceStatus;->setIsMusic(Z)V

    .line 649
    iget-object p2, p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$3;->this$0:Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;

    invoke-static {p2}, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->access$100(Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;)Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$BluetoothDeviceStatus;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$ConfigSummary;->isGaming()Z

    move-result p1

    invoke-virtual {p2, p1}, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$BluetoothDeviceStatus;->setIsGame(Z)V

    .line 650
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$3;->this$0:Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;

    invoke-static {p0}, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->access$200(Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;)V

    :cond_1
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 1

    const-string p1, "SBtSwitchCodecService"

    const-string v0, "onServiceDisconnected"

    .line 658
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$3;->this$0:Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->access$602(Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;

    .line 660
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$3;->this$0:Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method

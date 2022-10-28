.class Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$1;
.super Landroid/media/AudioManager$AudioPlaybackCallback;
.source "BluetoothSwitchCodecService.java"


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

    .line 218
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$1;->this$0:Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;

    invoke-direct {p0}, Landroid/media/AudioManager$AudioPlaybackCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlaybackConfigChanged(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/AudioPlaybackConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 221
    invoke-super {p0, p1}, Landroid/media/AudioManager$AudioPlaybackCallback;->onPlaybackConfigChanged(Ljava/util/List;)V

    .line 222
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$1;->this$0:Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;

    invoke-static {v0, p1}, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->access$000(Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;Ljava/util/List;)Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$ConfigSummary;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 224
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$1;->this$0:Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->access$100(Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;)Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$BluetoothDeviceStatus;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$ConfigSummary;->isMusic()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$BluetoothDeviceStatus;->setIsMusic(Z)V

    .line 225
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$1;->this$0:Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->access$100(Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;)Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$BluetoothDeviceStatus;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$ConfigSummary;->isGaming()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$BluetoothDeviceStatus;->setIsGame(Z)V

    .line 226
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$1;->this$0:Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;

    invoke-static {p0}, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;->access$200(Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;)V

    :cond_0
    return-void
.end method

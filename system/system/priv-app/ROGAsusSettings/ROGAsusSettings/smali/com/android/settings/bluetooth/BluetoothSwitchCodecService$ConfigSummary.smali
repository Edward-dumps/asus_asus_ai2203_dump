.class Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$ConfigSummary;
.super Ljava/lang/Object;
.source "BluetoothSwitchCodecService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConfigSummary"
.end annotation


# instance fields
.field private final isGaming:Z

.field private final isMusic:Z


# direct methods
.method constructor <init>(ZZ)V
    .locals 0

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$ConfigSummary;->isGaming:Z

    .line 198
    iput-boolean p2, p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$ConfigSummary;->isMusic:Z

    return-void
.end method


# virtual methods
.method public isGaming()Z
    .locals 0

    .line 202
    iget-boolean p0, p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$ConfigSummary;->isGaming:Z

    return p0
.end method

.method public isMusic()Z
    .locals 0

    .line 206
    iget-boolean p0, p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$ConfigSummary;->isMusic:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConfigSummary{isGaming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$ConfigSummary;->isGaming:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isMusic="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$ConfigSummary;->isMusic:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

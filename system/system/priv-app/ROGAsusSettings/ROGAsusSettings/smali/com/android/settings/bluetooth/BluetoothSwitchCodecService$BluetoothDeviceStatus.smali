.class public Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$BluetoothDeviceStatus;
.super Ljava/lang/Object;
.source "BluetoothSwitchCodecService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/BluetoothSwitchCodecService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BluetoothDeviceStatus"
.end annotation


# instance fields
.field private mIsBatterySaving:Z

.field private mIsGame:Z

.field private mIsMusic:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 117
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$BluetoothDeviceStatus;->mIsMusic:Z

    .line 118
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$BluetoothDeviceStatus;->mIsGame:Z

    .line 119
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$BluetoothDeviceStatus;->mIsBatterySaving:Z

    return-void
.end method


# virtual methods
.method public copy(Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$BluetoothDeviceStatus;)V
    .locals 1

    .line 151
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$BluetoothDeviceStatus;->isMusic()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$BluetoothDeviceStatus;->setIsMusic(Z)V

    .line 152
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$BluetoothDeviceStatus;->isGame()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$BluetoothDeviceStatus;->setIsGame(Z)V

    .line 153
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$BluetoothDeviceStatus;->isBatterySaving()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$BluetoothDeviceStatus;->setIsBatterySaving(Z)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 162
    :cond_1
    const-class v2, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$BluetoothDeviceStatus;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 165
    :cond_2
    check-cast p1, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$BluetoothDeviceStatus;

    .line 171
    iget-boolean v2, p1, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$BluetoothDeviceStatus;->mIsGame:Z

    iget-boolean v3, p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$BluetoothDeviceStatus;->mIsGame:Z

    if-ne v2, v3, :cond_3

    iget-boolean p1, p1, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$BluetoothDeviceStatus;->mIsMusic:Z

    iget-boolean p0, p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$BluetoothDeviceStatus;->mIsMusic:Z

    if-ne p1, p0, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    return v0
.end method

.method public isBatterySaving()Z
    .locals 0

    .line 143
    iget-boolean p0, p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$BluetoothDeviceStatus;->mIsBatterySaving:Z

    return p0
.end method

.method public isGame()Z
    .locals 0

    .line 127
    iget-boolean p0, p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$BluetoothDeviceStatus;->mIsGame:Z

    return p0
.end method

.method public isMediaPlaying()Z
    .locals 1

    .line 147
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$BluetoothDeviceStatus;->mIsGame:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$BluetoothDeviceStatus;->mIsMusic:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isMusic()Z
    .locals 0

    .line 135
    iget-boolean p0, p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$BluetoothDeviceStatus;->mIsMusic:Z

    return p0
.end method

.method public setIsBatterySaving(Z)V
    .locals 0

    .line 139
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$BluetoothDeviceStatus;->mIsBatterySaving:Z

    return-void
.end method

.method public setIsGame(Z)V
    .locals 0

    .line 123
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$BluetoothDeviceStatus;->mIsGame:Z

    return-void
.end method

.method public setIsMusic(Z)V
    .locals 0

    .line 131
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$BluetoothDeviceStatus;->mIsMusic:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BluetoothDeviceStatus{mIsMusic="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$BluetoothDeviceStatus;->mIsMusic:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsGame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/settings/bluetooth/BluetoothSwitchCodecService$BluetoothDeviceStatus;->mIsGame:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

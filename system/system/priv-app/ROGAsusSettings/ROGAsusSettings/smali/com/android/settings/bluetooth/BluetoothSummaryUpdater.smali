.class public final Lcom/android/settings/bluetooth/BluetoothSummaryUpdater;
.super Lcom/android/settings/widget/SummaryUpdater;
.source "BluetoothSummaryUpdater.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/BluetoothCallback;


# instance fields
.field private final mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/widget/SummaryUpdater$OnSummaryChangeListener;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/SummaryUpdater;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SummaryUpdater$OnSummaryChangeListener;)V

    .line 47
    iput-object p3, p0, Lcom/android/settings/bluetooth/BluetoothSummaryUpdater;->mBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 48
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothSummaryUpdater;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-void
.end method


# virtual methods
.method getConnectedDeviceSummary()Ljava/lang/String;
    .locals 9

    .line 95
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSummaryUpdater;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    const-string v1, "BluetoothSummaryUpdater"

    if-nez v0, :cond_0

    const-string v0, "getConnectedDeviceSummary, bonded devices are null"

    .line 97
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object p0, p0, Lcom/android/settings/widget/SummaryUpdater;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->bluetooth_disabled:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 99
    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "getConnectedDeviceSummary, no bonded devices"

    .line 100
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object p0, p0, Lcom/android/settings/widget/SummaryUpdater;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->disconnected:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 103
    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, v3

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/bluetooth/BluetoothDevice;

    .line 104
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 106
    iget-object v4, p0, Lcom/android/settings/widget/SummaryUpdater;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, v5, 0x1

    if-le v5, v7, :cond_2

    :cond_3
    if-nez v4, :cond_5

    .line 114
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getConnectedDeviceSummary, deviceName is null, numBondedDevices="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 114
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 117
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getConnectedDeviceSummary, device="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "], isConnected="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->isConnected()Z

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 117
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 120
    :cond_4
    iget-object p0, p0, Lcom/android/settings/widget/SummaryUpdater;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->disconnected:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    if-le v5, v7, :cond_6

    .line 123
    iget-object p0, p0, Lcom/android/settings/widget/SummaryUpdater;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->bluetooth_connected_multiple_devices_summary:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 124
    :cond_6
    iget-object p0, p0, Lcom/android/settings/widget/SummaryUpdater;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->bluetooth_connected_summary:I

    new-array v1, v7, [Ljava/lang/Object;

    aput-object v4, v1, v3

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSummaryUpdater;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSummaryUpdater;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getConnectionState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 87
    iget-object p0, p0, Lcom/android/settings/widget/SummaryUpdater;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->disconnected:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 85
    :cond_1
    iget-object p0, p0, Lcom/android/settings/widget/SummaryUpdater;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->bluetooth_disconnecting:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 81
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSummaryUpdater;->getConnectedDeviceSummary()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 83
    :cond_3
    iget-object p0, p0, Lcom/android/settings/widget/SummaryUpdater;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->bluetooth_connecting:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 77
    :cond_4
    :goto_0
    iget-object p0, p0, Lcom/android/settings/widget/SummaryUpdater;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->bluetooth_disabled:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onBluetoothStateChanged(I)V
    .locals 0

    .line 53
    invoke-virtual {p0}, Lcom/android/settings/widget/SummaryUpdater;->notifyChangeIfNeeded()V

    return-void
.end method

.method public onConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/widget/SummaryUpdater;->notifyChangeIfNeeded()V

    return-void
.end method

.method public register(Z)V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSummaryUpdater;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/widget/SummaryUpdater;->notifyChangeIfNeeded()V

    .line 68
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothSummaryUpdater;->mBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->registerCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    goto :goto_0

    .line 70
    :cond_1
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothSummaryUpdater;->mBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->unregisterCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    :goto_0
    return-void
.end method

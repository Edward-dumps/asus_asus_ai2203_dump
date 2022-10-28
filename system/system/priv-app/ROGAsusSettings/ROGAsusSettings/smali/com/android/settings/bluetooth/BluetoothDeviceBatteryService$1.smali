.class Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService$1;
.super Landroid/bluetooth/le/ScanCallback;
.source "BluetoothDeviceBatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;)V
    .locals 0

    .line 353
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService$1;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;

    invoke-direct {p0}, Landroid/bluetooth/le/ScanCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBatchScanResults(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanResult;",
            ">;)V"
        }
    .end annotation

    .line 356
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/le/ScanResult;

    const/4 v2, -0x1

    .line 357
    invoke-virtual {p0, v2, v1}, Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService$1;->onScanResult(ILandroid/bluetooth/le/ScanResult;)V

    goto :goto_0

    .line 359
    :cond_0
    invoke-super {p0, p1}, Landroid/bluetooth/le/ScanCallback;->onBatchScanResults(Ljava/util/List;)V

    return-void
.end method

.method public onScanResult(ILandroid/bluetooth/le/ScanResult;)V
    .locals 6

    .line 365
    invoke-super {p0, p1, p2}, Landroid/bluetooth/le/ScanCallback;->onScanResult(ILandroid/bluetooth/le/ScanResult;)V

    .line 367
    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object p1

    const/16 v0, 0x4c

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 368
    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/bluetooth/le/ScanRecord;->getManufacturerSpecificData(I)[B

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_10

    .line 371
    array-length p1, p1

    const/16 v2, 0x1b

    if-eq p1, v2, :cond_1

    goto/16 :goto_7

    .line 375
    :cond_1
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService$1;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;

    invoke-static {p1}, Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;->access$000(Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 378
    :goto_1
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService$1;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;->access$000(Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_5

    .line 379
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService$1;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;

    invoke-static {v4}, Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;->access$000(Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/le/ScanResult;

    invoke-virtual {v4}, Landroid/bluetooth/le/ScanResult;->getTimestampNanos()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide v4, 0x2540be400L

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 381
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService$1;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;->access$000(Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;)Ljava/util/ArrayList;

    move-result-object v2

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move p1, v3

    goto :goto_2

    :cond_2
    if-eqz v1, :cond_3

    .line 385
    invoke-virtual {v1}, Landroid/bluetooth/le/ScanResult;->getRssi()I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService$1;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;

    invoke-static {v3}, Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;->access$000(Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/le/ScanResult;

    invoke-virtual {v3}, Landroid/bluetooth/le/ScanResult;->getRssi()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 386
    :cond_3
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService$1;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;

    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;->access$000(Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/le/ScanResult;

    :cond_4
    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_5
    if-eqz v1, :cond_6

    .line 390
    invoke-virtual {v1}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_3

    :cond_6
    move-object p2, v1

    :goto_3
    if-nez p2, :cond_7

    return-void

    .line 398
    :cond_7
    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getRssi()I

    move-result p1

    const/16 v1, -0x3c

    if-ge p1, v1, :cond_8

    return-void

    .line 402
    :cond_8
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService$1;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;

    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/bluetooth/le/ScanRecord;->getManufacturerSpecificData(I)[B

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;->access$100(Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;[B)Ljava/lang/String;

    move-result-object p1

    .line 403
    iget-object p2, p0, Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService$1;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;

    invoke-static {p2, p1}, Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;->access$200(Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;Ljava/lang/String;)Z

    move-result p2

    .line 405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xc

    const/16 v3, 0xd

    if-eqz p2, :cond_9

    move v4, v2

    goto :goto_4

    :cond_9
    move v4, v3

    :goto_4
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x10

    invoke-static {v0, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 407
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_a

    move v2, v3

    :cond_a
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    const/16 p2, 0xf

    const/16 v1, 0xa

    if-eq v0, p2, :cond_c

    if-ge v0, v1, :cond_b

    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x5

    goto :goto_5

    :cond_b
    mul-int/lit8 v0, v0, 0xa

    :goto_5
    if-ne p1, p2, :cond_c

    move p1, v0

    :cond_c
    if-eq p1, p2, :cond_e

    if-ge p1, v1, :cond_d

    mul-int/lit8 p1, p1, 0xa

    add-int/lit8 p1, p1, 0x5

    goto :goto_6

    :cond_d
    mul-int/lit8 p1, p1, 0xa

    :goto_6
    if-ne v0, p2, :cond_e

    move v0, p1

    .line 421
    :cond_e
    iget-object p2, p0, Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService$1;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;

    invoke-static {p2}, Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;->access$300(Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;)I

    move-result p2

    if-ne p2, v0, :cond_f

    iget-object p2, p0, Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService$1;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;

    invoke-static {p2}, Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;->access$400(Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;)I

    move-result p2

    if-eq p2, p1, :cond_10

    .line 422
    :cond_f
    iget-object p2, p0, Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService$1;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;

    invoke-static {p2, v0}, Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;->access$302(Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;I)I

    .line 423
    iget-object p2, p0, Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService$1;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;

    invoke-static {p2, p1}, Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;->access$402(Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;I)I

    .line 424
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService$1;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;

    invoke-static {p0}, Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;->access$500(Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;->access$600(Lcom/android/settings/bluetooth/BluetoothDeviceBatteryService;Landroid/bluetooth/BluetoothDevice;)V

    :cond_10
    :goto_7
    return-void
.end method

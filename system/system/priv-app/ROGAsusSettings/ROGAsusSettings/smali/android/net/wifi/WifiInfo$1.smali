.class Landroid/net/wifi/WifiInfo$1;
.super Ljava/lang/Object;
.source "WifiInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/WifiInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiInfo;
    .locals 5

    .line 1310
    new-instance p0, Landroid/net/wifi/WifiInfo;

    invoke-direct {p0}, Landroid/net/wifi/WifiInfo;-><init>()V

    .line 1311
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiInfo;->setNetworkId(I)V

    .line 1312
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiInfo;->setRssi(I)V

    .line 1313
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiInfo;->setLinkSpeed(I)V

    .line 1314
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiInfo;->setTxLinkSpeedMbps(I)V

    .line 1315
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiInfo;->setRxLinkSpeedMbps(I)V

    .line 1316
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiInfo;->setFrequency(I)V

    .line 1317
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1319
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiInfo;->setInetAddress(Ljava/net/InetAddress;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1322
    :catch_0
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 1323
    sget-object v0, Landroid/net/wifi/WifiSsid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiSsid;

    invoke-static {p0, v0}, Landroid/net/wifi/WifiInfo;->access$002(Landroid/net/wifi/WifiInfo;Landroid/net/wifi/WifiSsid;)Landroid/net/wifi/WifiSsid;

    .line 1325
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/net/wifi/WifiInfo;->access$102(Landroid/net/wifi/WifiInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 1326
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/net/wifi/WifiInfo;->access$202(Landroid/net/wifi/WifiInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 1327
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    invoke-static {p0, v0}, Landroid/net/wifi/WifiInfo;->access$302(Landroid/net/wifi/WifiInfo;Z)Z

    .line 1328
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_1

    :cond_3
    move v0, v2

    :goto_1
    invoke-static {p0, v0}, Landroid/net/wifi/WifiInfo;->access$402(Landroid/net/wifi/WifiInfo;Z)Z

    .line 1329
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    goto :goto_2

    :cond_4
    move v0, v2

    :goto_2
    invoke-static {p0, v0}, Landroid/net/wifi/WifiInfo;->access$502(Landroid/net/wifi/WifiInfo;Z)Z

    .line 1330
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    goto :goto_3

    :cond_5
    move v0, v2

    :goto_3
    invoke-static {p0, v0}, Landroid/net/wifi/WifiInfo;->access$602(Landroid/net/wifi/WifiInfo;Z)Z

    .line 1331
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    goto :goto_4

    :cond_6
    move v0, v2

    :goto_4
    invoke-static {p0, v0}, Landroid/net/wifi/WifiInfo;->access$702(Landroid/net/wifi/WifiInfo;Z)Z

    .line 1332
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    goto :goto_5

    :cond_7
    move v0, v2

    :goto_5
    invoke-static {p0, v0}, Landroid/net/wifi/WifiInfo;->access$802(Landroid/net/wifi/WifiInfo;Z)Z

    .line 1333
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/WifiInfo;->score:I

    .line 1334
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/net/wifi/WifiInfo;->txSuccess:J

    .line 1335
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v3

    invoke-static {p0, v3, v4}, Landroid/net/wifi/WifiInfo;->access$902(Landroid/net/wifi/WifiInfo;D)D

    .line 1336
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/net/wifi/WifiInfo;->txRetries:J

    .line 1337
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v3

    invoke-static {p0, v3, v4}, Landroid/net/wifi/WifiInfo;->access$1002(Landroid/net/wifi/WifiInfo;D)D

    .line 1338
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/net/wifi/WifiInfo;->txBad:J

    .line 1339
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v3

    invoke-static {p0, v3, v4}, Landroid/net/wifi/WifiInfo;->access$1102(Landroid/net/wifi/WifiInfo;D)D

    .line 1340
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/net/wifi/WifiInfo;->rxSuccess:J

    .line 1341
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v3

    invoke-static {p0, v3, v4}, Landroid/net/wifi/WifiInfo;->access$1202(Landroid/net/wifi/WifiInfo;D)D

    .line 1342
    sget-object v0, Landroid/net/wifi/SupplicantState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/SupplicantState;

    invoke-static {p0, v0}, Landroid/net/wifi/WifiInfo;->access$1302(Landroid/net/wifi/WifiInfo;Landroid/net/wifi/SupplicantState;)Landroid/net/wifi/SupplicantState;

    .line 1343
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    goto :goto_6

    :cond_8
    move v0, v2

    :goto_6
    invoke-static {p0, v0}, Landroid/net/wifi/WifiInfo;->access$1402(Landroid/net/wifi/WifiInfo;Z)Z

    .line 1344
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/net/wifi/WifiInfo;->access$1502(Landroid/net/wifi/WifiInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 1345
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/net/wifi/WifiInfo;->access$1602(Landroid/net/wifi/WifiInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 1346
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/net/wifi/WifiInfo;->access$1702(Landroid/net/wifi/WifiInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 1347
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    goto :goto_7

    :cond_9
    move v0, v2

    :goto_7
    invoke-static {p0, v0}, Landroid/net/wifi/WifiInfo;->access$1802(Landroid/net/wifi/WifiInfo;Z)Z

    .line 1348
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_8

    :cond_a
    move v1, v2

    :goto_8
    invoke-static {p0, v1}, Landroid/net/wifi/WifiInfo;->access$1902(Landroid/net/wifi/WifiInfo;Z)Z

    .line 1349
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {p0, v0}, Landroid/net/wifi/WifiInfo;->access$2002(Landroid/net/wifi/WifiInfo;I)I

    .line 1350
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {p0, v0}, Landroid/net/wifi/WifiInfo;->access$2102(Landroid/net/wifi/WifiInfo;I)I

    .line 1351
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {p0, v0}, Landroid/net/wifi/WifiInfo;->access$2202(Landroid/net/wifi/WifiInfo;I)I

    .line 1352
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/net/wifi/WifiInfo;->access$2302(Landroid/net/wifi/WifiInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 1353
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {p0, v0}, Landroid/net/wifi/WifiInfo;->access$2402(Landroid/net/wifi/WifiInfo;I)I

    .line 1354
    sget-object v0, Landroid/net/wifi/ScanResult$InformationElement;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/net/wifi/WifiInfo;->access$2502(Landroid/net/wifi/WifiInfo;Ljava/util/List;)Ljava/util/List;

    .line 1356
    invoke-static {}, Lcom/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1357
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {p0, v0}, Landroid/net/wifi/WifiInfo;->access$2602(Landroid/net/wifi/WifiInfo;I)I

    .line 1359
    :cond_b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p0, p1}, Landroid/net/wifi/WifiInfo;->access$2702(Landroid/net/wifi/WifiInfo;I)I

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1308
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiInfo;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/net/wifi/WifiInfo;
    .locals 0

    .line 1364
    new-array p0, p1, [Landroid/net/wifi/WifiInfo;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1308
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiInfo$1;->newArray(I)[Landroid/net/wifi/WifiInfo;

    move-result-object p0

    return-object p0
.end method

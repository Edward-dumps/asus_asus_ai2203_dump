.class Landroid/net/wifi/ScanResult$1;
.super Ljava/lang/Object;
.source "ScanResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/ScanResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/ScanResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/ScanResult;
    .locals 21

    move-object/from16 v0, p1

    .line 1309
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1310
    sget-object v1, Landroid/net/wifi/WifiSsid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiSsid;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move-object v4, v1

    .line 1312
    new-instance v1, Landroid/net/wifi/ScanResult;

    move-object v3, v1

    .line 1314
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1315
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1316
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 1317
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1318
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 1319
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 1320
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 1321
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v13

    .line 1322
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 1323
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1324
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1325
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 1326
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v19

    const/16 v20, 0x0

    invoke-direct/range {v3 .. v20}, Landroid/net/wifi/ScanResult;-><init>(Landroid/net/wifi/WifiSsid;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;IIJIIIIIZ)V

    .line 1331
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v1, v3}, Landroid/net/wifi/ScanResult;->access$002(Landroid/net/wifi/ScanResult;I)I

    .line 1332
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, v1, Landroid/net/wifi/ScanResult;->seen:J

    .line 1333
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v2, v4

    :goto_1
    iput-boolean v2, v1, Landroid/net/wifi/ScanResult;->untrusted:Z

    .line 1334
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Landroid/net/wifi/ScanResult;->numUsage:I

    .line 1335
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/net/wifi/ScanResult;->venueName:Ljava/lang/CharSequence;

    .line 1336
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/net/wifi/ScanResult;->operatorFriendlyName:Ljava/lang/CharSequence;

    .line 1337
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v1, Landroid/net/wifi/ScanResult;->flags:J

    .line 1338
    sget-object v2, Landroid/net/wifi/ScanResult$InformationElement;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/net/wifi/ScanResult$InformationElement;

    iput-object v2, v1, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    .line 1340
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    .line 1342
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v1, Landroid/net/wifi/ScanResult;->anqpLines:Ljava/util/List;

    move v3, v4

    :goto_2
    if-ge v3, v2, :cond_2

    .line 1344
    iget-object v5, v1, Landroid/net/wifi/ScanResult;->anqpLines:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1347
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3

    .line 1349
    new-array v3, v2, [Landroid/net/wifi/AnqpInformationElement;

    iput-object v3, v1, Landroid/net/wifi/ScanResult;->anqpElements:[Landroid/net/wifi/AnqpInformationElement;

    move v3, v4

    :goto_3
    if-ge v3, v2, :cond_3

    .line 1351
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1352
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1353
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1354
    new-array v7, v7, [B

    .line 1355
    invoke-virtual {v0, v7}, Landroid/os/Parcel;->readByteArray([B)V

    .line 1356
    iget-object v8, v1, Landroid/net/wifi/ScanResult;->anqpElements:[Landroid/net/wifi/AnqpInformationElement;

    new-instance v9, Landroid/net/wifi/AnqpInformationElement;

    invoke-direct {v9, v5, v6, v7}, Landroid/net/wifi/AnqpInformationElement;-><init>(II[B)V

    aput-object v9, v8, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1360
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4

    .line 1362
    new-array v3, v2, [Landroid/net/wifi/ScanResult$RadioChainInfo;

    iput-object v3, v1, Landroid/net/wifi/ScanResult;->radioChainInfos:[Landroid/net/wifi/ScanResult$RadioChainInfo;

    :goto_4
    if-ge v4, v2, :cond_4

    .line 1364
    iget-object v3, v1, Landroid/net/wifi/ScanResult;->radioChainInfos:[Landroid/net/wifi/ScanResult$RadioChainInfo;

    new-instance v5, Landroid/net/wifi/ScanResult$RadioChainInfo;

    invoke-direct {v5}, Landroid/net/wifi/ScanResult$RadioChainInfo;-><init>()V

    aput-object v5, v3, v4

    .line 1365
    iget-object v3, v1, Landroid/net/wifi/ScanResult;->radioChainInfos:[Landroid/net/wifi/ScanResult$RadioChainInfo;

    aget-object v3, v3, v4

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v3, Landroid/net/wifi/ScanResult$RadioChainInfo;->id:I

    .line 1366
    iget-object v3, v1, Landroid/net/wifi/ScanResult;->radioChainInfos:[Landroid/net/wifi/ScanResult$RadioChainInfo;

    aget-object v3, v3, v4

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v3, Landroid/net/wifi/ScanResult$RadioChainInfo;->level:I

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1369
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/net/wifi/ScanResult;->ifaceName:Ljava/lang/String;

    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1306
    invoke-virtual {p0, p1}, Landroid/net/wifi/ScanResult$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/ScanResult;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/net/wifi/ScanResult;
    .locals 0

    .line 1374
    new-array p0, p1, [Landroid/net/wifi/ScanResult;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1306
    invoke-virtual {p0, p1}, Landroid/net/wifi/ScanResult$1;->newArray(I)[Landroid/net/wifi/ScanResult;

    move-result-object p0

    return-object p0
.end method

.class Landroid/net/wifi/rtt/RangingResult$1;
.super Ljava/lang/Object;
.source "RangingResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/rtt/RangingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/rtt/RangingResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 403
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/rtt/RangingResult;
    .locals 14

    .line 411
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 412
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 415
    sget-object p0, Landroid/net/MacAddress;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/MacAddress;

    move-object v2, p0

    goto :goto_0

    :cond_0
    move-object v2, v0

    .line 417
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 420
    new-instance v0, Landroid/net/wifi/aware/PeerHandle;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-direct {v0, v3}, Landroid/net/wifi/aware/PeerHandle;-><init>(I)V

    :cond_1
    move-object v3, v0

    .line 422
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 423
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 424
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 425
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 426
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 427
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v9

    .line 428
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v10

    .line 430
    const-class v0, Landroid/net/wifi/rtt/RangingResult$1;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/net/wifi/rtt/ResponderLocation;

    .line 431
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 432
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    if-eqz p0, :cond_2

    .line 434
    new-instance p0, Landroid/net/wifi/rtt/RangingResult;

    move-object v0, p0

    move-object v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-wide v11, v12

    invoke-direct/range {v0 .. v12}, Landroid/net/wifi/rtt/RangingResult;-><init>(ILandroid/net/wifi/aware/PeerHandle;IIIII[B[BLandroid/net/wifi/rtt/ResponderLocation;J)V

    return-object p0

    .line 438
    :cond_2
    new-instance p0, Landroid/net/wifi/rtt/RangingResult;

    move-object v0, p0

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-wide v11, v12

    move v13, p1

    invoke-direct/range {v0 .. v13}, Landroid/net/wifi/rtt/RangingResult;-><init>(ILandroid/net/MacAddress;IIIII[B[BLandroid/net/wifi/rtt/ResponderLocation;JZ)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 403
    invoke-virtual {p0, p1}, Landroid/net/wifi/rtt/RangingResult$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/rtt/RangingResult;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/net/wifi/rtt/RangingResult;
    .locals 0

    .line 406
    new-array p0, p1, [Landroid/net/wifi/rtt/RangingResult;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 403
    invoke-virtual {p0, p1}, Landroid/net/wifi/rtt/RangingResult$1;->newArray(I)[Landroid/net/wifi/rtt/RangingResult;

    move-result-object p0

    return-object p0
.end method

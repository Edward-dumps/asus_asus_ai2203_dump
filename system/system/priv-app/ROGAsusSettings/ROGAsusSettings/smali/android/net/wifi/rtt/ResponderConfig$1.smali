.class Landroid/net/wifi/rtt/ResponderConfig$1;
.super Ljava/lang/Object;
.source "ResponderConfig.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/rtt/ResponderConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/rtt/ResponderConfig;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 423
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/rtt/ResponderConfig;
    .locals 12

    .line 431
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 434
    sget-object p0, Landroid/net/MacAddress;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/MacAddress;

    move-object v2, p0

    goto :goto_0

    :cond_0
    move-object v2, v0

    .line 436
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 439
    new-instance v0, Landroid/net/wifi/aware/PeerHandle;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    invoke-direct {v0, p0}, Landroid/net/wifi/aware/PeerHandle;-><init>(I)V

    :cond_1
    move-object v4, v0

    .line 441
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 442
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_2

    move v6, v0

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    move v6, p0

    .line 443
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 444
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 445
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 446
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 447
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-nez v4, :cond_3

    .line 450
    new-instance p0, Landroid/net/wifi/rtt/ResponderConfig;

    move-object v1, p0

    move v3, v5

    move v4, v6

    move v5, v7

    move v6, v8

    move v7, v9

    move v8, v10

    move v9, v11

    invoke-direct/range {v1 .. v9}, Landroid/net/wifi/rtt/ResponderConfig;-><init>(Landroid/net/MacAddress;IZIIIII)V

    return-object p0

    .line 453
    :cond_3
    new-instance p0, Landroid/net/wifi/rtt/ResponderConfig;

    move-object v3, p0

    invoke-direct/range {v3 .. v11}, Landroid/net/wifi/rtt/ResponderConfig;-><init>(Landroid/net/wifi/aware/PeerHandle;IZIIIII)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 423
    invoke-virtual {p0, p1}, Landroid/net/wifi/rtt/ResponderConfig$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/rtt/ResponderConfig;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/net/wifi/rtt/ResponderConfig;
    .locals 0

    .line 426
    new-array p0, p1, [Landroid/net/wifi/rtt/ResponderConfig;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 423
    invoke-virtual {p0, p1}, Landroid/net/wifi/rtt/ResponderConfig$1;->newArray(I)[Landroid/net/wifi/rtt/ResponderConfig;

    move-result-object p0

    return-object p0
.end method

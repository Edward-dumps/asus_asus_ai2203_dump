.class Landroid/net/wifi/aware/WifiAwareNetworkSpecifier$1;
.super Ljava/lang/Object;
.source "WifiAwareNetworkSpecifier.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;
    .locals 11

    .line 173
    new-instance p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 177
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 180
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v7

    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 182
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;-><init>(IIIII[B[BLjava/lang/String;II)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 170
    invoke-virtual {p0, p1}, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;
    .locals 0

    .line 188
    new-array p0, p1, [Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 170
    invoke-virtual {p0, p1}, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier$1;->newArray(I)[Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;

    move-result-object p0

    return-object p0
.end method

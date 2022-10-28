.class Landroid/net/wifi/WifiSsid$1;
.super Ljava/lang/Object;
.source "WifiSsid.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiSsid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/WifiSsid;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiSsid;
    .locals 3

    .line 275
    new-instance p0, Landroid/net/wifi/WifiSsid;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiSsid;-><init>(Landroid/net/wifi/WifiSsid$1;)V

    .line 276
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 277
    new-array v1, v0, [B

    .line 278
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    .line 279
    iget-object p1, p0, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 272
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiSsid$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiSsid;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/net/wifi/WifiSsid;
    .locals 0

    .line 285
    new-array p0, p1, [Landroid/net/wifi/WifiSsid;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 272
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiSsid$1;->newArray(I)[Landroid/net/wifi/WifiSsid;

    move-result-object p0

    return-object p0
.end method

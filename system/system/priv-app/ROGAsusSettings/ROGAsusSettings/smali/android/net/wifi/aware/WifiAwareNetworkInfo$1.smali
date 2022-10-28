.class Landroid/net/wifi/aware/WifiAwareNetworkInfo$1;
.super Ljava/lang/Object;
.source "WifiAwareNetworkInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/aware/WifiAwareNetworkInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/aware/WifiAwareNetworkInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/aware/WifiAwareNetworkInfo;
    .locals 3

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p0

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 148
    :try_start_0
    invoke-static {v0}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 150
    :try_start_1
    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V

    :cond_0
    move-object v0, v2

    .line 153
    :goto_0
    invoke-static {v2, p0, v0}, Ljava/net/Inet6Address;->getByAddress(Ljava/lang/String;[BLjava/net/NetworkInterface;)Ljava/net/Inet6Address;

    move-result-object p0
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1

    .line 158
    new-instance v0, Landroid/net/wifi/aware/WifiAwareNetworkInfo;

    invoke-direct {v0, p0, v1, p1}, Landroid/net/wifi/aware/WifiAwareNetworkInfo;-><init>(Ljava/net/Inet6Address;II)V

    return-object v0

    :catch_1
    move-exception p0

    .line 155
    invoke-virtual {p0}, Ljava/net/UnknownHostException;->printStackTrace()V

    .line 156
    new-instance p0, Landroid/net/wifi/aware/WifiAwareNetworkInfo;

    invoke-direct {p0}, Landroid/net/wifi/aware/WifiAwareNetworkInfo;-><init>()V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 136
    invoke-virtual {p0, p1}, Landroid/net/wifi/aware/WifiAwareNetworkInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/aware/WifiAwareNetworkInfo;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/net/wifi/aware/WifiAwareNetworkInfo;
    .locals 0

    .line 163
    new-array p0, p1, [Landroid/net/wifi/aware/WifiAwareNetworkInfo;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 136
    invoke-virtual {p0, p1}, Landroid/net/wifi/aware/WifiAwareNetworkInfo$1;->newArray(I)[Landroid/net/wifi/aware/WifiAwareNetworkInfo;

    move-result-object p0

    return-object p0
.end method

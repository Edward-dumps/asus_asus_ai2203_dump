.class Landroid/net/wifi/WifiManager$AddNetworkResult$1;
.super Ljava/lang/Object;
.source "WifiManager.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiManager$AddNetworkResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/WifiManager$AddNetworkResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1807
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiManager$AddNetworkResult;
    .locals 1

    .line 1809
    new-instance p0, Landroid/net/wifi/WifiManager$AddNetworkResult;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-direct {p0, v0, p1}, Landroid/net/wifi/WifiManager$AddNetworkResult;-><init>(II)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1807
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager$AddNetworkResult$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiManager$AddNetworkResult;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/net/wifi/WifiManager$AddNetworkResult;
    .locals 0

    .line 1813
    new-array p0, p1, [Landroid/net/wifi/WifiManager$AddNetworkResult;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1807
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager$AddNetworkResult$1;->newArray(I)[Landroid/net/wifi/WifiManager$AddNetworkResult;

    move-result-object p0

    return-object p0
.end method

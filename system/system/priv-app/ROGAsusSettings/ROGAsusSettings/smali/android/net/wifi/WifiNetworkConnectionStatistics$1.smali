.class Landroid/net/wifi/WifiNetworkConnectionStatistics$1;
.super Ljava/lang/Object;
.source "WifiNetworkConnectionStatistics.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiNetworkConnectionStatistics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/WifiNetworkConnectionStatistics;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiNetworkConnectionStatistics;
    .locals 1

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 78
    new-instance v0, Landroid/net/wifi/WifiNetworkConnectionStatistics;

    invoke-direct {v0, p0, p1}, Landroid/net/wifi/WifiNetworkConnectionStatistics;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 74
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiNetworkConnectionStatistics$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiNetworkConnectionStatistics;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/net/wifi/WifiNetworkConnectionStatistics;
    .locals 0

    .line 84
    new-array p0, p1, [Landroid/net/wifi/WifiNetworkConnectionStatistics;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 74
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiNetworkConnectionStatistics$1;->newArray(I)[Landroid/net/wifi/WifiNetworkConnectionStatistics;

    move-result-object p0

    return-object p0
.end method

.class Landroid/net/wifi/WifiScanner$ParcelableScanResults$1;
.super Ljava/lang/Object;
.source "WifiScanner.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiScanner$ParcelableScanResults;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/WifiScanner$ParcelableScanResults;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 864
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiScanner$ParcelableScanResults;
    .locals 3

    .line 866
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    .line 867
    new-array v0, p0, [Landroid/net/wifi/ScanResult;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    .line 869
    sget-object v2, Landroid/net/wifi/ScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 871
    :cond_0
    new-instance p0, Landroid/net/wifi/WifiScanner$ParcelableScanResults;

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiScanner$ParcelableScanResults;-><init>([Landroid/net/wifi/ScanResult;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 864
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiScanner$ParcelableScanResults$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiScanner$ParcelableScanResults;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/net/wifi/WifiScanner$ParcelableScanResults;
    .locals 0

    .line 875
    new-array p0, p1, [Landroid/net/wifi/WifiScanner$ParcelableScanResults;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 864
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiScanner$ParcelableScanResults$1;->newArray(I)[Landroid/net/wifi/WifiScanner$ParcelableScanResults;

    move-result-object p0

    return-object p0
.end method

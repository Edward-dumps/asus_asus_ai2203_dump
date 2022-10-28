.class Landroid/net/wifi/WifiScanner$ParcelableScanData$1;
.super Ljava/lang/Object;
.source "WifiScanner.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiScanner$ParcelableScanData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/WifiScanner$ParcelableScanData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 816
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiScanner$ParcelableScanData;
    .locals 3

    .line 818
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    .line 819
    new-array v0, p0, [Landroid/net/wifi/WifiScanner$ScanData;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    .line 821
    sget-object v2, Landroid/net/wifi/WifiScanner$ScanData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiScanner$ScanData;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 823
    :cond_0
    new-instance p0, Landroid/net/wifi/WifiScanner$ParcelableScanData;

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiScanner$ParcelableScanData;-><init>([Landroid/net/wifi/WifiScanner$ScanData;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 816
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiScanner$ParcelableScanData$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiScanner$ParcelableScanData;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/net/wifi/WifiScanner$ParcelableScanData;
    .locals 0

    .line 827
    new-array p0, p1, [Landroid/net/wifi/WifiScanner$ParcelableScanData;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 816
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiScanner$ParcelableScanData$1;->newArray(I)[Landroid/net/wifi/WifiScanner$ParcelableScanData;

    move-result-object p0

    return-object p0
.end method

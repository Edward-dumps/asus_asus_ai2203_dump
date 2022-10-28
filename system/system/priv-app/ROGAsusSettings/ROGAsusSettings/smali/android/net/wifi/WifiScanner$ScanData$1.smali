.class Landroid/net/wifi/WifiScanner$ScanData$1;
.super Ljava/lang/Object;
.source "WifiScanner.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiScanner$ScanData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/WifiScanner$ScanData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 767
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiScanner$ScanData;
    .locals 6

    .line 769
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 770
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 771
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 772
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 773
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 774
    const-class p0, Landroid/net/wifi/ScanResult;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-virtual {p1, v5, p0}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;)Ljava/util/List;

    .line 775
    new-instance p0, Landroid/net/wifi/WifiScanner$ScanData;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/net/wifi/WifiScanner$ScanData;-><init>(IIIILjava/util/List;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 767
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiScanner$ScanData$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiScanner$ScanData;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/net/wifi/WifiScanner$ScanData;
    .locals 0

    .line 779
    new-array p0, p1, [Landroid/net/wifi/WifiScanner$ScanData;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 767
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiScanner$ScanData$1;->newArray(I)[Landroid/net/wifi/WifiScanner$ScanData;

    move-result-object p0

    return-object p0
.end method

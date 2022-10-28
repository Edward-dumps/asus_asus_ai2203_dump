.class Landroid/net/wifi/BatchedScanResult$1;
.super Ljava/lang/Object;
.source "BatchedScanResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/BatchedScanResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/BatchedScanResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/BatchedScanResult;
    .locals 3

    .line 84
    new-instance p0, Landroid/net/wifi/BatchedScanResult;

    invoke-direct {p0}, Landroid/net/wifi/BatchedScanResult;-><init>()V

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Landroid/net/wifi/BatchedScanResult;->truncated:Z

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    :goto_1
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_1

    .line 88
    iget-object v0, p0, Landroid/net/wifi/BatchedScanResult;->scanResults:Ljava/util/List;

    sget-object v2, Landroid/net/wifi/ScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v1

    goto :goto_1

    :cond_1
    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 82
    invoke-virtual {p0, p1}, Landroid/net/wifi/BatchedScanResult$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/BatchedScanResult;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/net/wifi/BatchedScanResult;
    .locals 0

    .line 94
    new-array p0, p1, [Landroid/net/wifi/BatchedScanResult;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 82
    invoke-virtual {p0, p1}, Landroid/net/wifi/BatchedScanResult$1;->newArray(I)[Landroid/net/wifi/BatchedScanResult;

    move-result-object p0

    return-object p0
.end method

.class Landroid/net/wifi/WifiScanner$OperationResult$1;
.super Ljava/lang/Object;
.source "WifiScanner.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiScanner$OperationResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/WifiScanner$OperationResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1764
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiScanner$OperationResult;
    .locals 1

    .line 1766
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    .line 1767
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1768
    new-instance v0, Landroid/net/wifi/WifiScanner$OperationResult;

    invoke-direct {v0, p0, p1}, Landroid/net/wifi/WifiScanner$OperationResult;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1764
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiScanner$OperationResult$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiScanner$OperationResult;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/net/wifi/WifiScanner$OperationResult;
    .locals 0

    .line 1772
    new-array p0, p1, [Landroid/net/wifi/WifiScanner$OperationResult;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1764
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiScanner$OperationResult$1;->newArray(I)[Landroid/net/wifi/WifiScanner$OperationResult;

    move-result-object p0

    return-object p0
.end method

.class Landroid/net/wifi/ScanResult$InformationElement$1;
.super Ljava/lang/Object;
.source "ScanResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/ScanResult$InformationElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/ScanResult$InformationElement;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1024
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/ScanResult$InformationElement;
    .locals 1

    .line 1026
    new-instance p0, Landroid/net/wifi/ScanResult$InformationElement;

    invoke-direct {p0}, Landroid/net/wifi/ScanResult$InformationElement;-><init>()V

    .line 1027
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    .line 1028
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/ScanResult$InformationElement;->idExt:I

    .line 1029
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    iput-object p1, p0, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1024
    invoke-virtual {p0, p1}, Landroid/net/wifi/ScanResult$InformationElement$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/ScanResult$InformationElement;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/net/wifi/ScanResult$InformationElement;
    .locals 0

    .line 1034
    new-array p0, p1, [Landroid/net/wifi/ScanResult$InformationElement;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1024
    invoke-virtual {p0, p1}, Landroid/net/wifi/ScanResult$InformationElement$1;->newArray(I)[Landroid/net/wifi/ScanResult$InformationElement;

    move-result-object p0

    return-object p0
.end method

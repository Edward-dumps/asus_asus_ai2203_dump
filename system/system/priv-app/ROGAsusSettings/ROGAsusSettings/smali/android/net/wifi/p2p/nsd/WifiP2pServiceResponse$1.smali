.class Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse$1;
.super Ljava/lang/Object;
.source "WifiP2pServiceResponse.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;
    .locals 6

    .line 357
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 358
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 359
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    const/4 p0, 0x0

    .line 360
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 361
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_0

    .line 364
    new-array p0, v0, [B

    .line 365
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->readByteArray([B)V

    :cond_0
    move-object v5, p0

    const/4 p0, 0x1

    if-ne v1, p0, :cond_1

    .line 368
    invoke-static {v2, v3, v4, v5}, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->newInstance(IILandroid/net/wifi/p2p/WifiP2pDevice;[B)Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x2

    if-ne v1, p0, :cond_2

    .line 371
    invoke-static {v2, v3, v4, v5}, Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceResponse;->newInstance(IILandroid/net/wifi/p2p/WifiP2pDevice;[B)Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceResponse;

    move-result-object p0

    return-object p0

    .line 374
    :cond_2
    new-instance p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;-><init>(IIILandroid/net/wifi/p2p/WifiP2pDevice;[B)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 354
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;
    .locals 0

    .line 378
    new-array p0, p1, [Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 354
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse$1;->newArray(I)[Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;

    move-result-object p0

    return-object p0
.end method

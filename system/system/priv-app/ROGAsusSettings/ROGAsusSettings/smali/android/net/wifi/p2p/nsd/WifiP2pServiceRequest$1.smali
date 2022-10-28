.class Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest$1;
.super Ljava/lang/Object;
.source "WifiP2pServiceRequest.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;
    .locals 6

    .line 272
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 273
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 274
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 275
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 276
    new-instance p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;-><init>(IIILjava/lang/String;Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 270
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;
    .locals 0

    .line 280
    new-array p0, p1, [Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 270
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest$1;->newArray(I)[Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;

    move-result-object p0

    return-object p0
.end method

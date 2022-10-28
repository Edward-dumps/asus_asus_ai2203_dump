.class Landroid/net/wifi/p2p/WifiP2pConfig$1;
.super Ljava/lang/Object;
.source "WifiP2pConfig.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/WifiP2pConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/p2p/WifiP2pConfig;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/p2p/WifiP2pConfig;
    .locals 1

    .line 252
    new-instance p0, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>()V

    .line 253
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    const/4 v0, 0x0

    .line 254
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WpsInfo;

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    .line 255
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->groupOwnerIntent:I

    .line 256
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->netId:I

    .line 257
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->networkName:Ljava/lang/String;

    .line 258
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->passphrase:Ljava/lang/String;

    .line 259
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->groupOwnerBand:I

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 250
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pConfig$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/net/wifi/p2p/WifiP2pConfig;
    .locals 0

    .line 264
    new-array p0, p1, [Landroid/net/wifi/p2p/WifiP2pConfig;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 250
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pConfig$1;->newArray(I)[Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object p0

    return-object p0
.end method

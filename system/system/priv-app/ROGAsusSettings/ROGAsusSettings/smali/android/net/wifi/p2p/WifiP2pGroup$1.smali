.class Landroid/net/wifi/p2p/WifiP2pGroup$1;
.super Ljava/lang/Object;
.source "WifiP2pGroup.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/WifiP2pGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/p2p/WifiP2pGroup;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/p2p/WifiP2pGroup;
    .locals 4

    .line 352
    new-instance p0, Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pGroup;-><init>()V

    .line 353
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/p2p/WifiP2pGroup;->setNetworkName(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 354
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {p0, v1}, Landroid/net/wifi/p2p/WifiP2pGroup;->setOwner(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 355
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {p0, v3}, Landroid/net/wifi/p2p/WifiP2pGroup;->setIsGroupOwner(Z)V

    .line 356
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    :goto_1
    if-ge v2, v1, :cond_1

    .line 358
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {p0, v3}, Landroid/net/wifi/p2p/WifiP2pGroup;->addClient(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 360
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/p2p/WifiP2pGroup;->setPassphrase(Ljava/lang/String;)V

    .line 361
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/p2p/WifiP2pGroup;->setInterface(Ljava/lang/String;)V

    .line 362
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/p2p/WifiP2pGroup;->setNetworkId(I)V

    .line 363
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->setFrequency(I)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 350
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pGroup$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/net/wifi/p2p/WifiP2pGroup;
    .locals 0

    .line 368
    new-array p0, p1, [Landroid/net/wifi/p2p/WifiP2pGroup;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 350
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pGroup$1;->newArray(I)[Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object p0

    return-object p0
.end method

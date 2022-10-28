.class Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo$1;
.super Ljava/lang/Object;
.source "WifiP2pServiceInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;
    .locals 0

    .line 178
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 179
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 180
    new-instance p1, Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;

    invoke-direct {p1, p0}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;-><init>(Ljava/util/List;)V

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 175
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;
    .locals 0

    .line 184
    new-array p0, p1, [Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 175
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo$1;->newArray(I)[Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;

    move-result-object p0

    return-object p0
.end method

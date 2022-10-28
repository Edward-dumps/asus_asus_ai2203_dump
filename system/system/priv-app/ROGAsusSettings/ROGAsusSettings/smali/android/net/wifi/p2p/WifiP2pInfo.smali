.class public Landroid/net/wifi/p2p/WifiP2pInfo;
.super Ljava/lang/Object;
.source "WifiP2pInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/p2p/WifiP2pInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public groupFormed:Z

.field public groupOwnerAddress:Ljava/net/InetAddress;

.field public isGroupOwner:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 80
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pInfo$1;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pInfo$1;-><init>()V

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 45
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "groupFormed: "

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v1, p0, Landroid/net/wifi/p2p/WifiP2pInfo;->groupFormed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v1, " isGroupOwner: "

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v1, p0, Landroid/net/wifi/p2p/WifiP2pInfo;->isGroupOwner:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v1, " groupOwnerAddress: "

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Landroid/net/wifi/p2p/WifiP2pInfo;->groupOwnerAddress:Ljava/net/InetAddress;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 68
    iget-boolean p2, p0, Landroid/net/wifi/p2p/WifiP2pInfo;->groupFormed:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 69
    iget-boolean p2, p0, Landroid/net/wifi/p2p/WifiP2pInfo;->isGroupOwner:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 71
    iget-object p2, p0, Landroid/net/wifi/p2p/WifiP2pInfo;->groupOwnerAddress:Ljava/net/InetAddress;

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    .line 72
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 73
    iget-object p0, p0, Landroid/net/wifi/p2p/WifiP2pInfo;->groupOwnerAddress:Ljava/net/InetAddress;

    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 75
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByte(B)V

    :goto_0
    return-void
.end method

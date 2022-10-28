.class Landroid/net/wifi/WifiNetworkAgentSpecifier$1;
.super Ljava/lang/Object;
.source "WifiNetworkAgentSpecifier.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiNetworkAgentSpecifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/WifiNetworkAgentSpecifier;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiNetworkAgentSpecifier;
    .locals 2

    const/4 p0, 0x0

    .line 78
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiConfiguration;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 81
    new-instance v1, Landroid/net/wifi/WifiNetworkAgentSpecifier;

    invoke-direct {v1, p0, v0, p1}, Landroid/net/wifi/WifiNetworkAgentSpecifier;-><init>(Landroid/net/wifi/WifiConfiguration;IZ)V

    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 75
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiNetworkAgentSpecifier$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiNetworkAgentSpecifier;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/net/wifi/WifiNetworkAgentSpecifier;
    .locals 0

    .line 87
    new-array p0, p1, [Landroid/net/wifi/WifiNetworkAgentSpecifier;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 75
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiNetworkAgentSpecifier$1;->newArray(I)[Landroid/net/wifi/WifiNetworkAgentSpecifier;

    move-result-object p0

    return-object p0
.end method

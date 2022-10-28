.class Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier$1;
.super Ljava/lang/Object;
.source "WifiAwareAgentNetworkSpecifier.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;
    .locals 4

    .line 83
    new-instance p0, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;

    invoke-direct {p0}, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;-><init>()V

    const/4 v0, 0x0

    .line 84
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArray(Ljava/lang/ClassLoader;)[Ljava/lang/Object;

    move-result-object p1

    .line 85
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 86
    invoke-static {p0}, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;->access$000(Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;)Ljava/util/Set;

    move-result-object v3

    check-cast v2, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier$ByteArrayWrapper;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 80
    invoke-virtual {p0, p1}, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;
    .locals 0

    .line 93
    new-array p0, p1, [Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 80
    invoke-virtual {p0, p1}, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier$1;->newArray(I)[Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;

    move-result-object p0

    return-object p0
.end method

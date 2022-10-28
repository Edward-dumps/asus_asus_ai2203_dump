.class Landroid/net/wifi/WifiNetworkSpecifier$1;
.super Ljava/lang/Object;
.source "WifiNetworkSpecifier.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiNetworkSpecifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/WifiNetworkSpecifier;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 689
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiNetworkSpecifier;
    .locals 3

    const/4 p0, 0x0

    .line 692
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/PatternMatcher;

    .line 693
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/MacAddress;

    .line 694
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/MacAddress;

    .line 696
    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 697
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 698
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiConfiguration;

    .line 699
    new-instance p1, Landroid/net/wifi/WifiNetworkSpecifier;

    invoke-direct {p1, v0, v1, v2, p0}, Landroid/net/wifi/WifiNetworkSpecifier;-><init>(Landroid/os/PatternMatcher;Landroid/util/Pair;ILandroid/net/wifi/WifiConfiguration;)V

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 689
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiNetworkSpecifier$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiNetworkSpecifier;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/net/wifi/WifiNetworkSpecifier;
    .locals 0

    .line 705
    new-array p0, p1, [Landroid/net/wifi/WifiNetworkSpecifier;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 689
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiNetworkSpecifier$1;->newArray(I)[Landroid/net/wifi/WifiNetworkSpecifier;

    move-result-object p0

    return-object p0
.end method

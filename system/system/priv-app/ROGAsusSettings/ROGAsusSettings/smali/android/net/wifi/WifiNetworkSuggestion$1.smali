.class Landroid/net/wifi/WifiNetworkSuggestion$1;
.super Ljava/lang/Object;
.source "WifiNetworkSuggestion.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiNetworkSuggestion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/WifiNetworkSuggestion;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiNetworkSuggestion;
    .locals 8

    .line 1250
    new-instance p0, Landroid/net/wifi/WifiNetworkSuggestion;

    const/4 v0, 0x0

    .line 1251
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 1252
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/net/wifi/hotspot2/PasspointConfiguration;

    .line 1253
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1254
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 1255
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 1256
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    .line 1257
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Landroid/net/wifi/WifiNetworkSuggestion;-><init>(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/hotspot2/PasspointConfiguration;ZZZZI)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1247
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiNetworkSuggestion$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiNetworkSuggestion;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/net/wifi/WifiNetworkSuggestion;
    .locals 0

    .line 1263
    new-array p0, p1, [Landroid/net/wifi/WifiNetworkSuggestion;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1247
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiNetworkSuggestion$1;->newArray(I)[Landroid/net/wifi/WifiNetworkSuggestion;

    move-result-object p0

    return-object p0
.end method

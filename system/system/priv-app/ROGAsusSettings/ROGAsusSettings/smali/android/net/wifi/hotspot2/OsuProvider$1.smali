.class Landroid/net/wifi/hotspot2/OsuProvider$1;
.super Ljava/lang/Object;
.source "OsuProvider.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/hotspot2/OsuProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/hotspot2/OsuProvider;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/hotspot2/OsuProvider;
    .locals 8

    const/4 p0, 0x0

    .line 252
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/net/wifi/WifiSsid;

    .line 253
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 254
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/net/Uri;

    .line 255
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 256
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 257
    invoke-virtual {p1, v7, p0}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 258
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "friendlyNameMap"

    .line 259
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Ljava/util/HashMap;

    .line 261
    new-instance p0, Landroid/net/wifi/hotspot2/OsuProvider;

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Landroid/net/wifi/hotspot2/OsuProvider;-><init>(Landroid/net/wifi/WifiSsid;Ljava/util/Map;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 249
    invoke-virtual {p0, p1}, Landroid/net/wifi/hotspot2/OsuProvider$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/hotspot2/OsuProvider;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/net/wifi/hotspot2/OsuProvider;
    .locals 0

    .line 267
    new-array p0, p1, [Landroid/net/wifi/hotspot2/OsuProvider;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 249
    invoke-virtual {p0, p1}, Landroid/net/wifi/hotspot2/OsuProvider$1;->newArray(I)[Landroid/net/wifi/hotspot2/OsuProvider;

    move-result-object p0

    return-object p0
.end method

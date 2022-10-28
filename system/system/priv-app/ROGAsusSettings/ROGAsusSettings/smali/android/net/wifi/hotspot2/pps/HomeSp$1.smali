.class Landroid/net/wifi/hotspot2/pps/HomeSp$1;
.super Ljava/lang/Object;
.source "HomeSp.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/hotspot2/pps/HomeSp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/hotspot2/pps/HomeSp;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 425
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private readHomeNetworkIds(Landroid/os/Parcel;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 452
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p0, v1, :cond_0

    return-object v0

    .line 456
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, p0}, Ljava/util/HashMap;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_2

    .line 458
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 460
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v6, v4, v6

    if-eqz v6, :cond_1

    .line 462
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v0

    .line 464
    :goto_1
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/hotspot2/pps/HomeSp;
    .locals 2

    .line 428
    new-instance v0, Landroid/net/wifi/hotspot2/pps/HomeSp;

    invoke-direct {v0}, Landroid/net/wifi/hotspot2/pps/HomeSp;-><init>()V

    .line 429
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/HomeSp;->setFqdn(Ljava/lang/String;)V

    .line 430
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/HomeSp;->setFriendlyName(Ljava/lang/String;)V

    .line 431
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/hotspot2/pps/HomeSp;->setIconUrl(Ljava/lang/String;)V

    .line 432
    invoke-direct {p0, p1}, Landroid/net/wifi/hotspot2/pps/HomeSp$1;->readHomeNetworkIds(Landroid/os/Parcel;)Ljava/util/Map;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/net/wifi/hotspot2/pps/HomeSp;->setHomeNetworkIds(Ljava/util/Map;)V

    .line 433
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/net/wifi/hotspot2/pps/HomeSp;->setMatchAllOis([J)V

    .line 434
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/net/wifi/hotspot2/pps/HomeSp;->setMatchAnyOis([J)V

    .line 435
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/net/wifi/hotspot2/pps/HomeSp;->setOtherHomePartners([Ljava/lang/String;)V

    .line 436
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/net/wifi/hotspot2/pps/HomeSp;->setRoamingConsortiumOis([J)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 425
    invoke-virtual {p0, p1}, Landroid/net/wifi/hotspot2/pps/HomeSp$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/hotspot2/pps/HomeSp;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/net/wifi/hotspot2/pps/HomeSp;
    .locals 0

    .line 442
    new-array p0, p1, [Landroid/net/wifi/hotspot2/pps/HomeSp;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 425
    invoke-virtual {p0, p1}, Landroid/net/wifi/hotspot2/pps/HomeSp$1;->newArray(I)[Landroid/net/wifi/hotspot2/pps/HomeSp;

    move-result-object p0

    return-object p0
.end method

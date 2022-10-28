.class public final Landroid/net/wifi/hotspot2/pps/HomeSp;
.super Ljava/lang/Object;
.source "HomeSp.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/hotspot2/pps/HomeSp;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mFqdn:Ljava/lang/String;

.field private mFriendlyName:Ljava/lang/String;

.field private mHomeNetworkIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mIconUrl:Ljava/lang/String;

.field private mMatchAllOis:[J

.field private mMatchAnyOis:[J

.field private mOtherHomePartners:[Ljava/lang/String;

.field private mRoamingConsortiumOis:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 424
    new-instance v0, Landroid/net/wifi/hotspot2/pps/HomeSp$1;

    invoke-direct {v0}, Landroid/net/wifi/hotspot2/pps/HomeSp$1;-><init>()V

    sput-object v0, Landroid/net/wifi/hotspot2/pps/HomeSp;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mFqdn:Ljava/lang/String;

    .line 78
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mFriendlyName:Ljava/lang/String;

    .line 99
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mIconUrl:Ljava/lang/String;

    .line 120
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mHomeNetworkIds:Ljava/util/Map;

    .line 144
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mMatchAllOis:[J

    .line 182
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mMatchAnyOis:[J

    .line 212
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mOtherHomePartners:[Ljava/lang/String;

    .line 268
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mRoamingConsortiumOis:[J

    return-void
.end method

.method private static writeHomeNetworkIds(Landroid/os/Parcel;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, -0x1

    .line 478
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    .line 481
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 482
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 483
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 484
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    const-wide/16 v0, -0x1

    .line 485
    invoke-virtual {p0, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_0

    .line 487
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 346
    :cond_0
    instance-of v1, p1, Landroid/net/wifi/hotspot2/pps/HomeSp;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 349
    :cond_1
    check-cast p1, Landroid/net/wifi/hotspot2/pps/HomeSp;

    .line 351
    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mFqdn:Ljava/lang/String;

    iget-object v3, p1, Landroid/net/wifi/hotspot2/pps/HomeSp;->mFqdn:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mFriendlyName:Ljava/lang/String;

    iget-object v3, p1, Landroid/net/wifi/hotspot2/pps/HomeSp;->mFriendlyName:Ljava/lang/String;

    .line 352
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mIconUrl:Ljava/lang/String;

    iget-object v3, p1, Landroid/net/wifi/hotspot2/pps/HomeSp;->mIconUrl:Ljava/lang/String;

    .line 353
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mHomeNetworkIds:Ljava/util/Map;

    if-nez v1, :cond_2

    iget-object v1, p1, Landroid/net/wifi/hotspot2/pps/HomeSp;->mHomeNetworkIds:Ljava/util/Map;

    if-nez v1, :cond_3

    goto :goto_0

    :cond_2
    iget-object v3, p1, Landroid/net/wifi/hotspot2/pps/HomeSp;->mHomeNetworkIds:Ljava/util/Map;

    .line 355
    invoke-interface {v1, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_0
    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mMatchAllOis:[J

    iget-object v3, p1, Landroid/net/wifi/hotspot2/pps/HomeSp;->mMatchAllOis:[J

    .line 356
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mMatchAnyOis:[J

    iget-object v3, p1, Landroid/net/wifi/hotspot2/pps/HomeSp;->mMatchAnyOis:[J

    .line 357
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mOtherHomePartners:[Ljava/lang/String;

    iget-object v3, p1, Landroid/net/wifi/hotspot2/pps/HomeSp;->mOtherHomePartners:[Ljava/lang/String;

    .line 358
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object p0, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mRoamingConsortiumOis:[J

    iget-object p1, p1, Landroid/net/wifi/hotspot2/pps/HomeSp;->mRoamingConsortiumOis:[J

    .line 359
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    move v0, v2

    :goto_1
    return v0
.end method

.method public getFqdn()Ljava/lang/String;
    .locals 0

    .line 72
    iget-object p0, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mFqdn:Ljava/lang/String;

    return-object p0
.end method

.method public getFriendlyName()Ljava/lang/String;
    .locals 0

    .line 93
    iget-object p0, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mFriendlyName:Ljava/lang/String;

    return-object p0
.end method

.method public getUniqueId()I
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 378
    iget-object p0, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mFqdn:Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    .line 364
    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mFqdn:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mFriendlyName:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mIconUrl:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mHomeNetworkIds:Ljava/util/Map;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mMatchAllOis:[J

    .line 365
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([J)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mMatchAnyOis:[J

    .line 366
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([J)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mOtherHomePartners:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object p0, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mRoamingConsortiumOis:[J

    .line 367
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([J)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x7

    aput-object p0, v0, v1

    .line 364
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public setFqdn(Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mFqdn:Ljava/lang/String;

    return-void
.end method

.method public setFriendlyName(Ljava/lang/String;)V
    .locals 0

    .line 85
    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mFriendlyName:Ljava/lang/String;

    return-void
.end method

.method public setHomeNetworkIds(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 125
    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mHomeNetworkIds:Ljava/util/Map;

    return-void
.end method

.method public setIconUrl(Ljava/lang/String;)V
    .locals 0

    .line 104
    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mIconUrl:Ljava/lang/String;

    return-void
.end method

.method public setMatchAllOis([J)V
    .locals 0

    .line 155
    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mMatchAllOis:[J

    return-void
.end method

.method public setMatchAnyOis([J)V
    .locals 0

    .line 193
    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mMatchAnyOis:[J

    return-void
.end method

.method public setOtherHomePartners([Ljava/lang/String;)V
    .locals 0

    .line 222
    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mOtherHomePartners:[Ljava/lang/String;

    return-void
.end method

.method public setRoamingConsortiumOis([J)V
    .locals 0

    .line 276
    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mRoamingConsortiumOis:[J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FQDN: "

    .line 385
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mFqdn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "FriendlyName: "

    .line 386
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mFriendlyName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "IconURL: "

    .line 387
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mIconUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "HomeNetworkIDs: "

    .line 388
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mHomeNetworkIds:Ljava/util/Map;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "MatchAllOIs: "

    .line 389
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mMatchAllOis:[J

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "MatchAnyOIs: "

    .line 390
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mMatchAnyOis:[J

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "OtherHomePartners: "

    .line 391
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mOtherHomePartners:[Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "RoamingConsortiumOIs: "

    .line 392
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mRoamingConsortiumOis:[J

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 331
    iget-object p2, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mFqdn:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 332
    iget-object p2, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mFriendlyName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 333
    iget-object p2, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mIconUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 334
    iget-object p2, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mHomeNetworkIds:Ljava/util/Map;

    invoke-static {p1, p2}, Landroid/net/wifi/hotspot2/pps/HomeSp;->writeHomeNetworkIds(Landroid/os/Parcel;Ljava/util/Map;)V

    .line 335
    iget-object p2, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mMatchAllOis:[J

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 336
    iget-object p2, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mMatchAnyOis:[J

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 337
    iget-object p2, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mOtherHomePartners:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 338
    iget-object p0, p0, Landroid/net/wifi/hotspot2/pps/HomeSp;->mRoamingConsortiumOis:[J

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeLongArray([J)V

    return-void
.end method

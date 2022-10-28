.class public final Landroid/net/wifi/rtt/RangingRequest;
.super Ljava/lang/Object;
.source "RangingRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/rtt/RangingRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mRttBurstSize:I

.field public final mRttPeers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/rtt/ResponderConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 138
    new-instance v0, Landroid/net/wifi/rtt/RangingRequest$1;

    invoke-direct {v0}, Landroid/net/wifi/rtt/RangingRequest$1;-><init>()V

    sput-object v0, Landroid/net/wifi/rtt/RangingRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/rtt/ResponderConfig;",
            ">;I)V"
        }
    .end annotation

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Landroid/net/wifi/rtt/RangingRequest;->mRttPeers:Ljava/util/List;

    .line 102
    iput p2, p0, Landroid/net/wifi/rtt/RangingRequest;->mRttBurstSize:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;ILandroid/net/wifi/rtt/RangingRequest$1;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Landroid/net/wifi/rtt/RangingRequest;-><init>(Ljava/util/List;I)V

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

    .line 414
    :cond_0
    instance-of v1, p1, Landroid/net/wifi/rtt/RangingRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 418
    :cond_1
    check-cast p1, Landroid/net/wifi/rtt/RangingRequest;

    .line 420
    iget-object v1, p0, Landroid/net/wifi/rtt/RangingRequest;->mRttPeers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v3, p1, Landroid/net/wifi/rtt/RangingRequest;->mRttPeers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Landroid/net/wifi/rtt/RangingRequest;->mRttPeers:Ljava/util/List;

    iget-object v3, p1, Landroid/net/wifi/rtt/RangingRequest;->mRttPeers:Ljava/util/List;

    .line 421
    invoke-interface {v1, v3}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget p0, p0, Landroid/net/wifi/rtt/RangingRequest;->mRttBurstSize:I

    iget p1, p1, Landroid/net/wifi/rtt/RangingRequest;->mRttBurstSize:I

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 427
    iget-object v1, p0, Landroid/net/wifi/rtt/RangingRequest;->mRttPeers:Ljava/util/List;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget p0, p0, Landroid/net/wifi/rtt/RangingRequest;->mRttBurstSize:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 153
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, ", "

    const-string v2, "RangingRequest: mRttPeers=["

    const-string v3, "]"

    invoke-direct {v0, v1, v2, v3}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 154
    iget-object p0, p0, Landroid/net/wifi/rtt/RangingRequest;->mRttPeers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/rtt/ResponderConfig;

    .line 155
    invoke-virtual {v1}, Landroid/net/wifi/rtt/ResponderConfig;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_0

    .line 157
    :cond_0
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 134
    iget-object p2, p0, Landroid/net/wifi/rtt/RangingRequest;->mRttPeers:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 135
    iget p0, p0, Landroid/net/wifi/rtt/RangingRequest;->mRttBurstSize:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

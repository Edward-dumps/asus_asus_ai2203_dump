.class Landroid/net/wifi/RttManager$RttCapabilities$1;
.super Ljava/lang/Object;
.source "RttManager.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/RttManager$RttCapabilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/RttManager$RttCapabilities;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/RttManager$RttCapabilities;
    .locals 3

    .line 300
    new-instance p0, Landroid/net/wifi/RttManager$RttCapabilities;

    invoke-direct {p0}, Landroid/net/wifi/RttManager$RttCapabilities;-><init>()V

    .line 301
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/net/wifi/RttManager$RttCapabilities;->oneSidedRttSupported:Z

    .line 302
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Landroid/net/wifi/RttManager$RttCapabilities;->twoSided11McRttSupported:Z

    .line 303
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    iput-boolean v0, p0, Landroid/net/wifi/RttManager$RttCapabilities;->lciSupported:Z

    .line 304
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_3

    move v0, v2

    goto :goto_3

    :cond_3
    move v0, v1

    :goto_3
    iput-boolean v0, p0, Landroid/net/wifi/RttManager$RttCapabilities;->lcrSupported:Z

    .line 305
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/RttManager$RttCapabilities;->preambleSupported:I

    .line 306
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/RttManager$RttCapabilities;->bwSupported:I

    .line 307
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_4

    move v0, v2

    goto :goto_4

    :cond_4
    move v0, v1

    :goto_4
    iput-boolean v0, p0, Landroid/net/wifi/RttManager$RttCapabilities;->responderSupported:Z

    .line 308
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_5

    move v1, v2

    :cond_5
    iput-boolean v1, p0, Landroid/net/wifi/RttManager$RttCapabilities;->secureRttSupported:Z

    .line 309
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/net/wifi/RttManager$RttCapabilities;->mcVersion:I

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 297
    invoke-virtual {p0, p1}, Landroid/net/wifi/RttManager$RttCapabilities$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/RttManager$RttCapabilities;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/net/wifi/RttManager$RttCapabilities;
    .locals 0

    .line 315
    new-array p0, p1, [Landroid/net/wifi/RttManager$RttCapabilities;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 297
    invoke-virtual {p0, p1}, Landroid/net/wifi/RttManager$RttCapabilities$1;->newArray(I)[Landroid/net/wifi/RttManager$RttCapabilities;

    move-result-object p0

    return-object p0
.end method

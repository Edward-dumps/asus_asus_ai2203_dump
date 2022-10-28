.class Landroid/net/wifi/RttManager$ParcelableRttParams$1;
.super Ljava/lang/Object;
.source "RttManager.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/RttManager$ParcelableRttParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/RttManager$ParcelableRttParams;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 561
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/RttManager$ParcelableRttParams;
    .locals 6

    .line 565
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    .line 566
    new-array v0, p0, [Landroid/net/wifi/RttManager$RttParams;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p0, :cond_3

    .line 568
    new-instance v3, Landroid/net/wifi/RttManager$RttParams;

    invoke-direct {v3}, Landroid/net/wifi/RttManager$RttParams;-><init>()V

    aput-object v3, v0, v2

    .line 569
    aget-object v3, v0, v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Landroid/net/wifi/RttManager$RttParams;->deviceType:I

    .line 570
    aget-object v3, v0, v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Landroid/net/wifi/RttManager$RttParams;->requestType:I

    .line 571
    aget-object v3, v0, v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    move v4, v5

    goto :goto_1

    :cond_0
    move v4, v1

    :goto_1
    iput-boolean v4, v3, Landroid/net/wifi/RttManager$RttParams;->secure:Z

    .line 572
    aget-object v3, v0, v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/net/wifi/RttManager$RttParams;->bssid:Ljava/lang/String;

    .line 573
    aget-object v3, v0, v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Landroid/net/wifi/RttManager$RttParams;->channelWidth:I

    .line 574
    aget-object v3, v0, v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Landroid/net/wifi/RttManager$RttParams;->frequency:I

    .line 575
    aget-object v3, v0, v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Landroid/net/wifi/RttManager$RttParams;->centerFreq0:I

    .line 576
    aget-object v3, v0, v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Landroid/net/wifi/RttManager$RttParams;->centerFreq1:I

    .line 577
    aget-object v3, v0, v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Landroid/net/wifi/RttManager$RttParams;->numberBurst:I

    .line 578
    aget-object v3, v0, v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Landroid/net/wifi/RttManager$RttParams;->interval:I

    .line 579
    aget-object v3, v0, v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Landroid/net/wifi/RttManager$RttParams;->numSamplesPerBurst:I

    .line 580
    aget-object v3, v0, v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Landroid/net/wifi/RttManager$RttParams;->numRetriesPerMeasurementFrame:I

    .line 581
    aget-object v3, v0, v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Landroid/net/wifi/RttManager$RttParams;->numRetriesPerFTMR:I

    .line 582
    aget-object v3, v0, v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v4, v5, :cond_1

    move v4, v5

    goto :goto_2

    :cond_1
    move v4, v1

    :goto_2
    iput-boolean v4, v3, Landroid/net/wifi/RttManager$RttParams;->LCIRequest:Z

    .line 583
    aget-object v3, v0, v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v4, v5, :cond_2

    goto :goto_3

    :cond_2
    move v5, v1

    :goto_3
    iput-boolean v5, v3, Landroid/net/wifi/RttManager$RttParams;->LCRRequest:Z

    .line 584
    aget-object v3, v0, v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Landroid/net/wifi/RttManager$RttParams;->burstTimeout:I

    .line 585
    aget-object v3, v0, v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Landroid/net/wifi/RttManager$RttParams;->preamble:I

    .line 586
    aget-object v3, v0, v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Landroid/net/wifi/RttManager$RttParams;->bandwidth:I

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 589
    :cond_3
    new-instance p0, Landroid/net/wifi/RttManager$ParcelableRttParams;

    invoke-direct {p0, v0}, Landroid/net/wifi/RttManager$ParcelableRttParams;-><init>([Landroid/net/wifi/RttManager$RttParams;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 561
    invoke-virtual {p0, p1}, Landroid/net/wifi/RttManager$ParcelableRttParams$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/RttManager$ParcelableRttParams;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/net/wifi/RttManager$ParcelableRttParams;
    .locals 0

    .line 595
    new-array p0, p1, [Landroid/net/wifi/RttManager$ParcelableRttParams;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 561
    invoke-virtual {p0, p1}, Landroid/net/wifi/RttManager$ParcelableRttParams$1;->newArray(I)[Landroid/net/wifi/RttManager$ParcelableRttParams;

    move-result-object p0

    return-object p0
.end method

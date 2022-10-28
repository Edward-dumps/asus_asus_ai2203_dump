.class public Landroid/net/wifi/RttManager$ParcelableRttParams;
.super Ljava/lang/Object;
.source "RttManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/RttManager$ParcelableRttParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mParams:[Landroid/net/wifi/RttManager$RttParams;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 560
    new-instance v0, Landroid/net/wifi/RttManager$ParcelableRttParams$1;

    invoke-direct {v0}, Landroid/net/wifi/RttManager$ParcelableRttParams$1;-><init>()V

    sput-object v0, Landroid/net/wifi/RttManager$ParcelableRttParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>([Landroid/net/wifi/RttManager$RttParams;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 522
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Landroid/net/wifi/RttManager$RttParams;

    .line 523
    :cond_0
    iput-object p1, p0, Landroid/net/wifi/RttManager$ParcelableRttParams;->mParams:[Landroid/net/wifi/RttManager$RttParams;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 535
    iget-object p2, p0, Landroid/net/wifi/RttManager$ParcelableRttParams;->mParams:[Landroid/net/wifi/RttManager$RttParams;

    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 537
    iget-object p0, p0, Landroid/net/wifi/RttManager$ParcelableRttParams;->mParams:[Landroid/net/wifi/RttManager$RttParams;

    array-length p2, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    aget-object v1, p0, v0

    .line 538
    iget v2, v1, Landroid/net/wifi/RttManager$RttParams;->deviceType:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 539
    iget v2, v1, Landroid/net/wifi/RttManager$RttParams;->requestType:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 540
    iget-boolean v2, v1, Landroid/net/wifi/RttManager$RttParams;->secure:Z

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 541
    iget-object v2, v1, Landroid/net/wifi/RttManager$RttParams;->bssid:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 542
    iget v2, v1, Landroid/net/wifi/RttManager$RttParams;->channelWidth:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 543
    iget v2, v1, Landroid/net/wifi/RttManager$RttParams;->frequency:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 544
    iget v2, v1, Landroid/net/wifi/RttManager$RttParams;->centerFreq0:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 545
    iget v2, v1, Landroid/net/wifi/RttManager$RttParams;->centerFreq1:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 546
    iget v2, v1, Landroid/net/wifi/RttManager$RttParams;->numberBurst:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 547
    iget v2, v1, Landroid/net/wifi/RttManager$RttParams;->interval:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 548
    iget v2, v1, Landroid/net/wifi/RttManager$RttParams;->numSamplesPerBurst:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 549
    iget v2, v1, Landroid/net/wifi/RttManager$RttParams;->numRetriesPerMeasurementFrame:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 550
    iget v2, v1, Landroid/net/wifi/RttManager$RttParams;->numRetriesPerFTMR:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 551
    iget-boolean v2, v1, Landroid/net/wifi/RttManager$RttParams;->LCIRequest:Z

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 552
    iget-boolean v2, v1, Landroid/net/wifi/RttManager$RttParams;->LCRRequest:Z

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 553
    iget v2, v1, Landroid/net/wifi/RttManager$RttParams;->burstTimeout:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 554
    iget v2, v1, Landroid/net/wifi/RttManager$RttParams;->preamble:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 555
    iget v1, v1, Landroid/net/wifi/RttManager$RttParams;->bandwidth:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

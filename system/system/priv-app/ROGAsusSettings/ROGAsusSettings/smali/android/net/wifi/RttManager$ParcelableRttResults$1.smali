.class Landroid/net/wifi/RttManager$ParcelableRttResults$1;
.super Ljava/lang/Object;
.source "RttManager.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/RttManager$ParcelableRttResults;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/RttManager$ParcelableRttResults;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 864
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/RttManager$ParcelableRttResults;
    .locals 6

    .line 868
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    if-nez p0, :cond_0

    .line 871
    new-instance p0, Landroid/net/wifi/RttManager$ParcelableRttResults;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/net/wifi/RttManager$ParcelableRttResults;-><init>([Landroid/net/wifi/RttManager$RttResult;)V

    return-object p0

    .line 874
    :cond_0
    new-array v0, p0, [Landroid/net/wifi/RttManager$RttResult;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p0, :cond_4

    .line 876
    new-instance v3, Landroid/net/wifi/RttManager$RttResult;

    invoke-direct {v3}, Landroid/net/wifi/RttManager$RttResult;-><init>()V

    aput-object v3, v0, v2

    .line 877
    aget-object v3, v0, v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/net/wifi/RttManager$RttResult;->bssid:Ljava/lang/String;

    .line 878
    aget-object v3, v0, v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Landroid/net/wifi/RttManager$RttResult;->burstNumber:I

    .line 879
    aget-object v3, v0, v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Landroid/net/wifi/RttManager$RttResult;->measurementFrameNumber:I

    .line 880
    aget-object v3, v0, v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Landroid/net/wifi/RttManager$RttResult;->successMeasurementFrameNumber:I

    .line 881
    aget-object v3, v0, v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Landroid/net/wifi/RttManager$RttResult;->frameNumberPerBurstPeer:I

    .line 882
    aget-object v3, v0, v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Landroid/net/wifi/RttManager$RttResult;->status:I

    .line 883
    aget-object v3, v0, v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Landroid/net/wifi/RttManager$RttResult;->measurementType:I

    .line 884
    aget-object v3, v0, v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Landroid/net/wifi/RttManager$RttResult;->retryAfterDuration:I

    .line 885
    aget-object v3, v0, v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, v3, Landroid/net/wifi/RttManager$RttResult;->ts:J

    .line 886
    aget-object v3, v0, v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Landroid/net/wifi/RttManager$RttResult;->rssi:I

    .line 887
    aget-object v3, v0, v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Landroid/net/wifi/RttManager$RttResult;->rssiSpread:I

    .line 888
    aget-object v3, v0, v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Landroid/net/wifi/RttManager$RttResult;->txRate:I

    .line 889
    aget-object v3, v0, v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, v3, Landroid/net/wifi/RttManager$RttResult;->rtt:J

    .line 890
    aget-object v3, v0, v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, v3, Landroid/net/wifi/RttManager$RttResult;->rttStandardDeviation:J

    .line 891
    aget-object v3, v0, v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, v3, Landroid/net/wifi/RttManager$RttResult;->rttSpread:J

    .line 892
    aget-object v3, v0, v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Landroid/net/wifi/RttManager$RttResult;->distance:I

    .line 893
    aget-object v3, v0, v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Landroid/net/wifi/RttManager$RttResult;->distanceStandardDeviation:I

    .line 894
    aget-object v3, v0, v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Landroid/net/wifi/RttManager$RttResult;->distanceSpread:I

    .line 895
    aget-object v3, v0, v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Landroid/net/wifi/RttManager$RttResult;->burstDuration:I

    .line 896
    aget-object v3, v0, v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Landroid/net/wifi/RttManager$RttResult;->negotiatedBurstNum:I

    .line 897
    aget-object v3, v0, v2

    new-instance v4, Landroid/net/wifi/RttManager$WifiInformationElement;

    invoke-direct {v4}, Landroid/net/wifi/RttManager$WifiInformationElement;-><init>()V

    iput-object v4, v3, Landroid/net/wifi/RttManager$RttResult;->LCI:Landroid/net/wifi/RttManager$WifiInformationElement;

    .line 898
    aget-object v3, v0, v2

    iget-object v3, v3, Landroid/net/wifi/RttManager$RttResult;->LCI:Landroid/net/wifi/RttManager$WifiInformationElement;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v4

    iput-byte v4, v3, Landroid/net/wifi/RttManager$WifiInformationElement;->id:B

    .line 899
    aget-object v3, v0, v2

    iget-object v3, v3, Landroid/net/wifi/RttManager$RttResult;->LCI:Landroid/net/wifi/RttManager$WifiInformationElement;

    iget-byte v3, v3, Landroid/net/wifi/RttManager$WifiInformationElement;->id:B

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 900
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    .line 901
    aget-object v5, v0, v2

    iget-object v5, v5, Landroid/net/wifi/RttManager$RttResult;->LCI:Landroid/net/wifi/RttManager$WifiInformationElement;

    new-array v3, v3, [B

    iput-object v3, v5, Landroid/net/wifi/RttManager$WifiInformationElement;->data:[B

    .line 902
    aget-object v3, v0, v2

    iget-object v3, v3, Landroid/net/wifi/RttManager$RttResult;->LCI:Landroid/net/wifi/RttManager$WifiInformationElement;

    iget-object v3, v3, Landroid/net/wifi/RttManager$WifiInformationElement;->data:[B

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readByteArray([B)V

    .line 904
    :cond_1
    aget-object v3, v0, v2

    new-instance v5, Landroid/net/wifi/RttManager$WifiInformationElement;

    invoke-direct {v5}, Landroid/net/wifi/RttManager$WifiInformationElement;-><init>()V

    iput-object v5, v3, Landroid/net/wifi/RttManager$RttResult;->LCR:Landroid/net/wifi/RttManager$WifiInformationElement;

    .line 905
    aget-object v3, v0, v2

    iget-object v3, v3, Landroid/net/wifi/RttManager$RttResult;->LCR:Landroid/net/wifi/RttManager$WifiInformationElement;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v5

    iput-byte v5, v3, Landroid/net/wifi/RttManager$WifiInformationElement;->id:B

    .line 906
    aget-object v3, v0, v2

    iget-object v3, v3, Landroid/net/wifi/RttManager$RttResult;->LCR:Landroid/net/wifi/RttManager$WifiInformationElement;

    iget-byte v3, v3, Landroid/net/wifi/RttManager$WifiInformationElement;->id:B

    if-eq v3, v4, :cond_2

    .line 907
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    .line 908
    aget-object v4, v0, v2

    iget-object v4, v4, Landroid/net/wifi/RttManager$RttResult;->LCR:Landroid/net/wifi/RttManager$WifiInformationElement;

    new-array v3, v3, [B

    iput-object v3, v4, Landroid/net/wifi/RttManager$WifiInformationElement;->data:[B

    .line 909
    aget-object v3, v0, v2

    iget-object v3, v3, Landroid/net/wifi/RttManager$RttResult;->LCR:Landroid/net/wifi/RttManager$WifiInformationElement;

    iget-object v3, v3, Landroid/net/wifi/RttManager$WifiInformationElement;->data:[B

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readByteArray([B)V

    .line 911
    :cond_2
    aget-object v3, v0, v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    move v4, v1

    :goto_1
    iput-boolean v4, v3, Landroid/net/wifi/RttManager$RttResult;->secure:Z

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 914
    :cond_4
    new-instance p0, Landroid/net/wifi/RttManager$ParcelableRttResults;

    invoke-direct {p0, v0}, Landroid/net/wifi/RttManager$ParcelableRttResults;-><init>([Landroid/net/wifi/RttManager$RttResult;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 864
    invoke-virtual {p0, p1}, Landroid/net/wifi/RttManager$ParcelableRttResults$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/RttManager$ParcelableRttResults;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/net/wifi/RttManager$ParcelableRttResults;
    .locals 0

    .line 920
    new-array p0, p1, [Landroid/net/wifi/RttManager$ParcelableRttResults;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 864
    invoke-virtual {p0, p1}, Landroid/net/wifi/RttManager$ParcelableRttResults$1;->newArray(I)[Landroid/net/wifi/RttManager$ParcelableRttResults;

    move-result-object p0

    return-object p0
.end method

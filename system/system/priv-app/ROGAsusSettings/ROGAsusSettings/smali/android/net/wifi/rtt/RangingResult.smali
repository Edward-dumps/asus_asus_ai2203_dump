.class public final Landroid/net/wifi/rtt/RangingResult;
.super Ljava/lang/Object;
.source "RangingResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/rtt/RangingResult;",
            ">;"
        }
    .end annotation
.end field

.field private static final EMPTY_BYTE_ARRAY:[B


# instance fields
.field public final mDistanceMm:I

.field public final mDistanceStdDevMm:I

.field public final mIs80211mcMeasurement:Z

.field public final mLci:[B

.field public final mLcr:[B

.field public final mMac:Landroid/net/MacAddress;

.field public final mNumAttemptedMeasurements:I

.field public final mNumSuccessfulMeasurements:I

.field public final mPeerHandle:Landroid/net/wifi/aware/PeerHandle;

.field public final mResponderLocation:Landroid/net/wifi/rtt/ResponderLocation;

.field public final mRssi:I

.field public final mStatus:I

.field public final mTimestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 44
    sput-object v0, Landroid/net/wifi/rtt/RangingResult;->EMPTY_BYTE_ARRAY:[B

    .line 403
    new-instance v0, Landroid/net/wifi/rtt/RangingResult$1;

    invoke-direct {v0}, Landroid/net/wifi/rtt/RangingResult$1;-><init>()V

    sput-object v0, Landroid/net/wifi/rtt/RangingResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILandroid/net/MacAddress;IIIII[B[BLandroid/net/wifi/rtt/ResponderLocation;JZ)V
    .locals 0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput p1, p0, Landroid/net/wifi/rtt/RangingResult;->mStatus:I

    .line 120
    iput-object p2, p0, Landroid/net/wifi/rtt/RangingResult;->mMac:Landroid/net/MacAddress;

    const/4 p1, 0x0

    .line 121
    iput-object p1, p0, Landroid/net/wifi/rtt/RangingResult;->mPeerHandle:Landroid/net/wifi/aware/PeerHandle;

    .line 122
    iput p3, p0, Landroid/net/wifi/rtt/RangingResult;->mDistanceMm:I

    .line 123
    iput p4, p0, Landroid/net/wifi/rtt/RangingResult;->mDistanceStdDevMm:I

    .line 124
    iput p5, p0, Landroid/net/wifi/rtt/RangingResult;->mRssi:I

    .line 125
    iput p6, p0, Landroid/net/wifi/rtt/RangingResult;->mNumAttemptedMeasurements:I

    .line 126
    iput p7, p0, Landroid/net/wifi/rtt/RangingResult;->mNumSuccessfulMeasurements:I

    if-nez p8, :cond_0

    .line 127
    sget-object p8, Landroid/net/wifi/rtt/RangingResult;->EMPTY_BYTE_ARRAY:[B

    :cond_0
    iput-object p8, p0, Landroid/net/wifi/rtt/RangingResult;->mLci:[B

    if-nez p9, :cond_1

    .line 128
    sget-object p9, Landroid/net/wifi/rtt/RangingResult;->EMPTY_BYTE_ARRAY:[B

    :cond_1
    iput-object p9, p0, Landroid/net/wifi/rtt/RangingResult;->mLcr:[B

    .line 129
    iput-object p10, p0, Landroid/net/wifi/rtt/RangingResult;->mResponderLocation:Landroid/net/wifi/rtt/ResponderLocation;

    .line 130
    iput-wide p11, p0, Landroid/net/wifi/rtt/RangingResult;->mTimestamp:J

    .line 131
    iput-boolean p13, p0, Landroid/net/wifi/rtt/RangingResult;->mIs80211mcMeasurement:Z

    return-void
.end method

.method public constructor <init>(ILandroid/net/wifi/aware/PeerHandle;IIIII[B[BLandroid/net/wifi/rtt/ResponderLocation;J)V
    .locals 0

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput p1, p0, Landroid/net/wifi/rtt/RangingResult;->mStatus:I

    const/4 p1, 0x0

    .line 140
    iput-object p1, p0, Landroid/net/wifi/rtt/RangingResult;->mMac:Landroid/net/MacAddress;

    .line 141
    iput-object p2, p0, Landroid/net/wifi/rtt/RangingResult;->mPeerHandle:Landroid/net/wifi/aware/PeerHandle;

    .line 142
    iput p3, p0, Landroid/net/wifi/rtt/RangingResult;->mDistanceMm:I

    .line 143
    iput p4, p0, Landroid/net/wifi/rtt/RangingResult;->mDistanceStdDevMm:I

    .line 144
    iput p5, p0, Landroid/net/wifi/rtt/RangingResult;->mRssi:I

    .line 145
    iput p6, p0, Landroid/net/wifi/rtt/RangingResult;->mNumAttemptedMeasurements:I

    .line 146
    iput p7, p0, Landroid/net/wifi/rtt/RangingResult;->mNumSuccessfulMeasurements:I

    if-nez p8, :cond_0

    .line 147
    sget-object p8, Landroid/net/wifi/rtt/RangingResult;->EMPTY_BYTE_ARRAY:[B

    :cond_0
    iput-object p8, p0, Landroid/net/wifi/rtt/RangingResult;->mLci:[B

    if-nez p9, :cond_1

    .line 148
    sget-object p9, Landroid/net/wifi/rtt/RangingResult;->EMPTY_BYTE_ARRAY:[B

    :cond_1
    iput-object p9, p0, Landroid/net/wifi/rtt/RangingResult;->mLcr:[B

    .line 149
    iput-object p10, p0, Landroid/net/wifi/rtt/RangingResult;->mResponderLocation:Landroid/net/wifi/rtt/ResponderLocation;

    .line 150
    iput-wide p11, p0, Landroid/net/wifi/rtt/RangingResult;->mTimestamp:J

    const/4 p1, 0x1

    .line 151
    iput-boolean p1, p0, Landroid/net/wifi/rtt/RangingResult;->mIs80211mcMeasurement:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 466
    :cond_0
    instance-of v1, p1, Landroid/net/wifi/rtt/RangingResult;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 470
    :cond_1
    check-cast p1, Landroid/net/wifi/rtt/RangingResult;

    .line 472
    iget v1, p0, Landroid/net/wifi/rtt/RangingResult;->mStatus:I

    iget v3, p1, Landroid/net/wifi/rtt/RangingResult;->mStatus:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Landroid/net/wifi/rtt/RangingResult;->mMac:Landroid/net/MacAddress;

    iget-object v3, p1, Landroid/net/wifi/rtt/RangingResult;->mMac:Landroid/net/MacAddress;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/net/wifi/rtt/RangingResult;->mPeerHandle:Landroid/net/wifi/aware/PeerHandle;

    iget-object v3, p1, Landroid/net/wifi/rtt/RangingResult;->mPeerHandle:Landroid/net/wifi/aware/PeerHandle;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Landroid/net/wifi/rtt/RangingResult;->mDistanceMm:I

    iget v3, p1, Landroid/net/wifi/rtt/RangingResult;->mDistanceMm:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Landroid/net/wifi/rtt/RangingResult;->mDistanceStdDevMm:I

    iget v3, p1, Landroid/net/wifi/rtt/RangingResult;->mDistanceStdDevMm:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Landroid/net/wifi/rtt/RangingResult;->mRssi:I

    iget v3, p1, Landroid/net/wifi/rtt/RangingResult;->mRssi:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Landroid/net/wifi/rtt/RangingResult;->mNumAttemptedMeasurements:I

    iget v3, p1, Landroid/net/wifi/rtt/RangingResult;->mNumAttemptedMeasurements:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Landroid/net/wifi/rtt/RangingResult;->mNumSuccessfulMeasurements:I

    iget v3, p1, Landroid/net/wifi/rtt/RangingResult;->mNumSuccessfulMeasurements:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Landroid/net/wifi/rtt/RangingResult;->mLci:[B

    iget-object v3, p1, Landroid/net/wifi/rtt/RangingResult;->mLci:[B

    .line 477
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/net/wifi/rtt/RangingResult;->mLcr:[B

    iget-object v3, p1, Landroid/net/wifi/rtt/RangingResult;->mLcr:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-wide v3, p0, Landroid/net/wifi/rtt/RangingResult;->mTimestamp:J

    iget-wide v5, p1, Landroid/net/wifi/rtt/RangingResult;->mTimestamp:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-boolean v1, p0, Landroid/net/wifi/rtt/RangingResult;->mIs80211mcMeasurement:Z

    iget-boolean v3, p1, Landroid/net/wifi/rtt/RangingResult;->mIs80211mcMeasurement:Z

    if-ne v1, v3, :cond_2

    iget-object p0, p0, Landroid/net/wifi/rtt/RangingResult;->mResponderLocation:Landroid/net/wifi/rtt/ResponderLocation;

    iget-object p1, p1, Landroid/net/wifi/rtt/RangingResult;->mResponderLocation:Landroid/net/wifi/rtt/ResponderLocation;

    .line 480
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/Object;

    .line 485
    iget v1, p0, Landroid/net/wifi/rtt/RangingResult;->mStatus:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/rtt/RangingResult;->mMac:Landroid/net/MacAddress;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/rtt/RangingResult;->mPeerHandle:Landroid/net/wifi/aware/PeerHandle;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/wifi/rtt/RangingResult;->mDistanceMm:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/wifi/rtt/RangingResult;->mDistanceStdDevMm:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/wifi/rtt/RangingResult;->mRssi:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/wifi/rtt/RangingResult;->mNumAttemptedMeasurements:I

    .line 486
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/wifi/rtt/RangingResult;->mNumSuccessfulMeasurements:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/rtt/RangingResult;->mLci:[B

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/rtt/RangingResult;->mLcr:[B

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/rtt/RangingResult;->mResponderLocation:Landroid/net/wifi/rtt/ResponderLocation;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/net/wifi/rtt/RangingResult;->mTimestamp:J

    .line 487
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget-boolean p0, p0, Landroid/net/wifi/rtt/RangingResult;->mIs80211mcMeasurement:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/16 v1, 0xc

    aput-object p0, v0, v1

    .line 485
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 448
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RangingResult: [status="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/net/wifi/rtt/RangingResult;->mStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mac="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/rtt/RangingResult;->mMac:Landroid/net/MacAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", peerHandle="

    .line 449
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    iget-object v1, p0, Landroid/net/wifi/rtt/RangingResult;->mPeerHandle:Landroid/net/wifi/aware/PeerHandle;

    if-nez v1, :cond_0

    const-string v1, "<null>"

    goto :goto_0

    :cond_0
    iget v1, v1, Landroid/net/wifi/aware/PeerHandle;->peerId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 449
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", distanceMm="

    .line 450
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/wifi/rtt/RangingResult;->mDistanceMm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", distanceStdDevMm="

    .line 451
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/wifi/rtt/RangingResult;->mDistanceStdDevMm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rssi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/wifi/rtt/RangingResult;->mRssi:I

    .line 452
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", numAttemptedMeasurements="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/wifi/rtt/RangingResult;->mNumAttemptedMeasurements:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", numSuccessfulMeasurements="

    .line 453
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/wifi/rtt/RangingResult;->mNumSuccessfulMeasurements:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", lci="

    .line 454
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/rtt/RangingResult;->mLci:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", lcr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/rtt/RangingResult;->mLcr:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", responderLocation="

    .line 455
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/rtt/RangingResult;->mResponderLocation:Landroid/net/wifi/rtt/ResponderLocation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", timestamp="

    .line 456
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/net/wifi/rtt/RangingResult;->mTimestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", is80211mcMeasurement="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Landroid/net/wifi/rtt/RangingResult;->mIs80211mcMeasurement:Z

    .line 457
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 378
    iget v0, p0, Landroid/net/wifi/rtt/RangingResult;->mStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 379
    iget-object v0, p0, Landroid/net/wifi/rtt/RangingResult;->mMac:Landroid/net/MacAddress;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 380
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_0

    .line 382
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 383
    iget-object v0, p0, Landroid/net/wifi/rtt/RangingResult;->mMac:Landroid/net/MacAddress;

    invoke-virtual {v0, p1, p2}, Landroid/net/MacAddress;->writeToParcel(Landroid/os/Parcel;I)V

    .line 385
    :goto_0
    iget-object v0, p0, Landroid/net/wifi/rtt/RangingResult;->mPeerHandle:Landroid/net/wifi/aware/PeerHandle;

    if-nez v0, :cond_1

    .line 386
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_1

    .line 388
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 389
    iget-object v0, p0, Landroid/net/wifi/rtt/RangingResult;->mPeerHandle:Landroid/net/wifi/aware/PeerHandle;

    iget v0, v0, Landroid/net/wifi/aware/PeerHandle;->peerId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 391
    :goto_1
    iget v0, p0, Landroid/net/wifi/rtt/RangingResult;->mDistanceMm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 392
    iget v0, p0, Landroid/net/wifi/rtt/RangingResult;->mDistanceStdDevMm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 393
    iget v0, p0, Landroid/net/wifi/rtt/RangingResult;->mRssi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 394
    iget v0, p0, Landroid/net/wifi/rtt/RangingResult;->mNumAttemptedMeasurements:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 395
    iget v0, p0, Landroid/net/wifi/rtt/RangingResult;->mNumSuccessfulMeasurements:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 396
    iget-object v0, p0, Landroid/net/wifi/rtt/RangingResult;->mLci:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 397
    iget-object v0, p0, Landroid/net/wifi/rtt/RangingResult;->mLcr:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 398
    iget-object v0, p0, Landroid/net/wifi/rtt/RangingResult;->mResponderLocation:Landroid/net/wifi/rtt/ResponderLocation;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 399
    iget-wide v0, p0, Landroid/net/wifi/rtt/RangingResult;->mTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 400
    iget-boolean p0, p0, Landroid/net/wifi/rtt/RangingResult;->mIs80211mcMeasurement:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method

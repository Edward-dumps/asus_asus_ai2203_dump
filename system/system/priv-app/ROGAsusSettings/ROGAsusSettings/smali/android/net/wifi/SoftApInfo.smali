.class public final Landroid/net/wifi/SoftApInfo;
.super Ljava/lang/Object;
.source "SoftApInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/SoftApInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mApInstanceIdentifier:Ljava/lang/String;

.field private mBandwidth:I

.field private mBssid:Landroid/net/MacAddress;

.field private mFrequency:I

.field private mIdleShutdownTimeoutMillis:J

.field private mWifiStandard:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 332
    new-instance v0, Landroid/net/wifi/SoftApInfo$1;

    invoke-direct {v0}, Landroid/net/wifi/SoftApInfo$1;-><init>()V

    sput-object v0, Landroid/net/wifi/SoftApInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 121
    iput v0, p0, Landroid/net/wifi/SoftApInfo;->mFrequency:I

    .line 123
    iput v0, p0, Landroid/net/wifi/SoftApInfo;->mBandwidth:I

    .line 137
    iput v0, p0, Landroid/net/wifi/SoftApInfo;->mWifiStandard:I

    return-void
.end method

.method static synthetic access$002(Landroid/net/wifi/SoftApInfo;I)I
    .locals 0

    .line 41
    iput p1, p0, Landroid/net/wifi/SoftApInfo;->mFrequency:I

    return p1
.end method

.method static synthetic access$102(Landroid/net/wifi/SoftApInfo;I)I
    .locals 0

    .line 41
    iput p1, p0, Landroid/net/wifi/SoftApInfo;->mBandwidth:I

    return p1
.end method

.method static synthetic access$202(Landroid/net/wifi/SoftApInfo;Landroid/net/MacAddress;)Landroid/net/MacAddress;
    .locals 0

    .line 41
    iput-object p1, p0, Landroid/net/wifi/SoftApInfo;->mBssid:Landroid/net/MacAddress;

    return-object p1
.end method

.method static synthetic access$302(Landroid/net/wifi/SoftApInfo;I)I
    .locals 0

    .line 41
    iput p1, p0, Landroid/net/wifi/SoftApInfo;->mWifiStandard:I

    return p1
.end method

.method static synthetic access$402(Landroid/net/wifi/SoftApInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 41
    iput-object p1, p0, Landroid/net/wifi/SoftApInfo;->mApInstanceIdentifier:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Landroid/net/wifi/SoftApInfo;J)J
    .locals 0

    .line 41
    iput-wide p1, p0, Landroid/net/wifi/SoftApInfo;->mIdleShutdownTimeoutMillis:J

    return-wide p1
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 367
    :cond_0
    instance-of v1, p1, Landroid/net/wifi/SoftApInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 368
    :cond_1
    check-cast p1, Landroid/net/wifi/SoftApInfo;

    .line 369
    iget v1, p0, Landroid/net/wifi/SoftApInfo;->mFrequency:I

    iget v3, p1, Landroid/net/wifi/SoftApInfo;->mFrequency:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Landroid/net/wifi/SoftApInfo;->mBandwidth:I

    iget v3, p1, Landroid/net/wifi/SoftApInfo;->mBandwidth:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Landroid/net/wifi/SoftApInfo;->mBssid:Landroid/net/MacAddress;

    iget-object v3, p1, Landroid/net/wifi/SoftApInfo;->mBssid:Landroid/net/MacAddress;

    .line 371
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Landroid/net/wifi/SoftApInfo;->mWifiStandard:I

    iget v3, p1, Landroid/net/wifi/SoftApInfo;->mWifiStandard:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Landroid/net/wifi/SoftApInfo;->mApInstanceIdentifier:Ljava/lang/String;

    iget-object v3, p1, Landroid/net/wifi/SoftApInfo;->mApInstanceIdentifier:Ljava/lang/String;

    .line 373
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-wide v3, p0, Landroid/net/wifi/SoftApInfo;->mIdleShutdownTimeoutMillis:J

    iget-wide p0, p1, Landroid/net/wifi/SoftApInfo;->mIdleShutdownTimeoutMillis:J

    cmp-long p0, v3, p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getApInstanceIdentifier()Ljava/lang/String;
    .locals 0

    .line 267
    iget-object p0, p0, Landroid/net/wifi/SoftApInfo;->mApInstanceIdentifier:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    .line 379
    iget v1, p0, Landroid/net/wifi/SoftApInfo;->mFrequency:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/wifi/SoftApInfo;->mBandwidth:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/SoftApInfo;->mBssid:Landroid/net/MacAddress;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/wifi/SoftApInfo;->mWifiStandard:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/SoftApInfo;->mApInstanceIdentifier:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/net/wifi/SoftApInfo;->mIdleShutdownTimeoutMillis:J

    .line 380
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 v1, 0x5

    aput-object p0, v0, v1

    .line 379
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SoftApInfo{"

    .line 353
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "bandwidth= "

    .line 354
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/wifi/SoftApInfo;->mBandwidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", frequency= "

    .line 355
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/wifi/SoftApInfo;->mFrequency:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 356
    iget-object v1, p0, Landroid/net/wifi/SoftApInfo;->mBssid:Landroid/net/MacAddress;

    if-eqz v1, :cond_0

    const-string v1, ",bssid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/SoftApInfo;->mBssid:Landroid/net/MacAddress;

    invoke-virtual {v1}, Landroid/net/MacAddress;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, ", wifiStandard= "

    .line 357
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/wifi/SoftApInfo;->mWifiStandard:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mApInstanceIdentifier= "

    .line 358
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/SoftApInfo;->mApInstanceIdentifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mIdleShutdownTimeoutMillis= "

    .line 359
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/net/wifi/SoftApInfo;->mIdleShutdownTimeoutMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    .line 360
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 322
    iget v0, p0, Landroid/net/wifi/SoftApInfo;->mFrequency:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 323
    iget v0, p0, Landroid/net/wifi/SoftApInfo;->mBandwidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 324
    iget-object v0, p0, Landroid/net/wifi/SoftApInfo;->mBssid:Landroid/net/MacAddress;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 325
    iget p2, p0, Landroid/net/wifi/SoftApInfo;->mWifiStandard:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 326
    iget-object p2, p0, Landroid/net/wifi/SoftApInfo;->mApInstanceIdentifier:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 327
    iget-wide v0, p0, Landroid/net/wifi/SoftApInfo;->mIdleShutdownTimeoutMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method

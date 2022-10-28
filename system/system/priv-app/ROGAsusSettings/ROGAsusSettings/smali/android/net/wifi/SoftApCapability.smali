.class public final Landroid/net/wifi/SoftApCapability;
.super Ljava/lang/Object;
.source "SoftApCapability.java"

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
            "Landroid/net/wifi/SoftApCapability;",
            ">;"
        }
    .end annotation
.end field

.field private static final EMPTY_INT_ARRAY:[I


# instance fields
.field private mMaximumSupportedClientNumber:I

.field private mSupportedChannelListIn24g:[I

.field private mSupportedChannelListIn5g:[I

.field private mSupportedChannelListIn60g:[I

.field private mSupportedChannelListIn6g:[I

.field private mSupportedFeatures:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    .line 43
    sput-object v0, Landroid/net/wifi/SoftApCapability;->EMPTY_INT_ARRAY:[I

    .line 298
    new-instance v0, Landroid/net/wifi/SoftApCapability$1;

    invoke-direct {v0}, Landroid/net/wifi/SoftApCapability$1;-><init>()V

    sput-object v0, Landroid/net/wifi/SoftApCapability;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 2

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 137
    iput-wide v0, p0, Landroid/net/wifi/SoftApCapability;->mSupportedFeatures:J

    .line 144
    sget-object v0, Landroid/net/wifi/SoftApCapability;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Landroid/net/wifi/SoftApCapability;->mSupportedChannelListIn24g:[I

    .line 149
    iput-object v0, p0, Landroid/net/wifi/SoftApCapability;->mSupportedChannelListIn5g:[I

    .line 154
    iput-object v0, p0, Landroid/net/wifi/SoftApCapability;->mSupportedChannelListIn6g:[I

    .line 159
    iput-object v0, p0, Landroid/net/wifi/SoftApCapability;->mSupportedChannelListIn60g:[I

    .line 276
    iput-wide p1, p0, Landroid/net/wifi/SoftApCapability;->mSupportedFeatures:J

    return-void
.end method

.method static synthetic access$002(Landroid/net/wifi/SoftApCapability;I)I
    .locals 0

    .line 40
    iput p1, p0, Landroid/net/wifi/SoftApCapability;->mMaximumSupportedClientNumber:I

    return p1
.end method


# virtual methods
.method public areFeaturesSupported(J)Z
    .locals 2

    .line 186
    iget-wide v0, p0, Landroid/net/wifi/SoftApCapability;->mSupportedFeatures:J

    and-long/2addr v0, p1

    cmp-long p0, v0, p1

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

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

    .line 332
    :cond_0
    instance-of v1, p1, Landroid/net/wifi/SoftApCapability;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 333
    :cond_1
    check-cast p1, Landroid/net/wifi/SoftApCapability;

    .line 334
    iget-wide v3, p0, Landroid/net/wifi/SoftApCapability;->mSupportedFeatures:J

    iget-wide v5, p1, Landroid/net/wifi/SoftApCapability;->mSupportedFeatures:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget v1, p0, Landroid/net/wifi/SoftApCapability;->mMaximumSupportedClientNumber:I

    iget v3, p1, Landroid/net/wifi/SoftApCapability;->mMaximumSupportedClientNumber:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Landroid/net/wifi/SoftApCapability;->mSupportedChannelListIn24g:[I

    iget-object v3, p1, Landroid/net/wifi/SoftApCapability;->mSupportedChannelListIn24g:[I

    .line 336
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/net/wifi/SoftApCapability;->mSupportedChannelListIn5g:[I

    iget-object v3, p1, Landroid/net/wifi/SoftApCapability;->mSupportedChannelListIn5g:[I

    .line 337
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/net/wifi/SoftApCapability;->mSupportedChannelListIn6g:[I

    iget-object v3, p1, Landroid/net/wifi/SoftApCapability;->mSupportedChannelListIn6g:[I

    .line 338
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Landroid/net/wifi/SoftApCapability;->mSupportedChannelListIn60g:[I

    iget-object p1, p1, Landroid/net/wifi/SoftApCapability;->mSupportedChannelListIn60g:[I

    .line 339
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([I[I)Z

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

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    .line 344
    iget-wide v1, p0, Landroid/net/wifi/SoftApCapability;->mSupportedFeatures:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/wifi/SoftApCapability;->mMaximumSupportedClientNumber:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/SoftApCapability;->mSupportedChannelListIn24g:[I

    .line 345
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/SoftApCapability;->mSupportedChannelListIn5g:[I

    .line 346
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/SoftApCapability;->mSupportedChannelListIn6g:[I

    .line 347
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object p0, p0, Landroid/net/wifi/SoftApCapability;->mSupportedChannelListIn60g:[I

    .line 348
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x5

    aput-object p0, v0, v1

    .line 344
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public setSupportedChannelList(I[I)Z
    .locals 2

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v1, 0x4

    if-eq p1, v1, :cond_2

    const/16 v1, 0x8

    if-ne p1, v1, :cond_1

    .line 215
    iput-object p2, p0, Landroid/net/wifi/SoftApCapability;->mSupportedChannelListIn60g:[I

    goto :goto_0

    .line 218
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid band: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 212
    :cond_2
    iput-object p2, p0, Landroid/net/wifi/SoftApCapability;->mSupportedChannelListIn6g:[I

    goto :goto_0

    .line 209
    :cond_3
    iput-object p2, p0, Landroid/net/wifi/SoftApCapability;->mSupportedChannelListIn5g:[I

    goto :goto_0

    .line 206
    :cond_4
    iput-object p2, p0, Landroid/net/wifi/SoftApCapability;->mSupportedChannelListIn24g:[I

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SupportedFeatures="

    .line 318
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/net/wifi/SoftApCapability;->mSupportedFeatures:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "MaximumSupportedClientNumber="

    .line 319
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/wifi/SoftApCapability;->mMaximumSupportedClientNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "SupportedChannelListIn24g"

    .line 320
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/SoftApCapability;->mSupportedChannelListIn24g:[I

    .line 321
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "SupportedChannelListIn5g"

    .line 322
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/SoftApCapability;->mSupportedChannelListIn5g:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "SupportedChannelListIn6g"

    .line 323
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/SoftApCapability;->mSupportedChannelListIn6g:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "SupportedChannelListIn60g"

    .line 324
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/net/wifi/SoftApCapability;->mSupportedChannelListIn60g:[I

    .line 325
    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 288
    iget-wide v0, p0, Landroid/net/wifi/SoftApCapability;->mSupportedFeatures:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 289
    iget p2, p0, Landroid/net/wifi/SoftApCapability;->mMaximumSupportedClientNumber:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 290
    iget-object p2, p0, Landroid/net/wifi/SoftApCapability;->mSupportedChannelListIn24g:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 291
    iget-object p2, p0, Landroid/net/wifi/SoftApCapability;->mSupportedChannelListIn5g:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 292
    iget-object p2, p0, Landroid/net/wifi/SoftApCapability;->mSupportedChannelListIn6g:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 293
    iget-object p0, p0, Landroid/net/wifi/SoftApCapability;->mSupportedChannelListIn60g:[I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeIntArray([I)V

    return-void
.end method

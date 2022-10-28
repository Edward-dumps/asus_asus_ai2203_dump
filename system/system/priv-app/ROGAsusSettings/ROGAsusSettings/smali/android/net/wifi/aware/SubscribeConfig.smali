.class public final Landroid/net/wifi/aware/SubscribeConfig;
.super Ljava/lang/Object;
.source "SubscribeConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/aware/SubscribeConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mEnableTerminateNotification:Z

.field public final mMatchFilter:[B

.field public final mMaxDistanceMm:I

.field public final mMaxDistanceMmSet:Z

.field public final mMinDistanceMm:I

.field public final mMinDistanceMmSet:Z

.field public final mServiceName:[B

.field public final mServiceSpecificInfo:[B

.field public final mSubscribeType:I

.field public final mTtlSec:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 148
    new-instance v0, Landroid/net/wifi/aware/SubscribeConfig$1;

    invoke-direct {v0}, Landroid/net/wifi/aware/SubscribeConfig$1;-><init>()V

    sput-object v0, Landroid/net/wifi/aware/SubscribeConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>([B[B[BIIZZIZI)V
    .locals 0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mServiceName:[B

    .line 99
    iput-object p2, p0, Landroid/net/wifi/aware/SubscribeConfig;->mServiceSpecificInfo:[B

    .line 100
    iput-object p3, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMatchFilter:[B

    .line 101
    iput p4, p0, Landroid/net/wifi/aware/SubscribeConfig;->mSubscribeType:I

    .line 102
    iput p5, p0, Landroid/net/wifi/aware/SubscribeConfig;->mTtlSec:I

    .line 103
    iput-boolean p6, p0, Landroid/net/wifi/aware/SubscribeConfig;->mEnableTerminateNotification:Z

    .line 104
    iput p8, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMinDistanceMm:I

    .line 105
    iput-boolean p7, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMinDistanceMmSet:Z

    .line 106
    iput p10, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMaxDistanceMm:I

    .line 107
    iput-boolean p9, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMaxDistanceMmSet:Z

    return-void
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

    .line 179
    :cond_0
    instance-of v1, p1, Landroid/net/wifi/aware/SubscribeConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 183
    :cond_1
    check-cast p1, Landroid/net/wifi/aware/SubscribeConfig;

    .line 185
    iget-object v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mServiceName:[B

    iget-object v3, p1, Landroid/net/wifi/aware/SubscribeConfig;->mServiceName:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mServiceSpecificInfo:[B

    iget-object v3, p1, Landroid/net/wifi/aware/SubscribeConfig;->mServiceSpecificInfo:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMatchFilter:[B

    iget-object v3, p1, Landroid/net/wifi/aware/SubscribeConfig;->mMatchFilter:[B

    .line 186
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_5

    iget v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mSubscribeType:I

    iget v3, p1, Landroid/net/wifi/aware/SubscribeConfig;->mSubscribeType:I

    if-ne v1, v3, :cond_5

    iget v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mTtlSec:I

    iget v3, p1, Landroid/net/wifi/aware/SubscribeConfig;->mTtlSec:I

    if-ne v1, v3, :cond_5

    iget-boolean v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mEnableTerminateNotification:Z

    iget-boolean v3, p1, Landroid/net/wifi/aware/SubscribeConfig;->mEnableTerminateNotification:Z

    if-ne v1, v3, :cond_5

    iget-boolean v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMinDistanceMmSet:Z

    iget-boolean v3, p1, Landroid/net/wifi/aware/SubscribeConfig;->mMinDistanceMmSet:Z

    if-ne v1, v3, :cond_5

    iget-boolean v3, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMaxDistanceMmSet:Z

    iget-boolean v4, p1, Landroid/net/wifi/aware/SubscribeConfig;->mMaxDistanceMmSet:Z

    if-eq v3, v4, :cond_2

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    .line 194
    iget v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMinDistanceMm:I

    iget v4, p1, Landroid/net/wifi/aware/SubscribeConfig;->mMinDistanceMm:I

    if-eq v1, v4, :cond_3

    return v2

    :cond_3
    if-eqz v3, :cond_4

    .line 198
    iget p0, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMaxDistanceMm:I

    iget p1, p1, Landroid/net/wifi/aware/SubscribeConfig;->mMaxDistanceMm:I

    if-eq p0, p1, :cond_4

    return v2

    :cond_4
    return v0

    :cond_5
    :goto_0
    return v2
.end method

.method public hashCode()I
    .locals 6

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    .line 207
    iget-object v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mServiceName:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mServiceSpecificInfo:[B

    .line 208
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    iget-object v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMatchFilter:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    iget v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mSubscribeType:I

    .line 209
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v5, 0x3

    aput-object v1, v0, v5

    iget v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mTtlSec:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v5, 0x4

    aput-object v1, v0, v5

    iget-boolean v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mEnableTerminateNotification:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v5, 0x5

    aput-object v1, v0, v5

    iget-boolean v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMinDistanceMmSet:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v5, 0x6

    aput-object v1, v0, v5

    iget-boolean v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMaxDistanceMmSet:Z

    .line 210
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v5, 0x7

    aput-object v1, v0, v5

    .line 207
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    .line 212
    iget-boolean v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMinDistanceMmSet:Z

    if-eqz v1, :cond_0

    new-array v1, v4, [Ljava/lang/Object;

    .line 213
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    iget v0, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMinDistanceMm:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v3

    invoke-static {v1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    .line 215
    :cond_0
    iget-boolean v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMaxDistanceMmSet:Z

    if-eqz v1, :cond_1

    new-array v1, v4, [Ljava/lang/Object;

    .line 216
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    iget p0, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMaxDistanceMm:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v3

    invoke-static {v1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    :cond_1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SubscribeConfig [mServiceName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mServiceName:[B

    const-string v2, "<null>"

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    .line 113
    :cond_0
    invoke-static {v1}, Landroid/net/wifi/util/HexEncoding;->encode([B)[C

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mServiceName.length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    iget-object v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mServiceName:[B

    const/4 v3, 0x0

    if-nez v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    array-length v1, v1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mServiceSpecificInfo=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    iget-object v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mServiceSpecificInfo:[B

    if-nez v1, :cond_2

    goto :goto_2

    .line 116
    :cond_2
    invoke-static {v1}, Landroid/net/wifi/util/HexEncoding;->encode([B)[C

    move-result-object v1

    .line 115
    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mServiceSpecificInfo.length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    iget-object v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mServiceSpecificInfo:[B

    if-nez v1, :cond_3

    move v1, v3

    goto :goto_3

    .line 118
    :cond_3
    array-length v1, v1

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mMatchFilter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;

    const/4 v2, 0x1

    iget-object v4, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMatchFilter:[B

    invoke-direct {v1, v3, v2, v4}, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;-><init>(II[B)V

    .line 119
    invoke-virtual {v1}, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mMatchFilter.length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    iget-object v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMatchFilter:[B

    if-nez v1, :cond_4

    goto :goto_4

    :cond_4
    array-length v3, v1

    :goto_4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mSubscribeType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mSubscribeType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mTtlSec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mTtlSec:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mEnableTerminateNotification="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mEnableTerminateNotification:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mMinDistanceMm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMinDistanceMm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mMinDistanceMmSet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMinDistanceMmSet:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mMaxDistanceMm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMaxDistanceMm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mMaxDistanceMmSet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMaxDistanceMmSet:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 136
    iget-object p2, p0, Landroid/net/wifi/aware/SubscribeConfig;->mServiceName:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 137
    iget-object p2, p0, Landroid/net/wifi/aware/SubscribeConfig;->mServiceSpecificInfo:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 138
    iget-object p2, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMatchFilter:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 139
    iget p2, p0, Landroid/net/wifi/aware/SubscribeConfig;->mSubscribeType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    iget p2, p0, Landroid/net/wifi/aware/SubscribeConfig;->mTtlSec:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    iget-boolean p2, p0, Landroid/net/wifi/aware/SubscribeConfig;->mEnableTerminateNotification:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    iget p2, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMinDistanceMm:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    iget-boolean p2, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMinDistanceMmSet:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    iget p2, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMaxDistanceMm:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    iget-boolean p0, p0, Landroid/net/wifi/aware/SubscribeConfig;->mMaxDistanceMmSet:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

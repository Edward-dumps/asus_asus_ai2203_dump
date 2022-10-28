.class public final Landroid/net/wifi/aware/PublishConfig;
.super Ljava/lang/Object;
.source "PublishConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/aware/PublishConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mEnableRanging:Z

.field public final mEnableTerminateNotification:Z

.field public final mMatchFilter:[B

.field public final mPublishType:I

.field public final mServiceName:[B

.field public final mServiceSpecificInfo:[B

.field public final mTtlSec:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 131
    new-instance v0, Landroid/net/wifi/aware/PublishConfig$1;

    invoke-direct {v0}, Landroid/net/wifi/aware/PublishConfig$1;-><init>()V

    sput-object v0, Landroid/net/wifi/aware/PublishConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>([B[B[BIIZZ)V
    .locals 0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Landroid/net/wifi/aware/PublishConfig;->mServiceName:[B

    .line 91
    iput-object p2, p0, Landroid/net/wifi/aware/PublishConfig;->mServiceSpecificInfo:[B

    .line 92
    iput-object p3, p0, Landroid/net/wifi/aware/PublishConfig;->mMatchFilter:[B

    .line 93
    iput p4, p0, Landroid/net/wifi/aware/PublishConfig;->mPublishType:I

    .line 94
    iput p5, p0, Landroid/net/wifi/aware/PublishConfig;->mTtlSec:I

    .line 95
    iput-boolean p6, p0, Landroid/net/wifi/aware/PublishConfig;->mEnableTerminateNotification:Z

    .line 96
    iput-boolean p7, p0, Landroid/net/wifi/aware/PublishConfig;->mEnableRanging:Z

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

    .line 158
    :cond_0
    instance-of v1, p1, Landroid/net/wifi/aware/PublishConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 162
    :cond_1
    check-cast p1, Landroid/net/wifi/aware/PublishConfig;

    .line 164
    iget-object v1, p0, Landroid/net/wifi/aware/PublishConfig;->mServiceName:[B

    iget-object v3, p1, Landroid/net/wifi/aware/PublishConfig;->mServiceName:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/net/wifi/aware/PublishConfig;->mServiceSpecificInfo:[B

    iget-object v3, p1, Landroid/net/wifi/aware/PublishConfig;->mServiceSpecificInfo:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/net/wifi/aware/PublishConfig;->mMatchFilter:[B

    iget-object v3, p1, Landroid/net/wifi/aware/PublishConfig;->mMatchFilter:[B

    .line 165
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Landroid/net/wifi/aware/PublishConfig;->mPublishType:I

    iget v3, p1, Landroid/net/wifi/aware/PublishConfig;->mPublishType:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Landroid/net/wifi/aware/PublishConfig;->mTtlSec:I

    iget v3, p1, Landroid/net/wifi/aware/PublishConfig;->mTtlSec:I

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Landroid/net/wifi/aware/PublishConfig;->mEnableTerminateNotification:Z

    iget-boolean v3, p1, Landroid/net/wifi/aware/PublishConfig;->mEnableTerminateNotification:Z

    if-ne v1, v3, :cond_2

    iget-boolean p0, p0, Landroid/net/wifi/aware/PublishConfig;->mEnableRanging:Z

    iget-boolean p1, p1, Landroid/net/wifi/aware/PublishConfig;->mEnableRanging:Z

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    .line 174
    iget-object v1, p0, Landroid/net/wifi/aware/PublishConfig;->mServiceName:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/aware/PublishConfig;->mServiceSpecificInfo:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/aware/PublishConfig;->mMatchFilter:[B

    .line 175
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/wifi/aware/PublishConfig;->mPublishType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/wifi/aware/PublishConfig;->mTtlSec:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/net/wifi/aware/PublishConfig;->mEnableTerminateNotification:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-boolean p0, p0, Landroid/net/wifi/aware/PublishConfig;->mEnableRanging:Z

    .line 176
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/4 v1, 0x6

    aput-object p0, v0, v1

    .line 174
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PublishConfig [mServiceName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/aware/PublishConfig;->mServiceName:[B

    const-string v2, "<null>"

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    .line 102
    :cond_0
    invoke-static {v1}, Landroid/net/wifi/util/HexEncoding;->encode([B)[C

    move-result-object v1

    .line 101
    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mServiceName.length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    iget-object v1, p0, Landroid/net/wifi/aware/PublishConfig;->mServiceName:[B

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

    .line 104
    iget-object v1, p0, Landroid/net/wifi/aware/PublishConfig;->mServiceSpecificInfo:[B

    if-nez v1, :cond_2

    goto :goto_2

    .line 105
    :cond_2
    invoke-static {v1}, Landroid/net/wifi/util/HexEncoding;->encode([B)[C

    move-result-object v1

    .line 104
    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mServiceSpecificInfo.length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    iget-object v1, p0, Landroid/net/wifi/aware/PublishConfig;->mServiceSpecificInfo:[B

    if-nez v1, :cond_3

    move v1, v3

    goto :goto_3

    .line 107
    :cond_3
    array-length v1, v1

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mMatchFilter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;

    const/4 v2, 0x1

    iget-object v4, p0, Landroid/net/wifi/aware/PublishConfig;->mMatchFilter:[B

    invoke-direct {v1, v3, v2, v4}, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;-><init>(II[B)V

    .line 108
    invoke-virtual {v1}, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mMatchFilter.length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    iget-object v1, p0, Landroid/net/wifi/aware/PublishConfig;->mMatchFilter:[B

    if-nez v1, :cond_4

    goto :goto_4

    :cond_4
    array-length v3, v1

    :goto_4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPublishType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/wifi/aware/PublishConfig;->mPublishType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mTtlSec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/wifi/aware/PublishConfig;->mTtlSec:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mEnableTerminateNotification="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/net/wifi/aware/PublishConfig;->mEnableTerminateNotification:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mEnableRanging="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Landroid/net/wifi/aware/PublishConfig;->mEnableRanging:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 122
    iget-object p2, p0, Landroid/net/wifi/aware/PublishConfig;->mServiceName:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 123
    iget-object p2, p0, Landroid/net/wifi/aware/PublishConfig;->mServiceSpecificInfo:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 124
    iget-object p2, p0, Landroid/net/wifi/aware/PublishConfig;->mMatchFilter:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 125
    iget p2, p0, Landroid/net/wifi/aware/PublishConfig;->mPublishType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    iget p2, p0, Landroid/net/wifi/aware/PublishConfig;->mTtlSec:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    iget-boolean p2, p0, Landroid/net/wifi/aware/PublishConfig;->mEnableTerminateNotification:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    iget-boolean p0, p0, Landroid/net/wifi/aware/PublishConfig;->mEnableRanging:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

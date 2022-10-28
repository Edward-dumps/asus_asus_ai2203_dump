.class public final Landroid/net/wifi/CoexUnsafeChannel;
.super Ljava/lang/Object;
.source "CoexUnsafeChannel.java"

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
            "Landroid/net/wifi/CoexUnsafeChannel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBand:I

.field private mChannel:I

.field private mPowerCapDbm:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 149
    new-instance v0, Landroid/net/wifi/CoexUnsafeChannel$1;

    invoke-direct {v0}, Landroid/net/wifi/CoexUnsafeChannel$1;-><init>()V

    sput-object v0, Landroid/net/wifi/CoexUnsafeChannel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-static {}, Lcom/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iput p1, p0, Landroid/net/wifi/CoexUnsafeChannel;->mBand:I

    .line 77
    iput p2, p0, Landroid/net/wifi/CoexUnsafeChannel;->mChannel:I

    .line 78
    iput p3, p0, Landroid/net/wifi/CoexUnsafeChannel;->mPowerCapDbm:I

    return-void

    .line 74
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
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

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 102
    const-class v2, Landroid/net/wifi/CoexUnsafeChannel;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 103
    :cond_1
    check-cast p1, Landroid/net/wifi/CoexUnsafeChannel;

    .line 104
    iget v2, p0, Landroid/net/wifi/CoexUnsafeChannel;->mBand:I

    iget v3, p1, Landroid/net/wifi/CoexUnsafeChannel;->mBand:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/net/wifi/CoexUnsafeChannel;->mChannel:I

    iget v3, p1, Landroid/net/wifi/CoexUnsafeChannel;->mChannel:I

    if-ne v2, v3, :cond_2

    iget p0, p0, Landroid/net/wifi/CoexUnsafeChannel;->mPowerCapDbm:I

    iget p1, p1, Landroid/net/wifi/CoexUnsafeChannel;->mPowerCapDbm:I

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 111
    iget v1, p0, Landroid/net/wifi/CoexUnsafeChannel;->mBand:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/wifi/CoexUnsafeChannel;->mChannel:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget p0, p0, Landroid/net/wifi/CoexUnsafeChannel;->mPowerCapDbm:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x2

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CoexUnsafeChannel{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    iget v1, p0, Landroid/net/wifi/CoexUnsafeChannel;->mBand:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, "2.4GHz"

    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const-string v1, "5GHz"

    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    const-string v1, "6GHz"

    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const-string v1, "UNKNOWN BAND"

    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, ", "

    .line 126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/net/wifi/CoexUnsafeChannel;->mChannel:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 127
    iget v2, p0, Landroid/net/wifi/CoexUnsafeChannel;->mPowerCapDbm:I

    const v3, 0x7fffffff

    if-eq v2, v3, :cond_3

    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/net/wifi/CoexUnsafeChannel;->mPowerCapDbm:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "dBm"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const/16 p0, 0x7d

    .line 130
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 143
    iget p2, p0, Landroid/net/wifi/CoexUnsafeChannel;->mBand:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    iget p2, p0, Landroid/net/wifi/CoexUnsafeChannel;->mChannel:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    iget p0, p0, Landroid/net/wifi/CoexUnsafeChannel;->mPowerCapDbm:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

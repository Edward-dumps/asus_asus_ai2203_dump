.class public Lcom/android/net/module/util/DnsSdTxtRecord;
.super Ljava/lang/Object;
.source "DnsSdTxtRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/net/module/util/DnsSdTxtRecord;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mData:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 313
    new-instance v0, Lcom/android/net/module/util/DnsSdTxtRecord$1;

    invoke-direct {v0}, Lcom/android/net/module/util/DnsSdTxtRecord$1;-><init>()V

    sput-object v0, Lcom/android/net/module/util/DnsSdTxtRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 49
    iput-object v0, p0, Lcom/android/net/module/util/DnsSdTxtRecord;->mData:[B

    return-void
.end method

.method static synthetic access$000(Lcom/android/net/module/util/DnsSdTxtRecord;)[B
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/net/module/util/DnsSdTxtRecord;->mData:[B

    return-object p0
.end method

.method private getKey(I)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    if-ge v1, p1, :cond_0

    .line 197
    iget-object v3, p0, Lcom/android/net/module/util/DnsSdTxtRecord;->mData:[B

    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 198
    aget-byte v3, v3, v2

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 201
    :cond_0
    iget-object p1, p0, Lcom/android/net/module/util/DnsSdTxtRecord;->mData:[B

    array-length v1, p1

    if-ge v2, v1, :cond_3

    .line 202
    aget-byte p1, p1, v2

    :goto_1
    if-ge v0, p1, :cond_2

    .line 206
    iget-object v1, p0, Lcom/android/net/module/util/DnsSdTxtRecord;->mData:[B

    add-int v3, v2, v0

    add-int/lit8 v3, v3, 0x1

    aget-byte v1, v1, v3

    const/16 v3, 0x3d

    if-ne v1, v3, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 208
    :cond_2
    :goto_2
    new-instance p1, Ljava/lang/String;

    iget-object p0, p0, Lcom/android/net/module/util/DnsSdTxtRecord;->mData:[B

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p1, p0, v2, v0}, Ljava/lang/String;-><init>([BII)V

    return-object p1

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method private getValue(I)[B
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    if-ge v1, p1, :cond_0

    .line 222
    iget-object v3, p0, Lcom/android/net/module/util/DnsSdTxtRecord;->mData:[B

    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 223
    aget-byte v3, v3, v2

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 226
    :cond_0
    iget-object p1, p0, Lcom/android/net/module/util/DnsSdTxtRecord;->mData:[B

    array-length v1, p1

    if-ge v2, v1, :cond_2

    .line 227
    aget-byte p1, p1, v2

    move v1, v0

    :goto_1
    if-ge v1, p1, :cond_2

    .line 231
    iget-object v3, p0, Lcom/android/net/module/util/DnsSdTxtRecord;->mData:[B

    add-int v4, v2, v1

    add-int/lit8 v5, v4, 0x1

    aget-byte v5, v3, v5

    const/16 v6, 0x3d

    if-ne v5, v6, :cond_1

    sub-int/2addr p1, v1

    add-int/lit8 p1, p1, -0x1

    .line 232
    new-array p0, p1, [B

    add-int/lit8 v4, v4, 0x2

    .line 233
    invoke-static {v3, v4, p0, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_2
    return-object p0
.end method

.method private getValueAsString(I)Ljava/lang/String;
    .locals 0

    .line 242
    invoke-direct {p0, p1}, Lcom/android/net/module/util/DnsSdTxtRecord;->getValue(I)[B

    move-result-object p0

    if-eqz p0, :cond_0

    .line 243
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 289
    :cond_0
    instance-of v0, p1, Lcom/android/net/module/util/DnsSdTxtRecord;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 293
    :cond_1
    check-cast p1, Lcom/android/net/module/util/DnsSdTxtRecord;

    .line 294
    iget-object p1, p1, Lcom/android/net/module/util/DnsSdTxtRecord;->mData:[B

    iget-object p0, p0, Lcom/android/net/module/util/DnsSdTxtRecord;->mData:[B

    invoke-static {p1, p0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 0

    .line 299
    iget-object p0, p0, Lcom/android/net/module/util/DnsSdTxtRecord;->mData:[B

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([B)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 269
    :goto_0
    invoke-direct {p0, v1}, Lcom/android/net/module/util/DnsSdTxtRecord;->getKey(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 270
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "{"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 271
    invoke-direct {p0, v1}, Lcom/android/net/module/util/DnsSdTxtRecord;->getValueAsString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "}"

    if-eqz v3, :cond_0

    .line 273
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 275
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    if-nez v0, :cond_1

    move-object v0, v2

    goto :goto_2

    .line 279
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    const-string v0, ""

    :goto_3
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 309
    iget-object p0, p0, Lcom/android/net/module/util/DnsSdTxtRecord;->mData:[B

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method

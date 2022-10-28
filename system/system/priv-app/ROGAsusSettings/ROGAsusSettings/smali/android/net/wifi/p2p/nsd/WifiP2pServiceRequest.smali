.class public Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;
.super Ljava/lang/Object;
.source "WifiP2pServiceRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
        maxTargetSdk = 0x1e
        trackingBug = 0xa2d2051L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mLength:I

.field private mProtocolType:I

.field private mQuery:Ljava/lang/String;

.field private mTransId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 269
    new-instance v0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest$1;

    invoke-direct {v0}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest$1;-><init>()V

    sput-object v0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(IIILjava/lang/String;)V
    .locals 0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput p1, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mProtocolType:I

    .line 101
    iput p2, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mLength:I

    .line 102
    iput p3, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mTransId:I

    .line 103
    iput-object p4, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mQuery:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(IIILjava/lang/String;Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest$1;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;-><init>(IIILjava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(ILjava/lang/String;)V
    .locals 0
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
        maxTargetSdk = 0x1c
        trackingBug = 0x6e40dbfL
    .end annotation

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    invoke-direct {p0, p2}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->validateQuery(Ljava/lang/String;)V

    .line 81
    iput p1, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mProtocolType:I

    .line 82
    iput-object p2, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mQuery:Ljava/lang/String;

    const/4 p1, 0x2

    if-eqz p2, :cond_0

    .line 84
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    div-int/2addr p2, p1

    add-int/2addr p2, p1

    iput p2, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mLength:I

    goto :goto_0

    .line 86
    :cond_0
    iput p1, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mLength:I

    :goto_0
    return-void
.end method

.method private validateQuery(Ljava/lang/String;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    const p0, 0xffff

    .line 165
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    .line 169
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    if-gt v0, p0, :cond_5

    .line 175
    sget-object p0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, p0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 176
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    .line 177
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    aget-char v2, p1, v1

    const/16 v3, 0x30

    if-lt v2, v3, :cond_1

    const/16 v3, 0x39

    if-le v2, v3, :cond_2

    :cond_1
    const/16 v3, 0x61

    if-lt v2, v3, :cond_3

    const/16 v3, 0x66

    if-gt v2, v3, :cond_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 180
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "query should be hex string. query="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    return-void

    .line 170
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "query size is too large. len="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 166
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "query size is invalid. query="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

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

    if-ne p1, p0, :cond_0

    return v0

    .line 222
    :cond_0
    instance-of v1, p1, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 226
    :cond_1
    check-cast p1, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;

    .line 232
    iget v1, p1, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mProtocolType:I

    iget v3, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mProtocolType:I

    if-ne v1, v3, :cond_4

    iget v1, p1, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mLength:I

    iget v3, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mLength:I

    if-eq v1, v3, :cond_2

    goto :goto_0

    .line 237
    :cond_2
    iget-object p1, p1, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mQuery:Ljava/lang/String;

    if-nez p1, :cond_3

    iget-object v1, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mQuery:Ljava/lang/String;

    if-nez v1, :cond_3

    return v0

    :cond_3
    if-eqz p1, :cond_4

    .line 240
    iget-object p0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mQuery:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_4
    :goto_0
    return v2
.end method

.method public hashCode()I
    .locals 2

    .line 248
    iget v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mProtocolType:I

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 249
    iget v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mLength:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 250
    iget-object p0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mQuery:Ljava/lang/String;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    :goto_0
    add-int/2addr v1, p0

    return v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 261
    iget p2, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mProtocolType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 262
    iget p2, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mLength:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 263
    iget p2, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mTransId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 264
    iget-object p0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;->mQuery:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

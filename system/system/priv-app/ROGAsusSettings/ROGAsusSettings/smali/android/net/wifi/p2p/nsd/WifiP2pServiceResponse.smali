.class public Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;
.super Ljava/lang/Object;
.source "WifiP2pServiceResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse$Status;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mData:[B

.field protected mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field protected mServiceType:I

.field protected mStatus:I

.field protected mTransId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 353
    new-instance v0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse$1;

    invoke-direct {v0}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse$1;-><init>()V

    sput-object v0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(IIILandroid/net/wifi/p2p/WifiP2pDevice;[B)V
    .locals 0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput p1, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mServiceType:I

    .line 121
    iput p2, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mStatus:I

    .line 122
    iput p3, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mTransId:I

    .line 123
    iput-object p4, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 124
    iput-object p5, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mData:[B

    return-void
.end method

.method private equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p1, :cond_1

    .line 316
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
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

    .line 300
    :cond_0
    instance-of v1, p1, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 304
    :cond_1
    check-cast p1, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;

    .line 306
    iget v1, p1, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mServiceType:I

    iget v3, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mServiceType:I

    if-ne v1, v3, :cond_2

    iget v1, p1, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mStatus:I

    iget v3, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mStatus:I

    if-ne v1, v3, :cond_2

    iget-object v1, p1, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v3, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 308
    invoke-direct {p0, v1, v3}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p1, p1, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mData:[B

    iget-object p0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mData:[B

    .line 309
    invoke-static {p1, p0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getRawData()[B
    .locals 0

    .line 165
    iget-object p0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mData:[B

    return-object p0
.end method

.method public getServiceType()I
    .locals 0

    .line 134
    iget p0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mServiceType:I

    return p0
.end method

.method public getSrcDevice()Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 0

    .line 176
    iget-object p0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    .line 324
    iget v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mServiceType:I

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 325
    iget v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mStatus:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 326
    iget v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mTransId:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 327
    iget-object v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    .line 328
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 329
    iget-object p0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mData:[B

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    :goto_1
    add-int/2addr v1, v2

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 287
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "serviceType:"

    .line 288
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mServiceType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, " status:"

    .line 289
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mStatus:I

    invoke-static {v1}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse$Status;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " srcAddr:"

    .line 290
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " data:"

    .line 291
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mData:[B

    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 292
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 340
    iget v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mServiceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 341
    iget v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 342
    iget v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mTransId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 343
    iget-object v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 344
    iget-object p2, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mData:[B

    if-eqz p2, :cond_1

    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_0

    .line 347
    :cond_0
    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 348
    iget-object p0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mData:[B

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 345
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return-void
.end method

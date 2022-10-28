.class Landroid/net/wifi/hotspot2/pps/UpdateParameter$1;
.super Ljava/lang/Object;
.source "UpdateParameter.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/hotspot2/pps/UpdateParameter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/hotspot2/pps/UpdateParameter;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/hotspot2/pps/UpdateParameter;
    .locals 2

    .line 385
    new-instance p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    invoke-direct {p0}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;-><init>()V

    .line 386
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->setUpdateIntervalInMinutes(J)V

    .line 387
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->setUpdateMethod(Ljava/lang/String;)V

    .line 388
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->setRestriction(Ljava/lang/String;)V

    .line 389
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->setServerUri(Ljava/lang/String;)V

    .line 390
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->setUsername(Ljava/lang/String;)V

    .line 391
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->setBase64EncodedPassword(Ljava/lang/String;)V

    .line 392
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->setTrustRootCertUrl(Ljava/lang/String;)V

    .line 393
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->setTrustRootCertSha256Fingerprint([B)V

    .line 394
    invoke-static {p1}, Landroid/net/wifi/ParcelUtil;->readCertificate(Landroid/os/Parcel;)Ljava/security/cert/X509Certificate;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->setCaCertificate(Ljava/security/cert/X509Certificate;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 382
    invoke-virtual {p0, p1}, Landroid/net/wifi/hotspot2/pps/UpdateParameter$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/net/wifi/hotspot2/pps/UpdateParameter;
    .locals 0

    .line 400
    new-array p0, p1, [Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 382
    invoke-virtual {p0, p1}, Landroid/net/wifi/hotspot2/pps/UpdateParameter$1;->newArray(I)[Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    move-result-object p0

    return-object p0
.end method

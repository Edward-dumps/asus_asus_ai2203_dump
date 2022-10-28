.class Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential$1;
.super Ljava/lang/Object;
.source "Credential.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 613
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;
    .locals 1

    .line 616
    new-instance p0, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;

    invoke-direct {p0}, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;-><init>()V

    .line 617
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->setCertType(Ljava/lang/String;)V

    .line 618
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->setCertSha256Fingerprint([B)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 613
    invoke-virtual {p0, p1}, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;
    .locals 0

    .line 624
    new-array p0, p1, [Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 613
    invoke-virtual {p0, p1}, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential$1;->newArray(I)[Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;

    move-result-object p0

    return-object p0
.end method

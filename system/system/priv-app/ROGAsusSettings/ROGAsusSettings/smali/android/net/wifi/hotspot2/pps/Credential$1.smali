.class Landroid/net/wifi/hotspot2/pps/Credential$1;
.super Ljava/lang/Object;
.source "Credential.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/hotspot2/pps/Credential;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/hotspot2/pps/Credential;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/hotspot2/pps/Credential;
    .locals 2

    .line 1123
    new-instance p0, Landroid/net/wifi/hotspot2/pps/Credential;

    invoke-direct {p0}, Landroid/net/wifi/hotspot2/pps/Credential;-><init>()V

    .line 1124
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/hotspot2/pps/Credential;->setCreationTimeInMillis(J)V

    .line 1125
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/hotspot2/pps/Credential;->setExpirationTimeInMillis(J)V

    .line 1126
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/hotspot2/pps/Credential;->setRealm(Ljava/lang/String;)V

    .line 1127
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/net/wifi/hotspot2/pps/Credential;->setCheckAaaServerCertStatus(Z)V

    const/4 v0, 0x0

    .line 1128
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;

    invoke-virtual {p0, v1}, Landroid/net/wifi/hotspot2/pps/Credential;->setUserCredential(Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;)V

    .line 1129
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;

    invoke-virtual {p0, v1}, Landroid/net/wifi/hotspot2/pps/Credential;->setCertCredential(Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;)V

    .line 1130
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;

    invoke-virtual {p0, v0}, Landroid/net/wifi/hotspot2/pps/Credential;->setSimCredential(Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;)V

    .line 1131
    invoke-static {p1}, Landroid/net/wifi/ParcelUtil;->readCertificates(Landroid/os/Parcel;)[Ljava/security/cert/X509Certificate;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/hotspot2/pps/Credential;->setCaCertificates([Ljava/security/cert/X509Certificate;)V

    .line 1132
    invoke-static {p1}, Landroid/net/wifi/ParcelUtil;->readCertificates(Landroid/os/Parcel;)[Ljava/security/cert/X509Certificate;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/hotspot2/pps/Credential;->setClientCertificateChain([Ljava/security/cert/X509Certificate;)V

    .line 1133
    invoke-static {p1}, Landroid/net/wifi/ParcelUtil;->readPrivateKey(Landroid/os/Parcel;)Ljava/security/PrivateKey;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/net/wifi/hotspot2/pps/Credential;->setClientPrivateKey(Ljava/security/PrivateKey;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1120
    invoke-virtual {p0, p1}, Landroid/net/wifi/hotspot2/pps/Credential$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/hotspot2/pps/Credential;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/net/wifi/hotspot2/pps/Credential;
    .locals 0

    .line 1139
    new-array p0, p1, [Landroid/net/wifi/hotspot2/pps/Credential;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1120
    invoke-virtual {p0, p1}, Landroid/net/wifi/hotspot2/pps/Credential$1;->newArray(I)[Landroid/net/wifi/hotspot2/pps/Credential;

    move-result-object p0

    return-object p0
.end method

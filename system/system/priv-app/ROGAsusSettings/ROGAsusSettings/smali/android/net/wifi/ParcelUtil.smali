.class public Landroid/net/wifi/ParcelUtil;
.super Ljava/lang/Object;
.source "ParcelUtil.java"


# direct methods
.method public static readCertificate(Landroid/os/Parcel;)Ljava/security/cert/X509Certificate;
    .locals 3

    .line 112
    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    const-string v1, "X.509"

    .line 118
    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 119
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 120
    invoke-virtual {v1, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p0

    check-cast p0, Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method public static readCertificates(Landroid/os/Parcel;)[Ljava/security/cert/X509Certificate;
    .locals 4

    .line 154
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 159
    :cond_0
    new-array v1, v0, [Ljava/security/cert/X509Certificate;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 161
    invoke-static {p0}, Landroid/net/wifi/ParcelUtil;->readCertificate(Landroid/os/Parcel;)Ljava/security/cert/X509Certificate;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static readPrivateKey(Landroid/os/Parcel;)Ljava/security/PrivateKey;
    .locals 3

    .line 72
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 77
    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p0

    .line 79
    :try_start_0
    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 80
    new-instance v2, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v2, p0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {v0, v2}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v1
.end method

.method public static writeCertificate(Landroid/os/Parcel;Ljava/security/cert/X509Certificate;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 97
    :try_start_0
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object p1
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const/4 p1, 0x0

    .line 102
    :goto_0
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method

.method public static writeCertificates(Landroid/os/Parcel;[Ljava/security/cert/X509Certificate;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 136
    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_1

    .line 141
    :cond_0
    array-length v1, p1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 143
    aget-object v1, p1, v0

    invoke-static {p0, v1}, Landroid/net/wifi/ParcelUtil;->writeCertificate(Landroid/os/Parcel;Ljava/security/cert/X509Certificate;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 137
    :cond_2
    :goto_1
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method public static writePrivateKey(Landroid/os/Parcel;Ljava/security/PrivateKey;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 55
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    .line 59
    :cond_0
    invoke-interface {p1}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    invoke-interface {p1}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method

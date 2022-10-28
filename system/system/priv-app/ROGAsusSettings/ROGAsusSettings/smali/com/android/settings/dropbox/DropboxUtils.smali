.class public final Lcom/android/settings/dropbox/DropboxUtils;
.super Ljava/lang/Object;
.source "DropboxUtils.java"


# direct methods
.method public static encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 70
    :cond_0
    :try_start_0
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Build;->getSerial()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&#$"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-%&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/dropbox/DropboxUtils;->makeHash(Ljava/lang/String;)[B

    move-result-object v2

    const-string v3, "AES"

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 71
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    const-string v3, "5soq,p9tjw7qq37-"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const-string v3, "AES/CBC/PKCS7Padding"

    .line 73
    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    const/4 v4, 0x1

    .line 74
    invoke-virtual {v3, v4, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    const-string v1, "UTF8"

    .line 76
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v3, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    const/16 v1, 0x8

    .line 77
    invoke-static {p0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method private static makeHash(Ljava/lang/String;)[B
    .locals 6

    .line 87
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    const-string v0, "MD5"

    .line 93
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 95
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    .line 96
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v3, v2}, Ljava/security/MessageDigest;->update([BII)V

    .line 98
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    .line 99
    array-length v0, p0

    new-array v1, v0, [B

    move v2, v3

    .line 100
    :goto_0
    array-length v4, p0

    if-ge v2, v4, :cond_1

    .line 101
    array-length v4, p0

    add-int/lit8 v4, v4, -0x1

    sub-int/2addr v4, v2

    aget-byte v5, p0, v2

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 103
    :cond_1
    div-int/lit8 p0, v0, 0x2

    aget-byte v2, v1, v3

    add-int/lit8 v0, v0, -0x1

    aget-byte v0, v1, v0

    and-int/2addr v0, v2

    int-to-byte v0, v0

    aput-byte v0, v1, p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v1
.end method

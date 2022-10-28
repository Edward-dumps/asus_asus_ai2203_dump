.class public final Landroid/net/wifi/hotspot2/pps/Credential;
.super Ljava/lang/Object;
.source "Credential.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;,
        Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;,
        Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/hotspot2/pps/Credential;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCaCertificates:[Ljava/security/cert/X509Certificate;

.field private mCertCredential:Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;

.field private mCheckAaaServerCertStatus:Z

.field private mClientCertificateChain:[Ljava/security/cert/X509Certificate;

.field private mClientPrivateKey:Ljava/security/PrivateKey;

.field private mCreationTimeInMillis:J

.field private mExpirationTimeInMillis:J

.field private mRealm:Ljava/lang/String;

.field private mSimCredential:Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;

.field private mUserCredential:Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1119
    new-instance v0, Landroid/net/wifi/hotspot2/pps/Credential$1;

    invoke-direct {v0}, Landroid/net/wifi/hotspot2/pps/Credential$1;-><init>()V

    sput-object v0, Landroid/net/wifi/hotspot2/pps/Credential;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 955
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x8000000000000000L

    .line 61
    iput-wide v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mCreationTimeInMillis:J

    .line 80
    iput-wide v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mExpirationTimeInMillis:J

    const/4 v0, 0x0

    .line 99
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mRealm:Ljava/lang/String;

    const/4 v1, 0x0

    .line 122
    iput-boolean v1, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mCheckAaaServerCertStatus:Z

    .line 462
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mUserCredential:Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;

    .line 628
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mCertCredential:Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;

    .line 845
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mSimCredential:Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;

    .line 866
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mCaCertificates:[Ljava/security/cert/X509Certificate;

    .line 913
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mClientCertificateChain:[Ljava/security/cert/X509Certificate;

    .line 934
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mClientPrivateKey:Ljava/security/PrivateKey;

    return-void
.end method

.method private static isPrivateKeyEquals(Ljava/security/PrivateKey;Ljava/security/PrivateKey;)Z
    .locals 4

    const/4 v0, 0x1

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_1

    goto :goto_1

    .line 1232
    :cond_1
    invoke-interface {p0}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1233
    invoke-interface {p0}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object p0

    invoke-interface {p1}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public static isX509CertificateEquals(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)Z
    .locals 1

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    .line 1256
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object p0

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_0
    return v0
.end method

.method private static isX509CertificatesEquals([Ljava/security/cert/X509Certificate;[Ljava/security/cert/X509Certificate;)Z
    .locals 5

    const/4 v0, 0x1

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_1

    goto :goto_1

    .line 1274
    :cond_1
    array-length v2, p0

    array-length v3, p1

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    move v2, v1

    .line 1278
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_4

    .line 1279
    aget-object v3, p0, v2

    aget-object v4, p1, v2

    invoke-static {v3, v4}, Landroid/net/wifi/hotspot2/pps/Credential;->isX509CertificateEquals(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)Z

    move-result v3

    if-nez v3, :cond_3

    return v1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return v0

    :cond_5
    :goto_1
    return v1
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1014
    :cond_0
    instance-of v1, p1, Landroid/net/wifi/hotspot2/pps/Credential;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 1018
    :cond_1
    check-cast p1, Landroid/net/wifi/hotspot2/pps/Credential;

    .line 1019
    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mRealm:Ljava/lang/String;

    iget-object v3, p1, Landroid/net/wifi/hotspot2/pps/Credential;->mRealm:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-wide v3, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mCreationTimeInMillis:J

    iget-wide v5, p1, Landroid/net/wifi/hotspot2/pps/Credential;->mCreationTimeInMillis:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_5

    iget-wide v3, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mExpirationTimeInMillis:J

    iget-wide v5, p1, Landroid/net/wifi/hotspot2/pps/Credential;->mExpirationTimeInMillis:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_5

    iget-boolean v1, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mCheckAaaServerCertStatus:Z

    iget-boolean v3, p1, Landroid/net/wifi/hotspot2/pps/Credential;->mCheckAaaServerCertStatus:Z

    if-ne v1, v3, :cond_5

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mUserCredential:Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;

    if-nez v1, :cond_2

    iget-object v1, p1, Landroid/net/wifi/hotspot2/pps/Credential;->mUserCredential:Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;

    if-nez v1, :cond_5

    goto :goto_0

    :cond_2
    iget-object v3, p1, Landroid/net/wifi/hotspot2/pps/Credential;->mUserCredential:Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;

    .line 1024
    invoke-virtual {v1, v3}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_0
    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mCertCredential:Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;

    if-nez v1, :cond_3

    iget-object v1, p1, Landroid/net/wifi/hotspot2/pps/Credential;->mCertCredential:Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;

    if-nez v1, :cond_5

    goto :goto_1

    :cond_3
    iget-object v3, p1, Landroid/net/wifi/hotspot2/pps/Credential;->mCertCredential:Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;

    .line 1026
    invoke-virtual {v1, v3}, Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_1
    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mSimCredential:Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;

    if-nez v1, :cond_4

    iget-object v1, p1, Landroid/net/wifi/hotspot2/pps/Credential;->mSimCredential:Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;

    if-nez v1, :cond_5

    goto :goto_2

    :cond_4
    iget-object v3, p1, Landroid/net/wifi/hotspot2/pps/Credential;->mSimCredential:Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;

    .line 1028
    invoke-virtual {v1, v3}, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_2
    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mCaCertificates:[Ljava/security/cert/X509Certificate;

    iget-object v3, p1, Landroid/net/wifi/hotspot2/pps/Credential;->mCaCertificates:[Ljava/security/cert/X509Certificate;

    .line 1029
    invoke-static {v1, v3}, Landroid/net/wifi/hotspot2/pps/Credential;->isX509CertificatesEquals([Ljava/security/cert/X509Certificate;[Ljava/security/cert/X509Certificate;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mClientCertificateChain:[Ljava/security/cert/X509Certificate;

    iget-object v3, p1, Landroid/net/wifi/hotspot2/pps/Credential;->mClientCertificateChain:[Ljava/security/cert/X509Certificate;

    .line 1030
    invoke-static {v1, v3}, Landroid/net/wifi/hotspot2/pps/Credential;->isX509CertificatesEquals([Ljava/security/cert/X509Certificate;[Ljava/security/cert/X509Certificate;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object p0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mClientPrivateKey:Ljava/security/PrivateKey;

    iget-object p1, p1, Landroid/net/wifi/hotspot2/pps/Credential;->mClientPrivateKey:Ljava/security/PrivateKey;

    .line 1031
    invoke-static {p0, p1}, Landroid/net/wifi/hotspot2/pps/Credential;->isPrivateKeyEquals(Ljava/security/PrivateKey;Ljava/security/PrivateKey;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_3

    :cond_5
    move v0, v2

    :goto_3
    return v0
.end method

.method public getUniqueId()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 1050
    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mUserCredential:Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->getUniqueId()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x1

    iget-object v2, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mCertCredential:Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mSimCredential:Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object p0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mRealm:Ljava/lang/String;

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    .line 1036
    iget-wide v1, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mCreationTimeInMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mExpirationTimeInMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mRealm:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mCheckAaaServerCertStatus:Z

    .line 1037
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mUserCredential:Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mCertCredential:Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mSimCredential:Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mClientPrivateKey:Ljava/security/PrivateKey;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mCaCertificates:[Ljava/security/cert/X509Certificate;

    .line 1038
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-object p0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mClientCertificateChain:[Ljava/security/cert/X509Certificate;

    .line 1039
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/16 v1, 0x9

    aput-object p0, v0, v1

    .line 1036
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public setCaCertificates([Ljava/security/cert/X509Certificate;)V
    .locals 0

    .line 887
    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mCaCertificates:[Ljava/security/cert/X509Certificate;

    return-void
.end method

.method public setCertCredential(Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;)V
    .locals 0

    .line 635
    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mCertCredential:Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;

    return-void
.end method

.method public setCheckAaaServerCertStatus(Z)V
    .locals 0

    .line 127
    iput-boolean p1, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mCheckAaaServerCertStatus:Z

    return-void
.end method

.method public setClientCertificateChain([Ljava/security/cert/X509Certificate;)V
    .locals 0

    .line 920
    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mClientCertificateChain:[Ljava/security/cert/X509Certificate;

    return-void
.end method

.method public setClientPrivateKey(Ljava/security/PrivateKey;)V
    .locals 0

    .line 941
    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mClientPrivateKey:Ljava/security/PrivateKey;

    return-void
.end method

.method public setCreationTimeInMillis(J)V
    .locals 0

    .line 66
    iput-wide p1, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mCreationTimeInMillis:J

    return-void
.end method

.method public setExpirationTimeInMillis(J)V
    .locals 0

    .line 85
    iput-wide p1, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mExpirationTimeInMillis:J

    return-void
.end method

.method public setRealm(Ljava/lang/String;)V
    .locals 0

    .line 106
    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mRealm:Ljava/lang/String;

    return-void
.end method

.method public setSimCredential(Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;)V
    .locals 0

    .line 852
    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mSimCredential:Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;

    return-void
.end method

.method public setUserCredential(Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;)V
    .locals 0

    .line 469
    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mUserCredential:Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 1056
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Realm: "

    .line 1057
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mRealm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "CreationTime: "

    .line 1058
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mCreationTimeInMillis:J

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v2, v2, v4

    const-string v3, "Not specified"

    if-eqz v2, :cond_0

    .line 1059
    new-instance v2, Ljava/util/Date;

    iget-wide v6, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mCreationTimeInMillis:J

    invoke-direct {v2, v6, v7}, Ljava/util/Date;-><init>(J)V

    goto :goto_0

    :cond_0
    move-object v2, v3

    .line 1058
    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1059
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ExpirationTime: "

    .line 1060
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mExpirationTimeInMillis:J

    cmp-long v2, v6, v4

    if-eqz v2, :cond_1

    .line 1061
    new-instance v3, Ljava/util/Date;

    iget-wide v4, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mExpirationTimeInMillis:J

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 1060
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1061
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "CheckAAAServerStatus: "

    .line 1062
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mCheckAaaServerCertStatus:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1063
    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mUserCredential:Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;

    if-eqz v1, :cond_2

    const-string v1, "UserCredential Begin ---\n"

    .line 1064
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1065
    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mUserCredential:Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "UserCredential End ---\n"

    .line 1066
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1068
    :cond_2
    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mCertCredential:Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;

    if-eqz v1, :cond_3

    const-string v1, "CertificateCredential Begin ---\n"

    .line 1069
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1070
    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mCertCredential:Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "CertificateCredential End ---\n"

    .line 1071
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1073
    :cond_3
    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mSimCredential:Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;

    if-eqz v1, :cond_4

    const-string v1, "SIMCredential Begin ---\n"

    .line 1074
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1075
    iget-object p0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mSimCredential:Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "SIMCredential End ---\n"

    .line 1076
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1078
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 997
    iget-wide v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mCreationTimeInMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 998
    iget-wide v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mExpirationTimeInMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 999
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mRealm:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1000
    iget-boolean v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mCheckAaaServerCertStatus:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1001
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mUserCredential:Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1002
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mCertCredential:Landroid/net/wifi/hotspot2/pps/Credential$CertificateCredential;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1003
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mSimCredential:Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1004
    iget-object p2, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mCaCertificates:[Ljava/security/cert/X509Certificate;

    invoke-static {p1, p2}, Landroid/net/wifi/ParcelUtil;->writeCertificates(Landroid/os/Parcel;[Ljava/security/cert/X509Certificate;)V

    .line 1005
    iget-object p2, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mClientCertificateChain:[Ljava/security/cert/X509Certificate;

    invoke-static {p1, p2}, Landroid/net/wifi/ParcelUtil;->writeCertificates(Landroid/os/Parcel;[Ljava/security/cert/X509Certificate;)V

    .line 1006
    iget-object p0, p0, Landroid/net/wifi/hotspot2/pps/Credential;->mClientPrivateKey:Ljava/security/PrivateKey;

    invoke-static {p1, p0}, Landroid/net/wifi/ParcelUtil;->writePrivateKey(Landroid/os/Parcel;Ljava/security/PrivateKey;)V

    return-void
.end method

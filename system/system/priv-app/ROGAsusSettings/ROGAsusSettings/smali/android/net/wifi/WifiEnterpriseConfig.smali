.class public Landroid/net/wifi/WifiEnterpriseConfig;
.super Ljava/lang/Object;
.source "WifiEnterpriseConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiEnterpriseConfig$Phase2;,
        Landroid/net/wifi/WifiEnterpriseConfig$Eap;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/WifiEnterpriseConfig;",
            ">;"
        }
    .end annotation
.end field

.field private static final SUPPLICANT_CONFIG_KEYS:[Ljava/lang/String;

.field private static final UNQUOTED_KEYS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCaCerts:[Ljava/security/cert/X509Certificate;

.field private mClientCertificateChain:[Ljava/security/cert/X509Certificate;

.field private mClientPrivateKey:Ljava/security/PrivateKey;

.field private mEapMethod:I

.field private mFields:Ljava/util/HashMap;
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIsAppInstalledCaCert:Z

.field private mIsAppInstalledDeviceKeyAndCert:Z

.field private mKeyChainAlias:Ljava/lang/String;

.field private mOcsp:I

.field private mPhase2Method:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const-string v0, "identity"

    const-string v1, "anonymous_identity"

    const-string v2, "password"

    const-string v3, "client_cert"

    const-string v4, "ca_cert"

    const-string v5, "subject_match"

    const-string v6, "engine"

    const-string v7, "engine_id"

    const-string v8, "key_id"

    const-string v9, "altsubject_match"

    const-string v10, "domain_suffix_match"

    const-string v11, "ca_path"

    .line 229
    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/WifiEnterpriseConfig;->SUPPLICANT_CONFIG_KEYS:[Ljava/lang/String;

    const-string v0, "engine"

    const-string v1, "proactive_key_caching"

    const-string v2, "eap_erp"

    .line 247
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/WifiEnterpriseConfig;->UNQUOTED_KEYS:Ljava/util/List;

    .line 355
    new-instance v0, Landroid/net/wifi/WifiEnterpriseConfig$1;

    invoke-direct {v0}, Landroid/net/wifi/WifiEnterpriseConfig$1;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiEnterpriseConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 226
    iput v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mOcsp:I

    .line 250
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    const/4 v1, -0x1

    .line 255
    iput v1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    .line 256
    iput v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mPhase2Method:I

    .line 257
    iput-boolean v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mIsAppInstalledDeviceKeyAndCert:Z

    .line 258
    iput-boolean v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mIsAppInstalledCaCert:Z

    return-void
.end method

.method static synthetic access$000(Landroid/net/wifi/WifiEnterpriseConfig;)Ljava/util/HashMap;
    .locals 0

    .line 50
    iget-object p0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$102(Landroid/net/wifi/WifiEnterpriseConfig;I)I
    .locals 0

    .line 50
    iput p1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    return p1
.end method

.method static synthetic access$202(Landroid/net/wifi/WifiEnterpriseConfig;I)I
    .locals 0

    .line 50
    iput p1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mPhase2Method:I

    return p1
.end method

.method static synthetic access$302(Landroid/net/wifi/WifiEnterpriseConfig;[Ljava/security/cert/X509Certificate;)[Ljava/security/cert/X509Certificate;
    .locals 0

    .line 50
    iput-object p1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mCaCerts:[Ljava/security/cert/X509Certificate;

    return-object p1
.end method

.method static synthetic access$402(Landroid/net/wifi/WifiEnterpriseConfig;Ljava/security/PrivateKey;)Ljava/security/PrivateKey;
    .locals 0

    .line 50
    iput-object p1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientPrivateKey:Ljava/security/PrivateKey;

    return-object p1
.end method

.method static synthetic access$502(Landroid/net/wifi/WifiEnterpriseConfig;[Ljava/security/cert/X509Certificate;)[Ljava/security/cert/X509Certificate;
    .locals 0

    .line 50
    iput-object p1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientCertificateChain:[Ljava/security/cert/X509Certificate;

    return-object p1
.end method

.method static synthetic access$602(Landroid/net/wifi/WifiEnterpriseConfig;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 50
    iput-object p1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mKeyChainAlias:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$702(Landroid/net/wifi/WifiEnterpriseConfig;Z)Z
    .locals 0

    .line 50
    iput-boolean p1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mIsAppInstalledDeviceKeyAndCert:Z

    return p1
.end method

.method static synthetic access$802(Landroid/net/wifi/WifiEnterpriseConfig;Z)Z
    .locals 0

    .line 50
    iput-boolean p1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mIsAppInstalledCaCert:Z

    return p1
.end method

.method static synthetic access$902(Landroid/net/wifi/WifiEnterpriseConfig;I)I
    .locals 0

    .line 50
    iput p1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mOcsp:I

    return p1
.end method

.method private convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1250
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static decodeCaCertificateAlias(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 687
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    shr-int/lit8 v0, v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    move v2, v1

    .line 688
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    add-int/lit8 v3, v1, 0x2

    .line 689
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x10

    invoke-static {v1, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    move v1, v3

    goto :goto_0

    .line 692
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    .line 694
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    return-object p0
.end method

.method public static encodeCaCertificateAlias(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 674
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    .line 675
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 676
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-byte v4, p0, v3

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    and-int/lit16 v4, v4, 0xff

    .line 677
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v2

    const-string v4, "%02x"

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 679
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1278
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 1280
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "NULL"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1282
    :cond_0
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiEnterpriseConfig;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1283
    invoke-virtual {p0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1284
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0

    :cond_2
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method public static isSuiteBCipherCert(Ljava/security/cert/X509Certificate;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1551
    :cond_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSigAlgOID()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1.2.840.113549.1.1.12"

    .line 1561
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 1563
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    instance-of v1, v1, Ljava/security/interfaces/RSAPublicKey;

    if-eqz v1, :cond_2

    .line 1564
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p0

    check-cast p0, Ljava/security/interfaces/RSAPublicKey;

    .line 1565
    invoke-interface {p0}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1566
    invoke-interface {p0}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    const/16 v1, 0xc00

    if-lt p0, v1, :cond_2

    return v3

    :cond_1
    const-string v2, "1.2.840.10045.4.3.3"

    .line 1570
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1572
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    instance-of v1, v1, Ljava/security/interfaces/ECPublicKey;

    if-eqz v1, :cond_2

    .line 1573
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p0

    check-cast p0, Ljava/security/interfaces/ECPublicKey;

    .line 1574
    invoke-interface {p0}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 1576
    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1577
    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    const/16 v1, 0x180

    if-lt p0, v1, :cond_2

    return v3

    :cond_2
    return v0
.end method

.method private removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1240
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 1241
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x1

    if-le p0, v0, :cond_1

    const/4 v1, 0x0

    .line 1242
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x22

    if-ne v1, v2, :cond_1

    sub-int/2addr p0, v0

    .line 1243
    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_1

    .line 1244
    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object p1
.end method

.method private setFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1310
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1311
    iget-object p0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    const-string p2, "NULL"

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1314
    :cond_0
    sget-object v0, Landroid/net/wifi/WifiEnterpriseConfig;->UNQUOTED_KEYS:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Landroid/net/wifi/WifiEnterpriseConfig;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 1317
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1319
    :goto_0
    iget-object p0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getAnonymousIdentity()Ljava/lang/String;
    .locals 1

    const-string v0, "anonymous_identity"

    .line 648
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCaCertificate()Ljava/security/cert/X509Certificate;
    .locals 1

    .line 817
    iget-object p0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mCaCerts:[Ljava/security/cert/X509Certificate;

    if-eqz p0, :cond_0

    array-length v0, p0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 818
    aget-object p0, p0, v0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCaCertificateAliases()[Ljava/lang/String;
    .locals 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const-string v0, "ca_cert"

    .line 762
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "keystore://CACERT_"

    .line 763
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    new-array v1, v5, [Ljava/lang/String;

    .line 765
    invoke-direct {p0, v0, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v4

    return-object v1

    :cond_0
    const-string p0, "keystores://"

    .line 766
    invoke-virtual {v1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    const/16 p0, 0xc

    .line 767
    invoke-virtual {v1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, " "

    .line 769
    invoke-static {p0, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 770
    :goto_0
    array-length v1, p0

    if-ge v4, v1, :cond_2

    .line 771
    aget-object v1, p0, v4

    invoke-static {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->decodeCaCertificateAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p0, v4

    .line 772
    aget-object v1, p0, v4

    const-string v2, "CACERT_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 773
    aget-object v1, p0, v4

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p0, v4

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 776
    :cond_2
    array-length v1, p0

    if-eqz v1, :cond_3

    move-object v0, p0

    :cond_3
    return-object v0

    .line 778
    :cond_4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_1

    :cond_5
    new-array v0, v5, [Ljava/lang/String;

    aput-object v1, v0, v4

    :goto_1
    return-object v0
.end method

.method public getCaPath()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const-string v0, "ca_path"

    .line 912
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getClientCertificate()Ljava/security/cert/X509Certificate;
    .locals 1

    .line 1066
    iget-object p0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientCertificateChain:[Ljava/security/cert/X509Certificate;

    if-eqz p0, :cond_0

    array-length v0, p0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 1067
    aget-object p0, p0, v0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getClientCertificateAlias()Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const-string v0, "client_cert"

    const-string v1, "keystore://USRCERT_"

    .line 946
    invoke-direct {p0, v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDomainSuffixMatch()Ljava/lang/String;
    .locals 1

    const-string v0, "domain_suffix_match"

    .line 1190
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getEapMethod()I
    .locals 0

    .line 581
    iget p0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    return p0
.end method

.method public getFieldValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    .line 1297
    invoke-direct {p0, p1, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getIdentity()Ljava/lang/String;
    .locals 1

    const-string v0, "identity"

    .line 631
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getOcsp()I
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1441
    iget p0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mOcsp:I

    return p0
.end method

.method public getPhase2Method()I
    .locals 0

    .line 615
    iget p0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mPhase2Method:I

    return p0
.end method

.method public isAuthenticationSimBased()Z
    .locals 5

    .line 1451
    iget v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_4

    const/4 v2, 0x5

    if-eq v0, v2, :cond_4

    const/4 v3, 0x6

    if-ne v0, v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    if-nez v0, :cond_3

    .line 1455
    iget p0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mPhase2Method:I

    if-eq p0, v2, :cond_2

    if-eq p0, v3, :cond_2

    const/4 v0, 0x7

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v4

    :cond_2
    :goto_0
    return v1

    :cond_3
    return v4

    :cond_4
    :goto_1
    return v1
.end method

.method public setAnonymousIdentity(Ljava/lang/String;)V
    .locals 1

    const-string v0, "anonymous_identity"

    .line 640
    invoke-virtual {p0, v0, p1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCaCertificateAlias(Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation

    const-string v0, "ca_cert"

    const-string v1, "keystore://CACERT_"

    .line 710
    invoke-direct {p0, v0, p1, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCaCertificateAliases([Ljava/lang/String;)V
    .locals 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const-string v0, "ca_cert"

    if-nez p1, :cond_0

    const/4 p1, 0x0

    const-string v1, "keystore://CACERT_"

    .line 727
    invoke-direct {p0, v0, p1, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 728
    :cond_0
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 730
    aget-object p1, p1, v2

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAlias(Ljava/lang/String;)V

    goto :goto_1

    .line 733
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 734
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_3

    if-lez v2, :cond_2

    const-string v3, " "

    .line 736
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 738
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CACERT_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, p1, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/wifi/WifiEnterpriseConfig;->encodeCaCertificateAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 740
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "keystores://"

    invoke-direct {p0, v0, p1, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public setCaPath(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const-string v0, "ca_path"

    .line 901
    invoke-virtual {p0, v0, p1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setClientCertificateAlias(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const-string v0, "client_cert"

    const-string v1, "keystore://USRCERT_"

    .line 926
    invoke-direct {p0, v0, p1, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "key_id"

    const-string v1, "USRPKEY_"

    .line 927
    invoke-direct {p0, v0, p1, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v0, "engine_id"

    const-string v1, "engine"

    if-eqz p1, :cond_0

    const-string p1, "0"

    .line 930
    invoke-virtual {p0, v1, p1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, ""

    .line 931
    invoke-virtual {p0, v0, p1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "1"

    .line 933
    invoke-virtual {p0, v1, p1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "keystore"

    .line 934
    invoke-virtual {p0, v0, p1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setDomainSuffixMatch(Ljava/lang/String;)V
    .locals 1

    const-string v0, "domain_suffix_match"

    .line 1182
    invoke-virtual {p0, v0, p1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setEapMethod(I)V
    .locals 1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 572
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unknown EAP method"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 555
    :pswitch_0
    iput p1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    .line 556
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto :goto_0

    .line 560
    :pswitch_1
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    .line 568
    :pswitch_2
    iput p1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    const-string p1, "proactive_key_caching"

    const-string v0, "1"

    .line 569
    invoke-virtual {p0, p1, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setFieldValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, ""

    .line 1330
    invoke-direct {p0, p1, p2, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setIdentity(Ljava/lang/String;)V
    .locals 2

    const-string v0, "identity"

    const-string v1, ""

    .line 623
    invoke-direct {p0, v0, p1, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setOcsp(I)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    .line 1429
    iput p1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mOcsp:I

    return-void

    .line 1431
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid OCSP type."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 1

    const-string v0, "password"

    .line 656
    invoke-virtual {p0, v0, p1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setPhase2Method(I)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    .line 606
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unknown Phase 2 method"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 603
    :pswitch_0
    iput p1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mPhase2Method:I

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1335
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1336
    iget-object v1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "\n"

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v4, "password"

    .line 1338
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "<removed>"

    goto :goto_1

    :cond_0
    iget-object v4, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1339
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1341
    :cond_1
    iget v1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    if-ltz v1, :cond_2

    sget-object v2, Landroid/net/wifi/WifiEnterpriseConfig$Eap;->strings:[Ljava/lang/String;

    array-length v4, v2

    if-ge v1, v4, :cond_2

    const-string v1, "eap_method: "

    .line 1342
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1344
    :cond_2
    iget v1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mPhase2Method:I

    if-lez v1, :cond_3

    sget-object v2, Landroid/net/wifi/WifiEnterpriseConfig$Phase2;->strings:[Ljava/lang/String;

    array-length v4, v2

    if-ge v1, v4, :cond_3

    const-string v1, "phase2_method: "

    .line 1345
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mPhase2Method:I

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    const-string v1, " ocsp: "

    .line 1347
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget p0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mOcsp:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1348
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 338
    iget-object p2, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 339
    iget-object p2, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 340
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 341
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 344
    :cond_0
    iget p2, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 345
    iget p2, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mPhase2Method:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 346
    iget-object p2, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mCaCerts:[Ljava/security/cert/X509Certificate;

    invoke-static {p1, p2}, Landroid/net/wifi/ParcelUtil;->writeCertificates(Landroid/os/Parcel;[Ljava/security/cert/X509Certificate;)V

    .line 347
    iget-object p2, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientPrivateKey:Ljava/security/PrivateKey;

    invoke-static {p1, p2}, Landroid/net/wifi/ParcelUtil;->writePrivateKey(Landroid/os/Parcel;Ljava/security/PrivateKey;)V

    .line 348
    iget-object p2, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientCertificateChain:[Ljava/security/cert/X509Certificate;

    invoke-static {p1, p2}, Landroid/net/wifi/ParcelUtil;->writeCertificates(Landroid/os/Parcel;[Ljava/security/cert/X509Certificate;)V

    .line 349
    iget-object p2, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mKeyChainAlias:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 350
    iget-boolean p2, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mIsAppInstalledDeviceKeyAndCert:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 351
    iget-boolean p2, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mIsAppInstalledCaCert:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 352
    iget p0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mOcsp:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

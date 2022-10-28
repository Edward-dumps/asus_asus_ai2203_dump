.class public final Landroid/net/wifi/WifiNetworkSpecifier$Builder;
.super Ljava/lang/Object;
.source "WifiNetworkSpecifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiNetworkSpecifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field private static final MATCH_ALL_BSSID_PATTERN:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Landroid/net/MacAddress;",
            "Landroid/net/MacAddress;",
            ">;"
        }
    .end annotation
.end field

.field private static final MATCH_EXACT_BSSID_PATTERN_MASK:Landroid/net/MacAddress;

.field private static final MATCH_NO_BSSID_PATTERN1:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Landroid/net/MacAddress;",
            "Landroid/net/MacAddress;",
            ">;"
        }
    .end annotation
.end field

.field private static final MATCH_NO_BSSID_PATTERN2:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Landroid/net/MacAddress;",
            "Landroid/net/MacAddress;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBand:I

.field private mBssidPatternMatcher:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Landroid/net/MacAddress;",
            "Landroid/net/MacAddress;",
            ">;"
        }
    .end annotation
.end field

.field private mIsEnhancedOpen:Z

.field private mIsHiddenSSID:Z

.field private mSsidPatternMatcher:Landroid/os/PatternMatcher;

.field private mWpa2EnterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

.field private mWpa2PskPassphrase:Ljava/lang/String;

.field private mWpa3EnterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

.field private mWpa3EnterpriseType:I

.field private mWpa3SaePassphrase:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 107
    new-instance v0, Landroid/util/Pair;

    sget-object v1, Landroid/net/MacAddress;->BROADCAST_ADDRESS:Landroid/net/MacAddress;

    invoke-direct {v0, v1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->MATCH_NO_BSSID_PATTERN1:Landroid/util/Pair;

    .line 109
    new-instance v0, Landroid/util/Pair;

    sget-object v1, Landroid/net/wifi/WifiManager;->ALL_ZEROS_MAC_ADDRESS:Landroid/net/MacAddress;

    sget-object v2, Landroid/net/MacAddress;->BROADCAST_ADDRESS:Landroid/net/MacAddress;

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->MATCH_NO_BSSID_PATTERN2:Landroid/util/Pair;

    .line 111
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->MATCH_ALL_BSSID_PATTERN:Landroid/util/Pair;

    .line 113
    sget-object v0, Landroid/net/MacAddress;->BROADCAST_ADDRESS:Landroid/net/MacAddress;

    sput-object v0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->MATCH_EXACT_BSSID_PATTERN_MASK:Landroid/net/MacAddress;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 160
    iput v0, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mWpa3EnterpriseType:I

    const/4 v1, 0x0

    .line 172
    iput-object v1, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mSsidPatternMatcher:Landroid/os/PatternMatcher;

    .line 173
    iput-object v1, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mBssidPatternMatcher:Landroid/util/Pair;

    .line 174
    iput-boolean v0, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mIsEnhancedOpen:Z

    .line 175
    iput-object v1, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mWpa2PskPassphrase:Ljava/lang/String;

    .line 176
    iput-object v1, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mWpa3SaePassphrase:Ljava/lang/String;

    .line 177
    iput-object v1, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mWpa2EnterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 178
    iput-object v1, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mWpa3EnterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 179
    iput-boolean v0, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mIsHiddenSSID:Z

    const/4 v0, -0x1

    .line 180
    iput v0, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mBand:I

    return-void
.end method

.method private buildWifiConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 4

    .line 474
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 476
    iget-object v1, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mSsidPatternMatcher:Landroid/os/PatternMatcher;

    invoke-virtual {v1}, Landroid/os/PatternMatcher;->getType()I

    move-result v1

    if-nez v1, :cond_0

    .line 477
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mSsidPatternMatcher:Landroid/os/PatternMatcher;

    invoke-virtual {v3}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 479
    :cond_0
    iget-object v1, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mBssidPatternMatcher:Landroid/util/Pair;

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    sget-object v3, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->MATCH_EXACT_BSSID_PATTERN_MASK:Landroid/net/MacAddress;

    if-ne v2, v3, :cond_1

    .line 480
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/net/MacAddress;

    invoke-virtual {v1}, Landroid/net/MacAddress;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 482
    :cond_1
    invoke-direct {p0, v0}, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->setSecurityParamsInWifiConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    .line 483
    iget-boolean p0, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mIsHiddenSSID:Z

    iput-boolean p0, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    return-object v0
.end method

.method private hasSetAnyPattern()Z
    .locals 1

    .line 488
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mSsidPatternMatcher:Landroid/os/PatternMatcher;

    if-nez v0, :cond_1

    iget-object p0, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mBssidPatternMatcher:Landroid/util/Pair;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private hasSetMatchAllPattern()Z
    .locals 2

    .line 516
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mSsidPatternMatcher:Landroid/os/PatternMatcher;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mBssidPatternMatcher:Landroid/util/Pair;

    sget-object v0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->MATCH_ALL_BSSID_PATTERN:Landroid/util/Pair;

    .line 517
    invoke-virtual {p0, v0}, Landroid/util/Pair;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private hasSetMatchNonePattern()Z
    .locals 3

    .line 502
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mSsidPatternMatcher:Landroid/os/PatternMatcher;

    invoke-virtual {v0}, Landroid/os/PatternMatcher;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mSsidPatternMatcher:Landroid/os/PatternMatcher;

    .line 503
    invoke-virtual {v0}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 506
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mBssidPatternMatcher:Landroid/util/Pair;

    sget-object v2, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->MATCH_NO_BSSID_PATTERN1:Landroid/util/Pair;

    invoke-virtual {v0, v2}, Landroid/util/Pair;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 509
    :cond_1
    iget-object p0, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mBssidPatternMatcher:Landroid/util/Pair;

    sget-object v0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->MATCH_NO_BSSID_PATTERN2:Landroid/util/Pair;

    invoke-virtual {p0, v0}, Landroid/util/Pair;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private setMatchAnyPatternIfUnset()V
    .locals 3

    .line 492
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mSsidPatternMatcher:Landroid/os/PatternMatcher;

    if-nez v0, :cond_0

    .line 493
    new-instance v0, Landroid/os/PatternMatcher;

    const/4 v1, 0x2

    const-string v2, ".*"

    invoke-direct {v0, v2, v1}, Landroid/os/PatternMatcher;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mSsidPatternMatcher:Landroid/os/PatternMatcher;

    .line 496
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mBssidPatternMatcher:Landroid/util/Pair;

    if-nez v0, :cond_1

    .line 497
    sget-object v0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->MATCH_ALL_BSSID_PATTERN:Landroid/util/Pair;

    iput-object v0, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mBssidPatternMatcher:Landroid/util/Pair;

    :cond_1
    return-void
.end method

.method private setSecurityParamsInWifiConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    .locals 4

    .line 431
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mWpa2PskPassphrase:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x2

    const-string v2, "\""

    if-nez v0, :cond_0

    .line 432
    invoke-virtual {p1, v1}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    .line 434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mWpa2PskPassphrase:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_1

    .line 435
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mWpa3SaePassphrase:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x4

    .line 436
    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    .line 438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mWpa3SaePassphrase:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_1

    .line 439
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mWpa2EnterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    .line 440
    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    .line 441
    iget-object p0, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mWpa2EnterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iput-object p0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    goto :goto_1

    .line 442
    :cond_2
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mWpa3EnterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-eqz v0, :cond_5

    .line 443
    iget v2, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mWpa3EnterpriseType:I

    const/4 v3, 0x5

    if-nez v2, :cond_3

    .line 444
    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mWpa3EnterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 446
    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v0

    .line 445
    invoke-static {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->isSuiteBCipherCert(Ljava/security/cert/X509Certificate;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mWpa3EnterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 448
    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v0

    .line 447
    invoke-static {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->isSuiteBCipherCert(Ljava/security/cert/X509Certificate;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 450
    invoke-virtual {p1, v3}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    goto :goto_0

    .line 452
    :cond_3
    iget v0, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mWpa3EnterpriseType:I

    if-ne v0, v1, :cond_4

    .line 454
    invoke-virtual {p1, v3}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    goto :goto_0

    :cond_4
    const/16 v0, 0x9

    .line 458
    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    .line 461
    :goto_0
    iget-object p0, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mWpa3EnterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iput-object p0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    goto :goto_1

    .line 462
    :cond_5
    iget-boolean p0, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mIsEnhancedOpen:Z

    if-eqz p0, :cond_6

    const/4 p0, 0x6

    .line 463
    invoke-virtual {p1, p0}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    goto :goto_1

    :cond_6
    const/4 p0, 0x0

    .line 465
    invoke-virtual {p1, p0}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    :goto_1
    return-void
.end method

.method private validateSecurityParams()V
    .locals 4

    .line 525
    iget-boolean v0, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mIsEnhancedOpen:Z

    const/4 v1, 0x0

    add-int/2addr v0, v1

    .line 526
    iget-object v2, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mWpa2PskPassphrase:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 527
    iget-object v2, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mWpa3SaePassphrase:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 528
    iget-object v2, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mWpa2EnterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    add-int/2addr v0, v2

    .line 529
    iget-object p0, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mWpa3EnterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-eqz p0, :cond_1

    move v1, v3

    :cond_1
    add-int/2addr v0, v1

    if-gt v0, v3, :cond_2

    return-void

    .line 531
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "only one of setIsEnhancedOpen, setWpa2Passphrase,setWpa3Passphrase, setWpa2EnterpriseConfig or setWpa3EnterpriseConfig can be invoked for network specifier"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public build()Landroid/net/wifi/WifiNetworkSpecifier;
    .locals 4

    .line 607
    invoke-direct {p0}, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->hasSetAnyPattern()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_1

    iget v0, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mBand:I

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 608
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "one of setSsidPattern/setSsid/setBssidPattern/setBssid/setBand should be invoked for specifier"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 611
    :cond_1
    :goto_0
    invoke-direct {p0}, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->setMatchAnyPatternIfUnset()V

    .line 612
    invoke-direct {p0}, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->hasSetMatchNonePattern()Z

    move-result v0

    if-nez v0, :cond_6

    .line 615
    invoke-direct {p0}, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->hasSetMatchAllPattern()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mBand:I

    if-eq v0, v1, :cond_2

    goto :goto_1

    .line 616
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "cannot set match-all pattern for specifier"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 618
    :cond_3
    :goto_1
    iget-boolean v0, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mIsHiddenSSID:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mSsidPatternMatcher:Landroid/os/PatternMatcher;

    invoke-virtual {v0}, Landroid/os/PatternMatcher;->getType()I

    move-result v0

    if-nez v0, :cond_4

    goto :goto_2

    .line 619
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "setSsid should also be invoked when setIsHiddenSsid is invoked for network specifier"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 622
    :cond_5
    :goto_2
    invoke-direct {p0}, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->validateSecurityParams()V

    .line 624
    new-instance v0, Landroid/net/wifi/WifiNetworkSpecifier;

    iget-object v1, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mSsidPatternMatcher:Landroid/os/PatternMatcher;

    iget-object v2, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mBssidPatternMatcher:Landroid/util/Pair;

    iget v3, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mBand:I

    .line 628
    invoke-direct {p0}, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->buildWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p0

    invoke-direct {v0, v1, v2, v3, p0}, Landroid/net/wifi/WifiNetworkSpecifier;-><init>(Landroid/os/PatternMatcher;Landroid/util/Pair;ILandroid/net/wifi/WifiConfiguration;)V

    return-object v0

    .line 613
    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "cannot set match-none pattern for specifier"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setBand(I)Landroid/net/wifi/WifiNetworkSpecifier$Builder;
    .locals 2

    .line 422
    invoke-static {p1}, Landroid/net/wifi/WifiNetworkSpecifier;->validateBand(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 425
    iput p1, p0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->mBand:I

    return-object p0

    .line 423
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected band in setBand : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

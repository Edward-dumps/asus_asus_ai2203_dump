.class public final Landroid/net/wifi/hotspot2/PasspointConfiguration;
.super Ljava/lang/Object;
.source "PasspointConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/hotspot2/PasspointConfiguration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAaaServerTrustedNames:[Ljava/lang/String;

.field private mCarrierId:I

.field private mCredential:Landroid/net/wifi/hotspot2/pps/Credential;

.field private mCredentialPriority:I

.field private mDecoratedIdentityPrefix:Ljava/lang/String;

.field private mHomeSp:Landroid/net/wifi/hotspot2/pps/HomeSp;

.field private mIsAutojoinEnabled:Z

.field private mIsCarrierMerged:Z

.field private mIsEnhancedMacRandomizationEnabled:Z

.field private mIsMacRandomizationEnabled:Z

.field private mIsOemPaid:Z

.field private mIsOemPrivate:Z

.field private mMeteredOverride:I

.field private mPolicy:Landroid/net/wifi/hotspot2/pps/Policy;

.field private mServiceFriendlyNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSubscriptionCreationTimeInMillis:J

.field private mSubscriptionExpirationTimeMillis:J

.field private mSubscriptionId:I

.field private mSubscriptionType:Ljava/lang/String;

.field private mSubscriptionUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

.field private mTrustRootCertList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private mUpdateIdentifier:I

.field private mUsageLimitDataLimit:J

.field private mUsageLimitStartTimeInMillis:J

.field private mUsageLimitTimeLimitInMinutes:J

.field private mUsageLimitUsageTimePeriodInMinutes:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 951
    new-instance v0, Landroid/net/wifi/hotspot2/PasspointConfiguration$1;

    invoke-direct {v0}, Landroid/net/wifi/hotspot2/PasspointConfiguration$1;-><init>()V

    sput-object v0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 671
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 82
    iput-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mHomeSp:Landroid/net/wifi/hotspot2/pps/HomeSp;

    .line 100
    iput-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mAaaServerTrustedNames:[Ljava/lang/String;

    .line 123
    iput-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mCredential:Landroid/net/wifi/hotspot2/pps/Credential;

    .line 144
    iput-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mPolicy:Landroid/net/wifi/hotspot2/pps/Policy;

    .line 161
    iput-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    .line 180
    iput-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mTrustRootCertList:Ljava/util/Map;

    const/high16 v1, -0x80000000

    .line 200
    iput v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUpdateIdentifier:I

    .line 219
    iput v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mCredentialPriority:I

    const-wide/high16 v1, -0x8000000000000000L

    .line 239
    iput-wide v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionCreationTimeInMillis:J

    .line 259
    iput-wide v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionExpirationTimeMillis:J

    .line 281
    iput-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionType:Ljava/lang/String;

    .line 300
    iput-wide v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitUsageTimePeriodInMinutes:J

    .line 320
    iput-wide v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitStartTimeInMillis:J

    .line 340
    iput-wide v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitDataLimit:J

    .line 358
    iput-wide v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitTimeLimitInMinutes:J

    .line 377
    iput-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mServiceFriendlyNames:Ljava/util/Map;

    const/4 v0, -0x1

    .line 420
    iput v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mCarrierId:I

    .line 426
    iput v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionId:I

    const/4 v0, 0x1

    .line 469
    iput-boolean v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mIsAutojoinEnabled:Z

    .line 476
    iput-boolean v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mIsMacRandomizationEnabled:Z

    const/4 v0, 0x0

    .line 481
    iput-boolean v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mIsEnhancedMacRandomizationEnabled:Z

    .line 514
    iput v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mMeteredOverride:I

    return-void
.end method

.method static synthetic access$002(Landroid/net/wifi/hotspot2/PasspointConfiguration;I)I
    .locals 0

    .line 61
    iput p1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mCarrierId:I

    return p1
.end method

.method static synthetic access$102(Landroid/net/wifi/hotspot2/PasspointConfiguration;Z)Z
    .locals 0

    .line 61
    iput-boolean p1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mIsAutojoinEnabled:Z

    return p1
.end method

.method static synthetic access$202(Landroid/net/wifi/hotspot2/PasspointConfiguration;Z)Z
    .locals 0

    .line 61
    iput-boolean p1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mIsMacRandomizationEnabled:Z

    return p1
.end method

.method static synthetic access$302(Landroid/net/wifi/hotspot2/PasspointConfiguration;Z)Z
    .locals 0

    .line 61
    iput-boolean p1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mIsEnhancedMacRandomizationEnabled:Z

    return p1
.end method

.method static synthetic access$402(Landroid/net/wifi/hotspot2/PasspointConfiguration;I)I
    .locals 0

    .line 61
    iput p1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mMeteredOverride:I

    return p1
.end method

.method static synthetic access$502(Landroid/net/wifi/hotspot2/PasspointConfiguration;I)I
    .locals 0

    .line 61
    iput p1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionId:I

    return p1
.end method

.method static synthetic access$602(Landroid/net/wifi/hotspot2/PasspointConfiguration;Z)Z
    .locals 0

    .line 61
    iput-boolean p1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mIsCarrierMerged:Z

    return p1
.end method

.method static synthetic access$702(Landroid/net/wifi/hotspot2/PasspointConfiguration;Z)Z
    .locals 0

    .line 61
    iput-boolean p1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mIsOemPaid:Z

    return p1
.end method

.method static synthetic access$802(Landroid/net/wifi/hotspot2/PasspointConfiguration;Z)Z
    .locals 0

    .line 61
    iput-boolean p1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mIsOemPrivate:Z

    return p1
.end method

.method static synthetic access$902(Landroid/net/wifi/hotspot2/PasspointConfiguration;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 61
    iput-object p1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mDecoratedIdentityPrefix:Ljava/lang/String;

    return-object p1
.end method

.method private static isTrustRootCertListEquals(Ljava/util/Map;Ljava/util/Map;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto :goto_0

    .line 1048
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    if-eq v2, v3, :cond_1

    return v1

    .line 1051
    :cond_1
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1052
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-static {v3, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_3
    return v0

    :cond_4
    :goto_0
    if-ne p0, p1, :cond_5

    goto :goto_1

    :cond_5
    move v0, v1

    :goto_1
    return v0
.end method

.method private static writeTrustRootCerts(Landroid/os/Parcel;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, -0x1

    .line 1025
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    .line 1028
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1029
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1030
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1031
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0

    :cond_1
    return-void
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

    .line 764
    :cond_0
    instance-of v1, p1, Landroid/net/wifi/hotspot2/PasspointConfiguration;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 767
    :cond_1
    check-cast p1, Landroid/net/wifi/hotspot2/PasspointConfiguration;

    .line 768
    iget-object v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mHomeSp:Landroid/net/wifi/hotspot2/pps/HomeSp;

    if-nez v1, :cond_2

    iget-object v1, p1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mHomeSp:Landroid/net/wifi/hotspot2/pps/HomeSp;

    if-nez v1, :cond_8

    goto :goto_0

    :cond_2
    iget-object v3, p1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mHomeSp:Landroid/net/wifi/hotspot2/pps/HomeSp;

    invoke-virtual {v1, v3}, Landroid/net/wifi/hotspot2/pps/HomeSp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :goto_0
    iget-object v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mAaaServerTrustedNames:[Ljava/lang/String;

    if-nez v1, :cond_3

    iget-object v1, p1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mAaaServerTrustedNames:[Ljava/lang/String;

    if-nez v1, :cond_8

    goto :goto_1

    :cond_3
    iget-object v3, p1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mAaaServerTrustedNames:[Ljava/lang/String;

    .line 770
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :goto_1
    iget-object v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mCredential:Landroid/net/wifi/hotspot2/pps/Credential;

    if-nez v1, :cond_4

    iget-object v1, p1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mCredential:Landroid/net/wifi/hotspot2/pps/Credential;

    if-nez v1, :cond_8

    goto :goto_2

    :cond_4
    iget-object v3, p1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mCredential:Landroid/net/wifi/hotspot2/pps/Credential;

    .line 772
    invoke-virtual {v1, v3}, Landroid/net/wifi/hotspot2/pps/Credential;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :goto_2
    iget-object v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mPolicy:Landroid/net/wifi/hotspot2/pps/Policy;

    if-nez v1, :cond_5

    iget-object v1, p1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mPolicy:Landroid/net/wifi/hotspot2/pps/Policy;

    if-nez v1, :cond_8

    goto :goto_3

    :cond_5
    iget-object v3, p1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mPolicy:Landroid/net/wifi/hotspot2/pps/Policy;

    .line 773
    invoke-virtual {v1, v3}, Landroid/net/wifi/hotspot2/pps/Policy;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :goto_3
    iget-object v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    if-nez v1, :cond_6

    iget-object v1, p1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    if-nez v1, :cond_8

    goto :goto_4

    :cond_6
    iget-object v3, p1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    .line 775
    invoke-virtual {v1, v3}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :goto_4
    iget-object v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mTrustRootCertList:Ljava/util/Map;

    iget-object v3, p1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mTrustRootCertList:Ljava/util/Map;

    .line 776
    invoke-static {v1, v3}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->isTrustRootCertListEquals(Ljava/util/Map;Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUpdateIdentifier:I

    iget v3, p1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUpdateIdentifier:I

    if-ne v1, v3, :cond_8

    iget v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mCredentialPriority:I

    iget v3, p1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mCredentialPriority:I

    if-ne v1, v3, :cond_8

    iget-wide v3, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionCreationTimeInMillis:J

    iget-wide v5, p1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionCreationTimeInMillis:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_8

    iget-wide v3, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionExpirationTimeMillis:J

    iget-wide v5, p1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionExpirationTimeMillis:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_8

    iget-object v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionType:Ljava/lang/String;

    iget-object v3, p1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionType:Ljava/lang/String;

    .line 781
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-wide v3, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitUsageTimePeriodInMinutes:J

    iget-wide v5, p1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitUsageTimePeriodInMinutes:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_8

    iget-wide v3, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitStartTimeInMillis:J

    iget-wide v5, p1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitStartTimeInMillis:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_8

    iget-wide v3, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitDataLimit:J

    iget-wide v5, p1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitDataLimit:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_8

    iget-wide v3, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitTimeLimitInMinutes:J

    iget-wide v5, p1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitTimeLimitInMinutes:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_8

    iget v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mCarrierId:I

    iget v3, p1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mCarrierId:I

    if-ne v1, v3, :cond_8

    iget v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionId:I

    iget v3, p1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionId:I

    if-ne v1, v3, :cond_8

    iget-boolean v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mIsOemPrivate:Z

    iget-boolean v3, p1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mIsOemPrivate:Z

    if-ne v1, v3, :cond_8

    iget-boolean v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mIsOemPaid:Z

    iget-boolean v3, p1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mIsOemPaid:Z

    if-ne v1, v3, :cond_8

    iget-boolean v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mIsCarrierMerged:Z

    iget-boolean v3, p1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mIsCarrierMerged:Z

    if-ne v1, v3, :cond_8

    iget-boolean v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mIsAutojoinEnabled:Z

    iget-boolean v3, p1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mIsAutojoinEnabled:Z

    if-ne v1, v3, :cond_8

    iget-boolean v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mIsMacRandomizationEnabled:Z

    iget-boolean v3, p1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mIsMacRandomizationEnabled:Z

    if-ne v1, v3, :cond_8

    iget-boolean v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mIsEnhancedMacRandomizationEnabled:Z

    iget-boolean v3, p1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mIsEnhancedMacRandomizationEnabled:Z

    if-ne v1, v3, :cond_8

    iget v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mMeteredOverride:I

    iget v3, p1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mMeteredOverride:I

    if-ne v1, v3, :cond_8

    iget-object v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mServiceFriendlyNames:Ljava/util/Map;

    if-nez v1, :cond_7

    iget-object v1, p1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mServiceFriendlyNames:Ljava/util/Map;

    if-nez v1, :cond_8

    goto :goto_5

    :cond_7
    iget-object v3, p1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mServiceFriendlyNames:Ljava/util/Map;

    .line 796
    invoke-interface {v1, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :goto_5
    iget-object p0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mDecoratedIdentityPrefix:Ljava/lang/String;

    iget-object p1, p1, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mDecoratedIdentityPrefix:Ljava/lang/String;

    .line 797
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    goto :goto_6

    :cond_8
    move v0, v2

    :goto_6
    return v0
.end method

.method public getHomeSp()Landroid/net/wifi/hotspot2/pps/HomeSp;
    .locals 0

    .line 95
    iget-object p0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mHomeSp:Landroid/net/wifi/hotspot2/pps/HomeSp;

    return-object p0
.end method

.method public getMeteredOverride()I
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 591
    iget p0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mMeteredOverride:I

    return p0
.end method

.method public getSubscriptionExpirationTimeMillis()J
    .locals 2

    .line 274
    iget-wide v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionExpirationTimeMillis:J

    return-wide v0
.end method

.method public getUniqueId()Ljava/lang/String;
    .locals 4

    .line 1079
    iget-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mCredential:Landroid/net/wifi/hotspot2/pps/Credential;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mHomeSp:Landroid/net/wifi/hotspot2/pps/HomeSp;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/pps/HomeSp;->getFqdn()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1083
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 1084
    iget-object v3, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mHomeSp:Landroid/net/wifi/hotspot2/pps/HomeSp;

    invoke-virtual {v3}, Landroid/net/wifi/hotspot2/pps/HomeSp;->getFqdn()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mHomeSp:Landroid/net/wifi/hotspot2/pps/HomeSp;

    invoke-virtual {v3}, Landroid/net/wifi/hotspot2/pps/HomeSp;->getUniqueId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object p0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mCredential:Landroid/net/wifi/hotspot2/pps/Credential;

    .line 1085
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/pps/Credential;->getUniqueId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v2

    const-string p0, "%s_%x%x"

    .line 1084
    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1086
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1080
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Credential or HomeSP are not initialized"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getUpdateIdentifier()I
    .locals 0

    .line 211
    iget p0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUpdateIdentifier:I

    return p0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x18

    new-array v0, v0, [Ljava/lang/Object;

    .line 802
    iget-object v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mHomeSp:Landroid/net/wifi/hotspot2/pps/HomeSp;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mCredential:Landroid/net/wifi/hotspot2/pps/Credential;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mPolicy:Landroid/net/wifi/hotspot2/pps/Policy;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mTrustRootCertList:Ljava/util/Map;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUpdateIdentifier:I

    .line 803
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mCredentialPriority:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionCreationTimeInMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionExpirationTimeMillis:J

    .line 804
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitUsageTimePeriodInMinutes:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitStartTimeInMillis:J

    .line 805
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitDataLimit:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitTimeLimitInMinutes:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mServiceFriendlyNames:Ljava/util/Map;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mCarrierId:I

    .line 806
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mIsAutojoinEnabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mIsMacRandomizationEnabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mIsEnhancedMacRandomizationEnabled:Z

    .line 807
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mMeteredOverride:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x12

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x13

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mIsCarrierMerged:Z

    .line 808
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x14

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mIsOemPaid:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x15

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mIsOemPrivate:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x16

    aput-object v1, v0, v2

    iget-object p0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mDecoratedIdentityPrefix:Ljava/lang/String;

    const/16 v1, 0x17

    aput-object p0, v0, v1

    .line 802
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isAutojoinEnabled()Z
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 579
    iget-boolean p0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mIsAutojoinEnabled:Z

    return p0
.end method

.method public isMacRandomizationEnabled()Z
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 604
    iget-boolean p0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mIsMacRandomizationEnabled:Z

    return p0
.end method

.method public isOsuProvisioned()Z
    .locals 1

    .line 1066
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getUpdateIdentifier()I

    move-result p0

    const/high16 v0, -0x80000000

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setAaaServerTrustedNames([Ljava/lang/String;)V
    .locals 0

    .line 108
    iput-object p1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mAaaServerTrustedNames:[Ljava/lang/String;

    return-void
.end method

.method public setCredential(Landroid/net/wifi/hotspot2/pps/Credential;)V
    .locals 0

    .line 130
    iput-object p1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mCredential:Landroid/net/wifi/hotspot2/pps/Credential;

    return-void
.end method

.method public setCredentialPriority(I)V
    .locals 0

    .line 224
    iput p1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mCredentialPriority:I

    return-void
.end method

.method public setHomeSp(Landroid/net/wifi/hotspot2/pps/HomeSp;)V
    .locals 0

    .line 89
    iput-object p1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mHomeSp:Landroid/net/wifi/hotspot2/pps/HomeSp;

    return-void
.end method

.method public setPolicy(Landroid/net/wifi/hotspot2/pps/Policy;)V
    .locals 0

    .line 149
    iput-object p1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mPolicy:Landroid/net/wifi/hotspot2/pps/Policy;

    return-void
.end method

.method public setServiceFriendlyNames(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 383
    iput-object p1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mServiceFriendlyNames:Ljava/util/Map;

    return-void
.end method

.method public setSubscriptionCreationTimeInMillis(J)V
    .locals 0

    .line 244
    iput-wide p1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionCreationTimeInMillis:J

    return-void
.end method

.method public setSubscriptionExpirationTimeInMillis(J)V
    .locals 0

    .line 264
    iput-wide p1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionExpirationTimeMillis:J

    return-void
.end method

.method public setSubscriptionType(Ljava/lang/String;)V
    .locals 0

    .line 286
    iput-object p1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionType:Ljava/lang/String;

    return-void
.end method

.method public setSubscriptionUpdate(Landroid/net/wifi/hotspot2/pps/UpdateParameter;)V
    .locals 0

    .line 166
    iput-object p1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    return-void
.end method

.method public setTrustRootCertList(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;)V"
        }
    .end annotation

    .line 185
    iput-object p1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mTrustRootCertList:Ljava/util/Map;

    return-void
.end method

.method public setUpdateIdentifier(I)V
    .locals 0

    .line 205
    iput p1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUpdateIdentifier:I

    return-void
.end method

.method public setUsageLimitDataLimit(J)V
    .locals 0

    .line 345
    iput-wide p1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitDataLimit:J

    return-void
.end method

.method public setUsageLimitStartTimeInMillis(J)V
    .locals 0

    .line 325
    iput-wide p1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitStartTimeInMillis:J

    return-void
.end method

.method public setUsageLimitTimeLimitInMinutes(J)V
    .locals 0

    .line 363
    iput-wide p1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitTimeLimitInMinutes:J

    return-void
.end method

.method public setUsageLimitUsageTimePeriodInMinutes(J)V
    .locals 0

    .line 305
    iput-wide p1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitUsageTimePeriodInMinutes:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 813
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UpdateIdentifier: "

    .line 814
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUpdateIdentifier:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "CredentialPriority: "

    .line 815
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mCredentialPriority:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "SubscriptionCreationTime: "

    .line 816
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 817
    iget-wide v2, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionCreationTimeInMillis:J

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v2, v2, v4

    const-string v3, "Not specified"

    if-eqz v2, :cond_0

    .line 818
    new-instance v2, Ljava/util/Date;

    iget-wide v6, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionCreationTimeInMillis:J

    invoke-direct {v2, v6, v7}, Ljava/util/Date;-><init>(J)V

    goto :goto_0

    :cond_0
    move-object v2, v3

    .line 816
    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 818
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "SubscriptionExpirationTime: "

    .line 819
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 820
    iget-wide v6, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionExpirationTimeMillis:J

    cmp-long v2, v6, v4

    if-eqz v2, :cond_1

    .line 821
    new-instance v2, Ljava/util/Date;

    iget-wide v6, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionExpirationTimeMillis:J

    invoke-direct {v2, v6, v7}, Ljava/util/Date;-><init>(J)V

    goto :goto_1

    :cond_1
    move-object v2, v3

    .line 819
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 821
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "UsageLimitStartTime: "

    .line 822
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitStartTimeInMillis:J

    cmp-long v2, v6, v4

    if-eqz v2, :cond_2

    .line 823
    new-instance v3, Ljava/util/Date;

    iget-wide v4, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitStartTimeInMillis:J

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 822
    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 823
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "UsageTimePeriod: "

    .line 824
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitUsageTimePeriodInMinutes:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 825
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "UsageLimitDataLimit: "

    .line 826
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitDataLimit:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "UsageLimitTimeLimit: "

    .line 827
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitTimeLimitInMinutes:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Provisioned by a subscription server: "

    .line 828
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 829
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->isOsuProvisioned()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "Yes"

    goto :goto_2

    :cond_3
    const-string v2, "No"

    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 830
    iget-object v2, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mHomeSp:Landroid/net/wifi/hotspot2/pps/HomeSp;

    if-eqz v2, :cond_4

    const-string v2, "HomeSP Begin ---\n"

    .line 831
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 832
    iget-object v2, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mHomeSp:Landroid/net/wifi/hotspot2/pps/HomeSp;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "HomeSP End ---\n"

    .line 833
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 835
    :cond_4
    iget-object v2, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mCredential:Landroid/net/wifi/hotspot2/pps/Credential;

    if-eqz v2, :cond_5

    const-string v2, "Credential Begin ---\n"

    .line 836
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 837
    iget-object v2, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mCredential:Landroid/net/wifi/hotspot2/pps/Credential;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "Credential End ---\n"

    .line 838
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 840
    :cond_5
    iget-object v2, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mPolicy:Landroid/net/wifi/hotspot2/pps/Policy;

    if-eqz v2, :cond_6

    const-string v2, "Policy Begin ---\n"

    .line 841
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 842
    iget-object v2, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mPolicy:Landroid/net/wifi/hotspot2/pps/Policy;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "Policy End ---\n"

    .line 843
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 845
    :cond_6
    iget-object v2, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    if-eqz v2, :cond_7

    const-string v2, "SubscriptionUpdate Begin ---\n"

    .line 846
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 847
    iget-object v2, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "SubscriptionUpdate End ---\n"

    .line 848
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 850
    :cond_7
    iget-object v2, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mTrustRootCertList:Ljava/util/Map;

    if-eqz v2, :cond_8

    const-string v2, "TrustRootCertServers: "

    .line 851
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mTrustRootCertList:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 852
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 854
    :cond_8
    iget-object v2, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mAaaServerTrustedNames:[Ljava/lang/String;

    if-eqz v2, :cond_9

    const-string v2, "AAAServerTrustedNames: "

    .line 855
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mAaaServerTrustedNames:[Ljava/lang/String;

    const-string v3, ";"

    .line 856
    invoke-static {v3, v2}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 858
    :cond_9
    iget-object v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mServiceFriendlyNames:Ljava/util/Map;

    if-eqz v1, :cond_a

    const-string v1, "ServiceFriendlyNames: "

    .line 859
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mServiceFriendlyNames:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 861
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CarrierId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mCarrierId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 862
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SubscriptionId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 863
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IsAutojoinEnabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mIsAutojoinEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 864
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsMacRandomizationEnabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mIsMacRandomizationEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 865
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsEnhancedMacRandomizationEnabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mIsEnhancedMacRandomizationEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 866
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMeteredOverride:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mMeteredOverride:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 867
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsCarrierMerged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mIsCarrierMerged:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 868
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsOemPaid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mIsOemPaid:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 869
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsOemPrivate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mIsOemPrivate:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 870
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDecoratedUsernamePrefix:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mDecoratedIdentityPrefix:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 871
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 728
    iget-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mHomeSp:Landroid/net/wifi/hotspot2/pps/HomeSp;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 729
    iget-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mCredential:Landroid/net/wifi/hotspot2/pps/Credential;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 730
    iget-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mPolicy:Landroid/net/wifi/hotspot2/pps/Policy;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 731
    iget-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 732
    iget-object p2, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mTrustRootCertList:Ljava/util/Map;

    invoke-static {p1, p2}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->writeTrustRootCerts(Landroid/os/Parcel;Ljava/util/Map;)V

    .line 733
    iget p2, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUpdateIdentifier:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 734
    iget p2, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mCredentialPriority:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 735
    iget-wide v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionCreationTimeInMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 736
    iget-wide v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionExpirationTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 737
    iget-object p2, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 738
    iget-wide v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitUsageTimePeriodInMinutes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 739
    iget-wide v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitStartTimeInMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 740
    iget-wide v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitDataLimit:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 741
    iget-wide v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mUsageLimitTimeLimitInMinutes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 742
    iget-object p2, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mAaaServerTrustedNames:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 743
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 744
    iget-object v0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mServiceFriendlyNames:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    const-string v1, "serviceFriendlyNames"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 746
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 747
    iget p2, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mCarrierId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 748
    iget-boolean p2, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mIsAutojoinEnabled:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 749
    iget-boolean p2, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mIsMacRandomizationEnabled:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 750
    iget-boolean p2, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mIsEnhancedMacRandomizationEnabled:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 751
    iget p2, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mMeteredOverride:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 752
    iget p2, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mSubscriptionId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 753
    iget-boolean p2, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mIsCarrierMerged:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 754
    iget-boolean p2, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mIsOemPaid:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 755
    iget-boolean p2, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mIsOemPrivate:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 756
    iget-object p0, p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;->mDecoratedIdentityPrefix:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

.class public final Landroid/net/wifi/SoftApConfiguration$Builder;
.super Ljava/lang/Object;
.source "SoftApConfiguration.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/SoftApConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAllowedClientList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/MacAddress;",
            ">;"
        }
    .end annotation
.end field

.field private mAutoShutdownEnabled:Z

.field private mBlockedClientList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/MacAddress;",
            ">;"
        }
    .end annotation
.end field

.field private mBridgedModeOpportunisticShutdownEnabled:Z

.field private mBssid:Landroid/net/MacAddress;

.field private mChannels:Landroid/util/SparseIntArray;

.field private mClientControlByUser:Z

.field private mHiddenSsid:Z

.field private mIeee80211axEnabled:Z

.field private mIsUserConfiguration:Z

.field private mMacRandomizationSetting:I

.field private mMaxNumberOfClients:I

.field private mPassphrase:Ljava/lang/String;

.field private mSecurityType:I

.field private mShutdownTimeoutMillis:J

.field private mSsid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 877
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 878
    iput-object v0, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mSsid:Ljava/lang/String;

    .line 879
    iput-object v0, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mBssid:Landroid/net/MacAddress;

    .line 880
    iput-object v0, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mPassphrase:Ljava/lang/String;

    const/4 v0, 0x0

    .line 881
    iput-boolean v0, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mHiddenSsid:Z

    .line 882
    new-instance v1, Landroid/util/SparseIntArray;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v1, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mChannels:Landroid/util/SparseIntArray;

    .line 883
    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 884
    iput v0, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mMaxNumberOfClients:I

    .line 885
    iput v0, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mSecurityType:I

    .line 886
    iput-boolean v2, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mAutoShutdownEnabled:Z

    const-wide/16 v3, 0x0

    .line 887
    iput-wide v3, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mShutdownTimeoutMillis:J

    .line 888
    iput-boolean v0, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mClientControlByUser:Z

    .line 889
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mBlockedClientList:Ljava/util/List;

    .line 890
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mAllowedClientList:Ljava/util/List;

    .line 891
    iput v2, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mMacRandomizationSetting:I

    .line 892
    iput-boolean v2, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mBridgedModeOpportunisticShutdownEnabled:Z

    .line 893
    iput-boolean v2, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mIeee80211axEnabled:Z

    .line 894
    iput-boolean v2, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mIsUserConfiguration:Z

    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/SoftApConfiguration;)V
    .locals 2

    .line 900
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 901
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 903
    invoke-static {p1}, Landroid/net/wifi/SoftApConfiguration;->access$200(Landroid/net/wifi/SoftApConfiguration;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mSsid:Ljava/lang/String;

    .line 904
    invoke-static {p1}, Landroid/net/wifi/SoftApConfiguration;->access$300(Landroid/net/wifi/SoftApConfiguration;)Landroid/net/MacAddress;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mBssid:Landroid/net/MacAddress;

    .line 905
    invoke-static {p1}, Landroid/net/wifi/SoftApConfiguration;->access$400(Landroid/net/wifi/SoftApConfiguration;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mPassphrase:Ljava/lang/String;

    .line 906
    invoke-static {p1}, Landroid/net/wifi/SoftApConfiguration;->access$500(Landroid/net/wifi/SoftApConfiguration;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mHiddenSsid:Z

    .line 907
    invoke-static {p1}, Landroid/net/wifi/SoftApConfiguration;->access$600(Landroid/net/wifi/SoftApConfiguration;)Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mChannels:Landroid/util/SparseIntArray;

    .line 908
    invoke-static {p1}, Landroid/net/wifi/SoftApConfiguration;->access$700(Landroid/net/wifi/SoftApConfiguration;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mMaxNumberOfClients:I

    .line 909
    invoke-static {p1}, Landroid/net/wifi/SoftApConfiguration;->access$800(Landroid/net/wifi/SoftApConfiguration;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mSecurityType:I

    .line 910
    invoke-static {p1}, Landroid/net/wifi/SoftApConfiguration;->access$900(Landroid/net/wifi/SoftApConfiguration;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mAutoShutdownEnabled:Z

    .line 911
    invoke-static {p1}, Landroid/net/wifi/SoftApConfiguration;->access$1000(Landroid/net/wifi/SoftApConfiguration;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mShutdownTimeoutMillis:J

    .line 912
    invoke-static {p1}, Landroid/net/wifi/SoftApConfiguration;->access$1100(Landroid/net/wifi/SoftApConfiguration;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mClientControlByUser:Z

    .line 913
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/net/wifi/SoftApConfiguration;->access$1200(Landroid/net/wifi/SoftApConfiguration;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mBlockedClientList:Ljava/util/List;

    .line 914
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/net/wifi/SoftApConfiguration;->access$1300(Landroid/net/wifi/SoftApConfiguration;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mAllowedClientList:Ljava/util/List;

    .line 915
    invoke-static {p1}, Landroid/net/wifi/SoftApConfiguration;->access$1400(Landroid/net/wifi/SoftApConfiguration;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mMacRandomizationSetting:I

    .line 917
    invoke-static {p1}, Landroid/net/wifi/SoftApConfiguration;->access$1500(Landroid/net/wifi/SoftApConfiguration;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mBridgedModeOpportunisticShutdownEnabled:Z

    .line 918
    invoke-static {p1}, Landroid/net/wifi/SoftApConfiguration;->access$1600(Landroid/net/wifi/SoftApConfiguration;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mIeee80211axEnabled:Z

    .line 919
    invoke-static {p1}, Landroid/net/wifi/SoftApConfiguration;->access$1700(Landroid/net/wifi/SoftApConfiguration;)Z

    move-result p1

    iput-boolean p1, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mIsUserConfiguration:Z

    return-void
.end method


# virtual methods
.method public build()Landroid/net/wifi/SoftApConfiguration;
    .locals 22

    move-object/from16 v0, p0

    .line 929
    iget-object v1, v0, Landroid/net/wifi/SoftApConfiguration$Builder;->mAllowedClientList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/MacAddress;

    .line 930
    iget-object v3, v0, Landroid/net/wifi/SoftApConfiguration$Builder;->mBlockedClientList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 931
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A MacAddress exist in both client list"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 934
    :cond_1
    new-instance v1, Landroid/net/wifi/SoftApConfiguration;

    move-object v2, v1

    iget-object v3, v0, Landroid/net/wifi/SoftApConfiguration$Builder;->mSsid:Ljava/lang/String;

    iget-object v4, v0, Landroid/net/wifi/SoftApConfiguration$Builder;->mBssid:Landroid/net/MacAddress;

    iget-object v5, v0, Landroid/net/wifi/SoftApConfiguration$Builder;->mPassphrase:Ljava/lang/String;

    iget-boolean v6, v0, Landroid/net/wifi/SoftApConfiguration$Builder;->mHiddenSsid:Z

    iget-object v7, v0, Landroid/net/wifi/SoftApConfiguration$Builder;->mChannels:Landroid/util/SparseIntArray;

    iget v8, v0, Landroid/net/wifi/SoftApConfiguration$Builder;->mSecurityType:I

    iget v9, v0, Landroid/net/wifi/SoftApConfiguration$Builder;->mMaxNumberOfClients:I

    iget-boolean v10, v0, Landroid/net/wifi/SoftApConfiguration$Builder;->mAutoShutdownEnabled:Z

    iget-wide v11, v0, Landroid/net/wifi/SoftApConfiguration$Builder;->mShutdownTimeoutMillis:J

    iget-boolean v13, v0, Landroid/net/wifi/SoftApConfiguration$Builder;->mClientControlByUser:Z

    iget-object v14, v0, Landroid/net/wifi/SoftApConfiguration$Builder;->mBlockedClientList:Ljava/util/List;

    iget-object v15, v0, Landroid/net/wifi/SoftApConfiguration$Builder;->mAllowedClientList:Ljava/util/List;

    move-object/from16 v21, v1

    iget v1, v0, Landroid/net/wifi/SoftApConfiguration$Builder;->mMacRandomizationSetting:I

    move/from16 v16, v1

    iget-boolean v1, v0, Landroid/net/wifi/SoftApConfiguration$Builder;->mBridgedModeOpportunisticShutdownEnabled:Z

    move/from16 v17, v1

    iget-boolean v1, v0, Landroid/net/wifi/SoftApConfiguration$Builder;->mIeee80211axEnabled:Z

    move/from16 v18, v1

    iget-boolean v0, v0, Landroid/net/wifi/SoftApConfiguration$Builder;->mIsUserConfiguration:Z

    move/from16 v19, v0

    const/16 v20, 0x0

    invoke-direct/range {v2 .. v20}, Landroid/net/wifi/SoftApConfiguration;-><init>(Ljava/lang/String;Landroid/net/MacAddress;Ljava/lang/String;ZLandroid/util/SparseIntArray;IIZJZLjava/util/List;Ljava/util/List;IZZZLandroid/net/wifi/SoftApConfiguration$1;)V

    return-object v21
.end method

.method public setAllowedClientList(Ljava/util/List;)Landroid/net/wifi/SoftApConfiguration$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/MacAddress;",
            ">;)",
            "Landroid/net/wifi/SoftApConfiguration$Builder;"
        }
    .end annotation

    .line 1384
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mAllowedClientList:Ljava/util/List;

    return-object p0
.end method

.method public setAutoShutdownEnabled(Z)Landroid/net/wifi/SoftApConfiguration$Builder;
    .locals 0

    .line 1295
    iput-boolean p1, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mAutoShutdownEnabled:Z

    return-object p0
.end method

.method public setBand(I)Landroid/net/wifi/SoftApConfiguration$Builder;
    .locals 2

    .line 1076
    invoke-static {p1}, Landroid/net/wifi/SoftApConfiguration;->access$1800(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1079
    new-instance v0, Landroid/util/SparseIntArray;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mChannels:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    .line 1080
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    return-object p0

    .line 1077
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid band type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setBands([I)Landroid/net/wifi/SoftApConfiguration$Builder;
    .locals 6

    .line 1109
    invoke-static {}, Lcom/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1112
    array-length v0, p1

    if-eqz v0, :cond_2

    array-length v0, p1

    const/4 v1, 0x2

    if-gt v0, v1, :cond_2

    .line 1116
    new-instance v0, Landroid/util/SparseIntArray;

    array-length v1, p1

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 1117
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, p1, v3

    .line 1118
    invoke-static {v4}, Landroid/net/wifi/SoftApConfiguration;->access$1800(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1121
    invoke-virtual {v0, v4, v2}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1119
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid band type: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1123
    :cond_1
    iput-object v0, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mChannels:Landroid/util/SparseIntArray;

    return-object p0

    .line 1113
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported number of bands("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") configured"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1110
    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public setBlockedClientList(Ljava/util/List;)Landroid/net/wifi/SoftApConfiguration$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/MacAddress;",
            ">;)",
            "Landroid/net/wifi/SoftApConfiguration$Builder;"
        }
    .end annotation

    .line 1408
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mBlockedClientList:Ljava/util/List;

    return-object p0
.end method

.method public setClientControlByUserEnabled(Z)Landroid/net/wifi/SoftApConfiguration$Builder;
    .locals 0

    .line 1356
    iput-boolean p1, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mClientControlByUser:Z

    return-object p0
.end method

.method public setHiddenSsid(Z)Landroid/net/wifi/SoftApConfiguration$Builder;
    .locals 0

    .line 1060
    iput-boolean p1, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mHiddenSsid:Z

    return-object p0
.end method

.method public setIeee80211axEnabled(Z)Landroid/net/wifi/SoftApConfiguration$Builder;
    .locals 1

    .line 1507
    invoke-static {}, Lcom/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1510
    iput-boolean p1, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mIeee80211axEnabled:Z

    return-object p0

    .line 1508
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;
    .locals 2

    if-nez p2, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1029
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "passphrase should be null when security type is open"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1033
    :cond_1
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    .line 1036
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x3f

    if-gt v0, v1, :cond_4

    .line 1044
    :cond_3
    :goto_0
    iput p2, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mSecurityType:I

    .line 1045
    iput-object p1, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mPassphrase:Ljava/lang/String;

    return-object p0

    .line 1037
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Password size must be at least 8 and no more than 63 for WPA2_PSK and WPA3_SAE_TRANSITION Mode"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setShutdownTimeoutMillis(J)Landroid/net/wifi/SoftApConfiguration$Builder;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 1322
    iput-wide p1, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mShutdownTimeoutMillis:J

    return-object p0

    .line 1320
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid timeout value"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setSsid(Ljava/lang/String;)Landroid/net/wifi/SoftApConfiguration$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 957
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 958
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/charset/CharsetEncoder;->canEncode(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 960
    :cond_0
    iput-object p1, p0, Landroid/net/wifi/SoftApConfiguration$Builder;->mSsid:Ljava/lang/String;

    return-object p0
.end method

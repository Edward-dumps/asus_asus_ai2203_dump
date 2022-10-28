.class Landroid/net/wifi/WifiConfiguration$1;
.super Ljava/lang/Object;
.source "WifiConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/WifiConfiguration;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 3739
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiConfiguration;
    .locals 7

    .line 3741
    new-instance p0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 3742
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 3743
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 3744
    invoke-static {p0}, Landroid/net/wifi/WifiConfiguration;->access$100(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->readFromParcel(Landroid/os/Parcel;)V

    .line 3745
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 3746
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 3747
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    .line 3748
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    .line 3749
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    .line 3750
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    .line 3751
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->isHomeProviderNetwork:Z

    .line 3752
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3753
    new-array v3, v0, [J

    iput-object v3, p0, Landroid/net/wifi/WifiConfiguration;->roamingConsortiumIds:[J

    move v3, v2

    :goto_1
    if-ge v3, v0, :cond_1

    .line 3755
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->roamingConsortiumIds:[J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    aput-wide v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3757
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    move v0, v2

    .line 3758
    :goto_2
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    array-length v4, v3

    if-ge v0, v4, :cond_2

    .line 3759
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3761
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    .line 3762
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 3763
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {p0, v0}, Landroid/net/wifi/WifiConfiguration;->access$202(Landroid/net/wifi/WifiConfiguration;I)I

    .line 3764
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_3

    :cond_3
    move v0, v2

    :goto_3
    iput-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 3765
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    goto :goto_4

    :cond_4
    move v0, v2

    :goto_4
    iput-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->requirePmf:Z

    .line 3766
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiConfiguration;->updateIdentifier:Ljava/lang/String;

    .line 3768
    invoke-static {p1}, Landroid/net/wifi/WifiConfiguration;->access$300(Landroid/os/Parcel;)Ljava/util/BitSet;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 3769
    invoke-static {p1}, Landroid/net/wifi/WifiConfiguration;->access$300(Landroid/os/Parcel;)Ljava/util/BitSet;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    .line 3770
    invoke-static {p1}, Landroid/net/wifi/WifiConfiguration;->access$300(Landroid/os/Parcel;)Ljava/util/BitSet;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    .line 3771
    invoke-static {p1}, Landroid/net/wifi/WifiConfiguration;->access$300(Landroid/os/Parcel;)Ljava/util/BitSet;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    .line 3772
    invoke-static {p1}, Landroid/net/wifi/WifiConfiguration;->access$300(Landroid/os/Parcel;)Ljava/util/BitSet;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    .line 3773
    invoke-static {p1}, Landroid/net/wifi/WifiConfiguration;->access$300(Landroid/os/Parcel;)Ljava/util/BitSet;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupManagementCiphers:Ljava/util/BitSet;

    .line 3774
    invoke-static {p1}, Landroid/net/wifi/WifiConfiguration;->access$300(Landroid/os/Parcel;)Ljava/util/BitSet;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedSuiteBCiphers:Ljava/util/BitSet;

    .line 3776
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move v3, v2

    :goto_5
    if-ge v3, v0, :cond_5

    .line 3778
    invoke-static {p0}, Landroid/net/wifi/WifiConfiguration;->access$400(Landroid/net/wifi/WifiConfiguration;)Ljava/util/List;

    move-result-object v4

    invoke-static {p1}, Landroid/net/wifi/SecurityParams;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/SecurityParams;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_5
    const/4 v0, 0x0

    .line 3781
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiEnterpriseConfig;

    iput-object v3, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 3782
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/IpConfiguration;

    invoke-virtual {p0, v3}, Landroid/net/wifi/WifiConfiguration;->setIpConfiguration(Landroid/net/IpConfiguration;)V

    .line 3783
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/net/wifi/WifiConfiguration;->dhcpServer:Ljava/lang/String;

    .line 3784
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/net/wifi/WifiConfiguration;->defaultGwMacAddress:Ljava/lang/String;

    .line 3785
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_6

    move v3, v1

    goto :goto_6

    :cond_6
    move v3, v2

    :goto_6
    iput-boolean v3, p0, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    .line 3786
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_7

    move v3, v1

    goto :goto_7

    :cond_7
    move v3, v2

    :goto_7
    iput-boolean v3, p0, Landroid/net/wifi/WifiConfiguration;->isLegacyPasspointConfig:Z

    .line 3787
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_8

    move v3, v1

    goto :goto_8

    :cond_8
    move v3, v2

    :goto_8
    iput-boolean v3, p0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    .line 3788
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_9

    move v3, v1

    goto :goto_9

    :cond_9
    move v3, v2

    :goto_9
    iput-boolean v3, p0, Landroid/net/wifi/WifiConfiguration;->trusted:Z

    .line 3789
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_a

    move v3, v1

    goto :goto_a

    :cond_a
    move v3, v2

    :goto_a
    iput-boolean v3, p0, Landroid/net/wifi/WifiConfiguration;->oemPaid:Z

    .line 3790
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_b

    move v3, v1

    goto :goto_b

    :cond_b
    move v3, v2

    :goto_b
    iput-boolean v3, p0, Landroid/net/wifi/WifiConfiguration;->oemPrivate:Z

    .line 3791
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_c

    move v3, v1

    goto :goto_c

    :cond_c
    move v3, v2

    :goto_c
    iput-boolean v3, p0, Landroid/net/wifi/WifiConfiguration;->carrierMerged:Z

    .line 3792
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_d

    move v3, v1

    goto :goto_d

    :cond_d
    move v3, v2

    :goto_d
    iput-boolean v3, p0, Landroid/net/wifi/WifiConfiguration;->fromWifiNetworkSuggestion:Z

    .line 3793
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_e

    move v3, v1

    goto :goto_e

    :cond_e
    move v3, v2

    :goto_e
    iput-boolean v3, p0, Landroid/net/wifi/WifiConfiguration;->fromWifiNetworkSpecifier:Z

    .line 3794
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_f

    move v3, v1

    goto :goto_f

    :cond_f
    move v3, v2

    :goto_f
    iput-boolean v3, p0, Landroid/net/wifi/WifiConfiguration;->meteredHint:Z

    .line 3795
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    .line 3796
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_10

    move v3, v1

    goto :goto_10

    :cond_10
    move v3, v2

    :goto_10
    iput-boolean v3, p0, Landroid/net/wifi/WifiConfiguration;->useExternalScores:Z

    .line 3797
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    .line 3798
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    .line 3799
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    .line 3800
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    .line 3801
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/net/wifi/WifiConfiguration;->lastUpdateName:Ljava/lang/String;

    .line 3802
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/net/wifi/WifiConfiguration;->numScorerOverride:I

    .line 3803
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/net/wifi/WifiConfiguration;->numScorerOverrideAndSwitchedNetwork:I

    .line 3804
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    .line 3805
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    iput-boolean v3, p0, Landroid/net/wifi/WifiConfiguration;->allowAutojoin:Z

    .line 3806
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    .line 3807
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_11

    move v3, v1

    goto :goto_11

    :cond_11
    move v3, v2

    :goto_11
    iput-boolean v3, p0, Landroid/net/wifi/WifiConfiguration;->noInternetAccessExpected:Z

    .line 3808
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_12

    move v3, v1

    goto :goto_12

    :cond_12
    move v3, v2

    :goto_12
    iput-boolean v3, p0, Landroid/net/wifi/WifiConfiguration;->shared:Z

    .line 3809
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Landroid/net/wifi/WifiConfiguration;->access$502(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Ljava/lang/String;

    .line 3810
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->recentFailure:Landroid/net/wifi/WifiConfiguration$RecentFailure;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/net/wifi/WifiConfiguration$RecentFailure;->setAssociationStatus(IJ)V

    .line 3811
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/MacAddress;

    invoke-static {p0, v0}, Landroid/net/wifi/WifiConfiguration;->access$602(Landroid/net/wifi/WifiConfiguration;Landroid/net/MacAddress;)Landroid/net/MacAddress;

    .line 3812
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/WifiConfiguration;->macRandomizationSetting:I

    .line 3813
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_13

    :cond_13
    move v1, v2

    :goto_13
    iput-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->osu:Z

    .line 3814
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/wifi/WifiConfiguration;->randomizedMacExpirationTimeMs:J

    .line 3815
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/wifi/WifiConfiguration;->randomizedMacLastModifiedTimeMs:J

    .line 3816
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/WifiConfiguration;->carrierId:I

    .line 3817
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/net/wifi/WifiConfiguration;->access$702(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Ljava/lang/String;

    .line 3818
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/net/wifi/WifiConfiguration;->subscriptionId:I

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 3739
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiConfiguration$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/net/wifi/WifiConfiguration;
    .locals 0

    .line 3823
    new-array p0, p1, [Landroid/net/wifi/WifiConfiguration;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 3739
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiConfiguration$1;->newArray(I)[Landroid/net/wifi/WifiConfiguration;

    move-result-object p0

    return-object p0
.end method

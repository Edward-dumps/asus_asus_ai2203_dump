.class public Landroid/net/wifi/SecurityParams;
.super Ljava/lang/Object;
.source "SecurityParams.java"


# instance fields
.field private mAllowedAuthAlgorithms:Ljava/util/BitSet;

.field private mAllowedGroupCiphers:Ljava/util/BitSet;

.field private mAllowedGroupManagementCiphers:Ljava/util/BitSet;

.field private mAllowedKeyManagement:Ljava/util/BitSet;

.field private mAllowedPairwiseCiphers:Ljava/util/BitSet;

.field private mAllowedProtocols:Ljava/util/BitSet;

.field private mAllowedSuiteBCiphers:Ljava/util/BitSet;

.field private mEnabled:Z

.field private mIsAddedByAutoUpgrade:Z

.field private mIsSaeH2eOnlyMode:Z

.field private mIsSaePkOnlyMode:Z

.field private mPasspointRelease:I

.field private mRequirePmf:Z

.field private mSecurityType:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 60
    iput v0, p0, Landroid/net/wifi/SecurityParams;->mSecurityType:I

    const/4 v1, 0x1

    .line 67
    iput-boolean v1, p0, Landroid/net/wifi/SecurityParams;->mEnabled:Z

    .line 74
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/SecurityParams;->mAllowedKeyManagement:Ljava/util/BitSet;

    .line 81
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/SecurityParams;->mAllowedProtocols:Ljava/util/BitSet;

    .line 88
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/SecurityParams;->mAllowedAuthAlgorithms:Ljava/util/BitSet;

    .line 95
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/SecurityParams;->mAllowedPairwiseCiphers:Ljava/util/BitSet;

    .line 102
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/SecurityParams;->mAllowedGroupCiphers:Ljava/util/BitSet;

    .line 108
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/SecurityParams;->mAllowedGroupManagementCiphers:Ljava/util/BitSet;

    .line 115
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/SecurityParams;->mAllowedSuiteBCiphers:Ljava/util/BitSet;

    const/4 v1, 0x0

    .line 120
    iput-boolean v1, p0, Landroid/net/wifi/SecurityParams;->mRequirePmf:Z

    .line 122
    iput v0, p0, Landroid/net/wifi/SecurityParams;->mPasspointRelease:I

    .line 125
    iput-boolean v1, p0, Landroid/net/wifi/SecurityParams;->mIsSaeH2eOnlyMode:Z

    .line 128
    iput-boolean v1, p0, Landroid/net/wifi/SecurityParams;->mIsSaePkOnlyMode:Z

    .line 131
    iput-boolean v1, p0, Landroid/net/wifi/SecurityParams;->mIsAddedByAutoUpgrade:Z

    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/SecurityParams;)V
    .locals 2

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 60
    iput v0, p0, Landroid/net/wifi/SecurityParams;->mSecurityType:I

    const/4 v1, 0x1

    .line 67
    iput-boolean v1, p0, Landroid/net/wifi/SecurityParams;->mEnabled:Z

    .line 74
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/SecurityParams;->mAllowedKeyManagement:Ljava/util/BitSet;

    .line 81
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/SecurityParams;->mAllowedProtocols:Ljava/util/BitSet;

    .line 88
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/SecurityParams;->mAllowedAuthAlgorithms:Ljava/util/BitSet;

    .line 95
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/SecurityParams;->mAllowedPairwiseCiphers:Ljava/util/BitSet;

    .line 102
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/SecurityParams;->mAllowedGroupCiphers:Ljava/util/BitSet;

    .line 108
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/SecurityParams;->mAllowedGroupManagementCiphers:Ljava/util/BitSet;

    .line 115
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/SecurityParams;->mAllowedSuiteBCiphers:Ljava/util/BitSet;

    const/4 v1, 0x0

    .line 120
    iput-boolean v1, p0, Landroid/net/wifi/SecurityParams;->mRequirePmf:Z

    .line 122
    iput v0, p0, Landroid/net/wifi/SecurityParams;->mPasspointRelease:I

    .line 125
    iput-boolean v1, p0, Landroid/net/wifi/SecurityParams;->mIsSaeH2eOnlyMode:Z

    .line 128
    iput-boolean v1, p0, Landroid/net/wifi/SecurityParams;->mIsSaePkOnlyMode:Z

    .line 131
    iput-boolean v1, p0, Landroid/net/wifi/SecurityParams;->mIsAddedByAutoUpgrade:Z

    .line 139
    iget v0, p1, Landroid/net/wifi/SecurityParams;->mSecurityType:I

    iput v0, p0, Landroid/net/wifi/SecurityParams;->mSecurityType:I

    .line 140
    iget-boolean v0, p1, Landroid/net/wifi/SecurityParams;->mEnabled:Z

    iput-boolean v0, p0, Landroid/net/wifi/SecurityParams;->mEnabled:Z

    .line 141
    iget-object v0, p1, Landroid/net/wifi/SecurityParams;->mAllowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    iput-object v0, p0, Landroid/net/wifi/SecurityParams;->mAllowedKeyManagement:Ljava/util/BitSet;

    .line 142
    iget-object v0, p1, Landroid/net/wifi/SecurityParams;->mAllowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    iput-object v0, p0, Landroid/net/wifi/SecurityParams;->mAllowedProtocols:Ljava/util/BitSet;

    .line 143
    iget-object v0, p1, Landroid/net/wifi/SecurityParams;->mAllowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    iput-object v0, p0, Landroid/net/wifi/SecurityParams;->mAllowedAuthAlgorithms:Ljava/util/BitSet;

    .line 144
    iget-object v0, p1, Landroid/net/wifi/SecurityParams;->mAllowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    iput-object v0, p0, Landroid/net/wifi/SecurityParams;->mAllowedPairwiseCiphers:Ljava/util/BitSet;

    .line 145
    iget-object v0, p1, Landroid/net/wifi/SecurityParams;->mAllowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    iput-object v0, p0, Landroid/net/wifi/SecurityParams;->mAllowedGroupCiphers:Ljava/util/BitSet;

    .line 146
    iget-object v0, p1, Landroid/net/wifi/SecurityParams;->mAllowedGroupManagementCiphers:Ljava/util/BitSet;

    .line 147
    invoke-virtual {v0}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    iput-object v0, p0, Landroid/net/wifi/SecurityParams;->mAllowedGroupManagementCiphers:Ljava/util/BitSet;

    .line 148
    iget-object v0, p1, Landroid/net/wifi/SecurityParams;->mAllowedSuiteBCiphers:Ljava/util/BitSet;

    .line 149
    invoke-virtual {v0}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    iput-object v0, p0, Landroid/net/wifi/SecurityParams;->mAllowedSuiteBCiphers:Ljava/util/BitSet;

    .line 150
    iget-boolean v0, p1, Landroid/net/wifi/SecurityParams;->mRequirePmf:Z

    iput-boolean v0, p0, Landroid/net/wifi/SecurityParams;->mRequirePmf:Z

    .line 151
    iget-boolean v0, p1, Landroid/net/wifi/SecurityParams;->mIsSaeH2eOnlyMode:Z

    iput-boolean v0, p0, Landroid/net/wifi/SecurityParams;->mIsSaeH2eOnlyMode:Z

    .line 152
    iget-boolean v0, p1, Landroid/net/wifi/SecurityParams;->mIsSaePkOnlyMode:Z

    iput-boolean v0, p0, Landroid/net/wifi/SecurityParams;->mIsSaePkOnlyMode:Z

    .line 153
    iget-boolean p1, p1, Landroid/net/wifi/SecurityParams;->mIsAddedByAutoUpgrade:Z

    iput-boolean p1, p0, Landroid/net/wifi/SecurityParams;->mIsAddedByAutoUpgrade:Z

    return-void
.end method

.method private static createEnhancedOpenParams()Landroid/net/wifi/SecurityParams;
    .locals 5

    .line 693
    new-instance v0, Landroid/net/wifi/SecurityParams;

    invoke-direct {v0}, Landroid/net/wifi/SecurityParams;-><init>()V

    const/4 v1, 0x6

    .line 694
    iput v1, v0, Landroid/net/wifi/SecurityParams;->mSecurityType:I

    .line 696
    iget-object v1, v0, Landroid/net/wifi/SecurityParams;->mAllowedKeyManagement:Ljava/util/BitSet;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 698
    iget-object v1, v0, Landroid/net/wifi/SecurityParams;->mAllowedProtocols:Ljava/util/BitSet;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 700
    iget-object v1, v0, Landroid/net/wifi/SecurityParams;->mAllowedPairwiseCiphers:Ljava/util/BitSet;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 701
    iget-object v1, v0, Landroid/net/wifi/SecurityParams;->mAllowedPairwiseCiphers:Ljava/util/BitSet;

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 702
    iget-object v1, v0, Landroid/net/wifi/SecurityParams;->mAllowedPairwiseCiphers:Ljava/util/BitSet;

    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    .line 704
    iget-object v1, v0, Landroid/net/wifi/SecurityParams;->mAllowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    .line 705
    iget-object v1, v0, Landroid/net/wifi/SecurityParams;->mAllowedGroupCiphers:Ljava/util/BitSet;

    const/4 v4, 0x7

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    .line 706
    iget-object v1, v0, Landroid/net/wifi/SecurityParams;->mAllowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 708
    iput-boolean v2, v0, Landroid/net/wifi/SecurityParams;->mRequirePmf:Z

    return-object v0
.end method

.method public static final createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/SecurityParams;
    .locals 2

    .line 566
    new-instance v0, Landroid/net/wifi/SecurityParams;

    invoke-direct {v0}, Landroid/net/wifi/SecurityParams;-><init>()V

    .line 567
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/SecurityParams;->mSecurityType:I

    .line 568
    invoke-virtual {p0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, v0, Landroid/net/wifi/SecurityParams;->mEnabled:Z

    .line 569
    invoke-static {p0}, Landroid/net/wifi/SecurityParams;->readBitSet(Landroid/os/Parcel;)Ljava/util/BitSet;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/SecurityParams;->mAllowedKeyManagement:Ljava/util/BitSet;

    .line 570
    invoke-static {p0}, Landroid/net/wifi/SecurityParams;->readBitSet(Landroid/os/Parcel;)Ljava/util/BitSet;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/SecurityParams;->mAllowedProtocols:Ljava/util/BitSet;

    .line 571
    invoke-static {p0}, Landroid/net/wifi/SecurityParams;->readBitSet(Landroid/os/Parcel;)Ljava/util/BitSet;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/SecurityParams;->mAllowedAuthAlgorithms:Ljava/util/BitSet;

    .line 572
    invoke-static {p0}, Landroid/net/wifi/SecurityParams;->readBitSet(Landroid/os/Parcel;)Ljava/util/BitSet;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/SecurityParams;->mAllowedPairwiseCiphers:Ljava/util/BitSet;

    .line 573
    invoke-static {p0}, Landroid/net/wifi/SecurityParams;->readBitSet(Landroid/os/Parcel;)Ljava/util/BitSet;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/SecurityParams;->mAllowedGroupCiphers:Ljava/util/BitSet;

    .line 574
    invoke-static {p0}, Landroid/net/wifi/SecurityParams;->readBitSet(Landroid/os/Parcel;)Ljava/util/BitSet;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/SecurityParams;->mAllowedGroupManagementCiphers:Ljava/util/BitSet;

    .line 575
    invoke-static {p0}, Landroid/net/wifi/SecurityParams;->readBitSet(Landroid/os/Parcel;)Ljava/util/BitSet;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/SecurityParams;->mAllowedSuiteBCiphers:Ljava/util/BitSet;

    .line 576
    invoke-virtual {p0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, v0, Landroid/net/wifi/SecurityParams;->mRequirePmf:Z

    .line 577
    invoke-virtual {p0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, v0, Landroid/net/wifi/SecurityParams;->mIsAddedByAutoUpgrade:Z

    .line 578
    invoke-virtual {p0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, v0, Landroid/net/wifi/SecurityParams;->mIsSaeH2eOnlyMode:Z

    .line 579
    invoke-virtual {p0}, Landroid/os/Parcel;->readBoolean()Z

    move-result p0

    iput-boolean p0, v0, Landroid/net/wifi/SecurityParams;->mIsSaePkOnlyMode:Z

    return-object v0
.end method

.method private static createOpenParams()Landroid/net/wifi/SecurityParams;
    .locals 4

    .line 716
    new-instance v0, Landroid/net/wifi/SecurityParams;

    invoke-direct {v0}, Landroid/net/wifi/SecurityParams;-><init>()V

    const/4 v1, 0x0

    .line 717
    iput v1, v0, Landroid/net/wifi/SecurityParams;->mSecurityType:I

    .line 719
    iget-object v2, v0, Landroid/net/wifi/SecurityParams;->mAllowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->set(I)V

    .line 721
    iget-object v2, v0, Landroid/net/wifi/SecurityParams;->mAllowedProtocols:Ljava/util/BitSet;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 722
    iget-object v2, v0, Landroid/net/wifi/SecurityParams;->mAllowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->set(I)V

    return-object v0
.end method

.method private static createOsenParams()Landroid/net/wifi/SecurityParams;
    .locals 4

    .line 730
    new-instance v0, Landroid/net/wifi/SecurityParams;

    invoke-direct {v0}, Landroid/net/wifi/SecurityParams;-><init>()V

    const/16 v1, 0xa

    .line 731
    iput v1, v0, Landroid/net/wifi/SecurityParams;->mSecurityType:I

    .line 733
    iget-object v1, v0, Landroid/net/wifi/SecurityParams;->mAllowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 735
    iget-object v1, v0, Landroid/net/wifi/SecurityParams;->mAllowedProtocols:Ljava/util/BitSet;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 737
    iget-object v1, v0, Landroid/net/wifi/SecurityParams;->mAllowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 738
    iget-object v1, v0, Landroid/net/wifi/SecurityParams;->mAllowedPairwiseCiphers:Ljava/util/BitSet;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 740
    iget-object v1, v0, Landroid/net/wifi/SecurityParams;->mAllowedGroupCiphers:Ljava/util/BitSet;

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 741
    iget-object v1, v0, Landroid/net/wifi/SecurityParams;->mAllowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    return-object v0
.end method

.method private static createPasspointParams(I)Landroid/net/wifi/SecurityParams;
    .locals 4

    .line 663
    new-instance v0, Landroid/net/wifi/SecurityParams;

    invoke-direct {v0}, Landroid/net/wifi/SecurityParams;-><init>()V

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq p0, v3, :cond_1

    if-eq p0, v2, :cond_1

    if-ne p0, v1, :cond_0

    const/16 p0, 0xc

    .line 670
    iput p0, v0, Landroid/net/wifi/SecurityParams;->mSecurityType:I

    .line 671
    iput-boolean v3, v0, Landroid/net/wifi/SecurityParams;->mRequirePmf:Z

    goto :goto_0

    .line 674
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid passpoint release "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/16 p0, 0xb

    .line 667
    iput p0, v0, Landroid/net/wifi/SecurityParams;->mSecurityType:I

    .line 677
    :goto_0
    iget-object p0, v0, Landroid/net/wifi/SecurityParams;->mAllowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {p0, v2}, Ljava/util/BitSet;->set(I)V

    .line 678
    iget-object p0, v0, Landroid/net/wifi/SecurityParams;->mAllowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {p0, v1}, Ljava/util/BitSet;->set(I)V

    .line 680
    iget-object p0, v0, Landroid/net/wifi/SecurityParams;->mAllowedProtocols:Ljava/util/BitSet;

    invoke-virtual {p0, v3}, Ljava/util/BitSet;->set(I)V

    .line 682
    iget-object p0, v0, Landroid/net/wifi/SecurityParams;->mAllowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {p0, v2}, Ljava/util/BitSet;->set(I)V

    .line 684
    iget-object p0, v0, Landroid/net/wifi/SecurityParams;->mAllowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {p0, v1}, Ljava/util/BitSet;->set(I)V

    return-object v0
.end method

.method public static createSecurityParamsBySecurityType(I)Landroid/net/wifi/SecurityParams;
    .locals 3

    packed-switch p0, :pswitch_data_0

    .line 634
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown security type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/4 p0, 0x3

    .line 632
    invoke-static {p0}, Landroid/net/wifi/SecurityParams;->createPasspointParams(I)Landroid/net/wifi/SecurityParams;

    move-result-object p0

    return-object p0

    :pswitch_1
    const/4 p0, 0x2

    .line 630
    invoke-static {p0}, Landroid/net/wifi/SecurityParams;->createPasspointParams(I)Landroid/net/wifi/SecurityParams;

    move-result-object p0

    return-object p0

    .line 628
    :pswitch_2
    invoke-static {}, Landroid/net/wifi/SecurityParams;->createOsenParams()Landroid/net/wifi/SecurityParams;

    move-result-object p0

    return-object p0

    .line 626
    :pswitch_3
    invoke-static {}, Landroid/net/wifi/SecurityParams;->createWpa3EnterpriseParams()Landroid/net/wifi/SecurityParams;

    move-result-object p0

    return-object p0

    .line 624
    :pswitch_4
    invoke-static {}, Landroid/net/wifi/SecurityParams;->createWapiCertParams()Landroid/net/wifi/SecurityParams;

    move-result-object p0

    return-object p0

    .line 622
    :pswitch_5
    invoke-static {}, Landroid/net/wifi/SecurityParams;->createWapiPskParams()Landroid/net/wifi/SecurityParams;

    move-result-object p0

    return-object p0

    .line 620
    :pswitch_6
    invoke-static {}, Landroid/net/wifi/SecurityParams;->createEnhancedOpenParams()Landroid/net/wifi/SecurityParams;

    move-result-object p0

    return-object p0

    .line 618
    :pswitch_7
    invoke-static {}, Landroid/net/wifi/SecurityParams;->createWpa3Enterprise192BitParams()Landroid/net/wifi/SecurityParams;

    move-result-object p0

    return-object p0

    .line 613
    :pswitch_8
    invoke-static {}, Landroid/net/wifi/SecurityParams;->createWpa3PersonalParams()Landroid/net/wifi/SecurityParams;

    move-result-object p0

    return-object p0

    .line 611
    :pswitch_9
    invoke-static {}, Landroid/net/wifi/SecurityParams;->createWpaWpa2EnterpriseParams()Landroid/net/wifi/SecurityParams;

    move-result-object p0

    return-object p0

    .line 609
    :pswitch_a
    invoke-static {}, Landroid/net/wifi/SecurityParams;->createWpaWpa2PersonalParams()Landroid/net/wifi/SecurityParams;

    move-result-object p0

    return-object p0

    .line 607
    :pswitch_b
    invoke-static {}, Landroid/net/wifi/SecurityParams;->createWepParams()Landroid/net/wifi/SecurityParams;

    move-result-object p0

    return-object p0

    .line 605
    :pswitch_c
    invoke-static {}, Landroid/net/wifi/SecurityParams;->createOpenParams()Landroid/net/wifi/SecurityParams;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static createWapiCertParams()Landroid/net/wifi/SecurityParams;
    .locals 3

    .line 749
    new-instance v0, Landroid/net/wifi/SecurityParams;

    invoke-direct {v0}, Landroid/net/wifi/SecurityParams;-><init>()V

    const/16 v1, 0x8

    .line 750
    iput v1, v0, Landroid/net/wifi/SecurityParams;->mSecurityType:I

    .line 752
    iget-object v1, v0, Landroid/net/wifi/SecurityParams;->mAllowedKeyManagement:Ljava/util/BitSet;

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 754
    iget-object v1, v0, Landroid/net/wifi/SecurityParams;->mAllowedProtocols:Ljava/util/BitSet;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 756
    iget-object v1, v0, Landroid/net/wifi/SecurityParams;->mAllowedPairwiseCiphers:Ljava/util/BitSet;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 758
    iget-object v1, v0, Landroid/net/wifi/SecurityParams;->mAllowedGroupCiphers:Ljava/util/BitSet;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    return-object v0
.end method

.method private static createWapiPskParams()Landroid/net/wifi/SecurityParams;
    .locals 3

    .line 766
    new-instance v0, Landroid/net/wifi/SecurityParams;

    invoke-direct {v0}, Landroid/net/wifi/SecurityParams;-><init>()V

    const/4 v1, 0x7

    .line 767
    iput v1, v0, Landroid/net/wifi/SecurityParams;->mSecurityType:I

    .line 769
    iget-object v1, v0, Landroid/net/wifi/SecurityParams;->mAllowedKeyManagement:Ljava/util/BitSet;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 771
    iget-object v1, v0, Landroid/net/wifi/SecurityParams;->mAllowedProtocols:Ljava/util/BitSet;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 773
    iget-object v1, v0, Landroid/net/wifi/SecurityParams;->mAllowedPairwiseCiphers:Ljava/util/BitSet;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 775
    iget-object v1, v0, Landroid/net/wifi/SecurityParams;->mAllowedGroupCiphers:Ljava/util/BitSet;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    return-object v0
.end method

.method private static createWepParams()Landroid/net/wifi/SecurityParams;
    .locals 6

    .line 783
    new-instance v0, Landroid/net/wifi/SecurityParams;

    invoke-direct {v0}, Landroid/net/wifi/SecurityParams;-><init>()V

    const/4 v1, 0x1

    .line 784
    iput v1, v0, Landroid/net/wifi/SecurityParams;->mSecurityType:I

    .line 786
    iget-object v2, v0, Landroid/net/wifi/SecurityParams;->mAllowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 788
    iget-object v2, v0, Landroid/net/wifi/SecurityParams;->mAllowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->set(I)V

    .line 790
    iget-object v2, v0, Landroid/net/wifi/SecurityParams;->mAllowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 791
    iget-object v2, v0, Landroid/net/wifi/SecurityParams;->mAllowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->set(I)V

    .line 793
    iget-object v2, v0, Landroid/net/wifi/SecurityParams;->mAllowedPairwiseCiphers:Ljava/util/BitSet;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    .line 794
    iget-object v2, v0, Landroid/net/wifi/SecurityParams;->mAllowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->set(I)V

    .line 796
    iget-object v2, v0, Landroid/net/wifi/SecurityParams;->mAllowedGroupCiphers:Ljava/util/BitSet;

    const/4 v5, 0x3

    invoke-virtual {v2, v5}, Ljava/util/BitSet;->set(I)V

    .line 797
    iget-object v2, v0, Landroid/net/wifi/SecurityParams;->mAllowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    .line 798
    iget-object v2, v0, Landroid/net/wifi/SecurityParams;->mAllowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 799
    iget-object v2, v0, Landroid/net/wifi/SecurityParams;->mAllowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->set(I)V

    return-object v0
.end method

.method private static createWpa3Enterprise192BitParams()Landroid/net/wifi/SecurityParams;
    .locals 6

    .line 807
    new-instance v0, Landroid/net/wifi/SecurityParams;

    invoke-direct {v0}, Landroid/net/wifi/SecurityParams;-><init>()V

    const/4 v1, 0x5

    .line 808
    iput v1, v0, Landroid/net/wifi/SecurityParams;->mSecurityType:I

    .line 810
    iget-object v2, v0, Landroid/net/wifi/SecurityParams;->mAllowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 811
    iget-object v2, v0, Landroid/net/wifi/SecurityParams;->mAllowedKeyManagement:Ljava/util/BitSet;

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    .line 812
    iget-object v2, v0, Landroid/net/wifi/SecurityParams;->mAllowedKeyManagement:Ljava/util/BitSet;

    const/16 v5, 0xa

    invoke-virtual {v2, v5}, Ljava/util/BitSet;->set(I)V

    .line 814
    iget-object v2, v0, Landroid/net/wifi/SecurityParams;->mAllowedProtocols:Ljava/util/BitSet;

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/util/BitSet;->set(I)V

    .line 816
    iget-object v2, v0, Landroid/net/wifi/SecurityParams;->mAllowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->set(I)V

    .line 817
    iget-object v2, v0, Landroid/net/wifi/SecurityParams;->mAllowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    .line 819
    iget-object v2, v0, Landroid/net/wifi/SecurityParams;->mAllowedGroupCiphers:Ljava/util/BitSet;

    const/4 v4, 0x7

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    .line 820
    iget-object v2, v0, Landroid/net/wifi/SecurityParams;->mAllowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->set(I)V

    .line 822
    iget-object v1, v0, Landroid/net/wifi/SecurityParams;->mAllowedGroupManagementCiphers:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 827
    iput-boolean v5, v0, Landroid/net/wifi/SecurityParams;->mRequirePmf:Z

    return-object v0
.end method

.method private static createWpa3EnterpriseParams()Landroid/net/wifi/SecurityParams;
    .locals 5

    .line 835
    new-instance v0, Landroid/net/wifi/SecurityParams;

    invoke-direct {v0}, Landroid/net/wifi/SecurityParams;-><init>()V

    const/16 v1, 0x9

    .line 836
    iput v1, v0, Landroid/net/wifi/SecurityParams;->mSecurityType:I

    .line 838
    iget-object v1, v0, Landroid/net/wifi/SecurityParams;->mAllowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 839
    iget-object v1, v0, Landroid/net/wifi/SecurityParams;->mAllowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 841
    iget-object v1, v0, Landroid/net/wifi/SecurityParams;->mAllowedProtocols:Ljava/util/BitSet;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    .line 843
    iget-object v1, v0, Landroid/net/wifi/SecurityParams;->mAllowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 844
    iget-object v1, v0, Landroid/net/wifi/SecurityParams;->mAllowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 846
    iget-object v1, v0, Landroid/net/wifi/SecurityParams;->mAllowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 847
    iget-object v1, v0, Landroid/net/wifi/SecurityParams;->mAllowedGroupCiphers:Ljava/util/BitSet;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 849
    iput-boolean v4, v0, Landroid/net/wifi/SecurityParams;->mRequirePmf:Z

    return-object v0
.end method

.method private static createWpa3PersonalParams()Landroid/net/wifi/SecurityParams;
    .locals 5

    .line 857
    new-instance v0, Landroid/net/wifi/SecurityParams;

    invoke-direct {v0}, Landroid/net/wifi/SecurityParams;-><init>()V

    const/4 v1, 0x4

    .line 858
    iput v1, v0, Landroid/net/wifi/SecurityParams;->mSecurityType:I

    .line 860
    iget-object v1, v0, Landroid/net/wifi/SecurityParams;->mAllowedKeyManagement:Ljava/util/BitSet;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 862
    iget-object v1, v0, Landroid/net/wifi/SecurityParams;->mAllowedProtocols:Ljava/util/BitSet;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 864
    iget-object v1, v0, Landroid/net/wifi/SecurityParams;->mAllowedPairwiseCiphers:Ljava/util/BitSet;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 865
    iget-object v1, v0, Landroid/net/wifi/SecurityParams;->mAllowedPairwiseCiphers:Ljava/util/BitSet;

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 866
    iget-object v1, v0, Landroid/net/wifi/SecurityParams;->mAllowedPairwiseCiphers:Ljava/util/BitSet;

    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    .line 868
    iget-object v1, v0, Landroid/net/wifi/SecurityParams;->mAllowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    .line 869
    iget-object v1, v0, Landroid/net/wifi/SecurityParams;->mAllowedGroupCiphers:Ljava/util/BitSet;

    const/4 v4, 0x7

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    .line 870
    iget-object v1, v0, Landroid/net/wifi/SecurityParams;->mAllowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 872
    iput-boolean v2, v0, Landroid/net/wifi/SecurityParams;->mRequirePmf:Z

    return-object v0
.end method

.method private static createWpaWpa2EnterpriseParams()Landroid/net/wifi/SecurityParams;
    .locals 6

    .line 642
    new-instance v0, Landroid/net/wifi/SecurityParams;

    invoke-direct {v0}, Landroid/net/wifi/SecurityParams;-><init>()V

    const/4 v1, 0x3

    .line 643
    iput v1, v0, Landroid/net/wifi/SecurityParams;->mSecurityType:I

    .line 645
    iget-object v2, v0, Landroid/net/wifi/SecurityParams;->mAllowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 646
    iget-object v2, v0, Landroid/net/wifi/SecurityParams;->mAllowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->set(I)V

    .line 648
    iget-object v2, v0, Landroid/net/wifi/SecurityParams;->mAllowedProtocols:Ljava/util/BitSet;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    .line 649
    iget-object v2, v0, Landroid/net/wifi/SecurityParams;->mAllowedProtocols:Ljava/util/BitSet;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/util/BitSet;->set(I)V

    .line 651
    iget-object v2, v0, Landroid/net/wifi/SecurityParams;->mAllowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 652
    iget-object v2, v0, Landroid/net/wifi/SecurityParams;->mAllowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    .line 654
    iget-object v2, v0, Landroid/net/wifi/SecurityParams;->mAllowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->set(I)V

    .line 655
    iget-object v1, v0, Landroid/net/wifi/SecurityParams;->mAllowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    return-object v0
.end method

.method private static createWpaWpa2PersonalParams()Landroid/net/wifi/SecurityParams;
    .locals 6

    .line 880
    new-instance v0, Landroid/net/wifi/SecurityParams;

    invoke-direct {v0}, Landroid/net/wifi/SecurityParams;-><init>()V

    const/4 v1, 0x2

    .line 881
    iput v1, v0, Landroid/net/wifi/SecurityParams;->mSecurityType:I

    .line 883
    iget-object v2, v0, Landroid/net/wifi/SecurityParams;->mAllowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 885
    iget-object v2, v0, Landroid/net/wifi/SecurityParams;->mAllowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 886
    iget-object v2, v0, Landroid/net/wifi/SecurityParams;->mAllowedProtocols:Ljava/util/BitSet;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    .line 888
    iget-object v2, v0, Landroid/net/wifi/SecurityParams;->mAllowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->set(I)V

    .line 889
    iget-object v2, v0, Landroid/net/wifi/SecurityParams;->mAllowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 891
    iget-object v2, v0, Landroid/net/wifi/SecurityParams;->mAllowedGroupCiphers:Ljava/util/BitSet;

    const/4 v5, 0x3

    invoke-virtual {v2, v5}, Ljava/util/BitSet;->set(I)V

    .line 892
    iget-object v2, v0, Landroid/net/wifi/SecurityParams;->mAllowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->set(I)V

    .line 893
    iget-object v1, v0, Landroid/net/wifi/SecurityParams;->mAllowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    .line 894
    iget-object v1, v0, Landroid/net/wifi/SecurityParams;->mAllowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    return-object v0
.end method

.method private static readBitSet(Landroid/os/Parcel;)Ljava/util/BitSet;
    .locals 4

    .line 526
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 528
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 530
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private static writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V
    .locals 2

    .line 539
    invoke-virtual {p1}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, -0x1

    move v1, v0

    :goto_0
    add-int/lit8 v1, v1, 0x1

    .line 541
    invoke-virtual {p1, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 542
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 161
    :cond_0
    instance-of v1, p1, Landroid/net/wifi/SecurityParams;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 164
    :cond_1
    check-cast p1, Landroid/net/wifi/SecurityParams;

    .line 166
    iget v1, p0, Landroid/net/wifi/SecurityParams;->mSecurityType:I

    iget v3, p1, Landroid/net/wifi/SecurityParams;->mSecurityType:I

    if-eq v1, v3, :cond_2

    return v2

    .line 167
    :cond_2
    iget-boolean v1, p0, Landroid/net/wifi/SecurityParams;->mEnabled:Z

    iget-boolean v3, p1, Landroid/net/wifi/SecurityParams;->mEnabled:Z

    if-eq v1, v3, :cond_3

    return v2

    .line 168
    :cond_3
    iget-object v1, p0, Landroid/net/wifi/SecurityParams;->mAllowedKeyManagement:Ljava/util/BitSet;

    iget-object v3, p1, Landroid/net/wifi/SecurityParams;->mAllowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 169
    :cond_4
    iget-object v1, p0, Landroid/net/wifi/SecurityParams;->mAllowedProtocols:Ljava/util/BitSet;

    iget-object v3, p1, Landroid/net/wifi/SecurityParams;->mAllowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 170
    :cond_5
    iget-object v1, p0, Landroid/net/wifi/SecurityParams;->mAllowedAuthAlgorithms:Ljava/util/BitSet;

    iget-object v3, p1, Landroid/net/wifi/SecurityParams;->mAllowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 171
    :cond_6
    iget-object v1, p0, Landroid/net/wifi/SecurityParams;->mAllowedPairwiseCiphers:Ljava/util/BitSet;

    iget-object v3, p1, Landroid/net/wifi/SecurityParams;->mAllowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    .line 172
    :cond_7
    iget-object v1, p0, Landroid/net/wifi/SecurityParams;->mAllowedGroupCiphers:Ljava/util/BitSet;

    iget-object v3, p1, Landroid/net/wifi/SecurityParams;->mAllowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 173
    :cond_8
    iget-object v1, p0, Landroid/net/wifi/SecurityParams;->mAllowedGroupManagementCiphers:Ljava/util/BitSet;

    iget-object v3, p1, Landroid/net/wifi/SecurityParams;->mAllowedGroupManagementCiphers:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    .line 176
    :cond_9
    iget-object v1, p0, Landroid/net/wifi/SecurityParams;->mAllowedSuiteBCiphers:Ljava/util/BitSet;

    iget-object v3, p1, Landroid/net/wifi/SecurityParams;->mAllowedSuiteBCiphers:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    .line 177
    :cond_a
    iget-boolean v1, p0, Landroid/net/wifi/SecurityParams;->mRequirePmf:Z

    iget-boolean v3, p1, Landroid/net/wifi/SecurityParams;->mRequirePmf:Z

    if-eq v1, v3, :cond_b

    return v2

    .line 178
    :cond_b
    iget-boolean v1, p0, Landroid/net/wifi/SecurityParams;->mIsSaeH2eOnlyMode:Z

    iget-boolean v3, p1, Landroid/net/wifi/SecurityParams;->mIsSaeH2eOnlyMode:Z

    if-eq v1, v3, :cond_c

    return v2

    .line 179
    :cond_c
    iget-boolean v1, p0, Landroid/net/wifi/SecurityParams;->mIsSaePkOnlyMode:Z

    iget-boolean v3, p1, Landroid/net/wifi/SecurityParams;->mIsSaePkOnlyMode:Z

    if-eq v1, v3, :cond_d

    return v2

    .line 180
    :cond_d
    iget-boolean p0, p0, Landroid/net/wifi/SecurityParams;->mIsAddedByAutoUpgrade:Z

    iget-boolean p1, p1, Landroid/net/wifi/SecurityParams;->mIsAddedByAutoUpgrade:Z

    if-eq p0, p1, :cond_e

    return v2

    :cond_e
    return v0
.end method

.method public getSecurityType()I
    .locals 0

    .line 200
    iget p0, p0, Landroid/net/wifi/SecurityParams;->mSecurityType:I

    return p0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/Object;

    .line 187
    iget v1, p0, Landroid/net/wifi/SecurityParams;->mSecurityType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/net/wifi/SecurityParams;->mEnabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/SecurityParams;->mAllowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/SecurityParams;->mAllowedProtocols:Ljava/util/BitSet;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/SecurityParams;->mAllowedAuthAlgorithms:Ljava/util/BitSet;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/SecurityParams;->mAllowedPairwiseCiphers:Ljava/util/BitSet;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/SecurityParams;->mAllowedGroupCiphers:Ljava/util/BitSet;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/SecurityParams;->mAllowedGroupManagementCiphers:Ljava/util/BitSet;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/SecurityParams;->mAllowedSuiteBCiphers:Ljava/util/BitSet;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/net/wifi/SecurityParams;->mRequirePmf:Z

    .line 190
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/net/wifi/SecurityParams;->mIsSaeH2eOnlyMode:Z

    .line 191
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/net/wifi/SecurityParams;->mIsSaePkOnlyMode:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget-boolean p0, p0, Landroid/net/wifi/SecurityParams;->mIsAddedByAutoUpgrade:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/16 v1, 0xc

    aput-object p0, v0, v1

    .line 187
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isAddedByAutoUpgrade()Z
    .locals 0

    .line 425
    iget-boolean p0, p0, Landroid/net/wifi/SecurityParams;->mIsAddedByAutoUpgrade:Z

    return p0
.end method

.method public isEnterpriseSecurityType()Z
    .locals 2

    .line 369
    iget-object v0, p0, Landroid/net/wifi/SecurityParams;->mAllowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/net/wifi/SecurityParams;->mAllowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x3

    .line 370
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/net/wifi/SecurityParams;->mAllowedKeyManagement:Ljava/util/BitSet;

    const/16 v1, 0xa

    .line 371
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Landroid/net/wifi/SecurityParams;->mAllowedKeyManagement:Ljava/util/BitSet;

    const/16 v0, 0xe

    .line 372
    invoke-virtual {p0, v0}, Ljava/util/BitSet;->get(I)Z

    move-result p0

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

.method public isOpenSecurityType()Z
    .locals 2

    const/4 v0, 0x0

    .line 361
    invoke-virtual {p0, v0}, Landroid/net/wifi/SecurityParams;->isSecurityType(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x6

    .line 362
    invoke-virtual {p0, v1}, Landroid/net/wifi/SecurityParams;->isSecurityType(I)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public isSameSecurityType(Landroid/net/wifi/SecurityParams;)Z
    .locals 0

    .line 220
    iget p1, p1, Landroid/net/wifi/SecurityParams;->mSecurityType:I

    iget p0, p0, Landroid/net/wifi/SecurityParams;->mSecurityType:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSecurityType(I)Z
    .locals 0

    .line 210
    iget p0, p0, Landroid/net/wifi/SecurityParams;->mSecurityType:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .line 430
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Security Parameters:\n"

    .line 431
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Type: "

    .line 432
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/wifi/SecurityParams;->mSecurityType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Enabled: "

    .line 433
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroid/net/wifi/SecurityParams;->mEnabled:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " KeyMgmt:"

    .line 434
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    move v3, v2

    .line 435
    :goto_0
    iget-object v4, p0, Landroid/net/wifi/SecurityParams;->mAllowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4}, Ljava/util/BitSet;->size()I

    move-result v4

    const-string v5, "??"

    const-string v6, " "

    if-ge v3, v4, :cond_2

    .line 436
    iget-object v4, p0, Landroid/net/wifi/SecurityParams;->mAllowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 437
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    sget-object v4, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    array-length v6, v4

    if-ge v3, v6, :cond_0

    .line 439
    aget-object v4, v4, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 441
    :cond_0
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/16 v3, 0xa

    .line 445
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v4, " Protocols:"

    .line 446
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v4, v2

    .line 447
    :goto_2
    iget-object v7, p0, Landroid/net/wifi/SecurityParams;->mAllowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v7}, Ljava/util/BitSet;->size()I

    move-result v7

    if-ge v4, v7, :cond_5

    .line 448
    iget-object v7, p0, Landroid/net/wifi/SecurityParams;->mAllowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v7, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 449
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    sget-object v7, Landroid/net/wifi/WifiConfiguration$Protocol;->strings:[Ljava/lang/String;

    array-length v8, v7

    if-ge v4, v8, :cond_3

    .line 451
    aget-object v7, v7, v4

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 453
    :cond_3
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 457
    :cond_5
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v4, " AuthAlgorithms:"

    .line 458
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v4, v2

    .line 459
    :goto_4
    iget-object v7, p0, Landroid/net/wifi/SecurityParams;->mAllowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v7}, Ljava/util/BitSet;->size()I

    move-result v7

    if-ge v4, v7, :cond_8

    .line 460
    iget-object v7, p0, Landroid/net/wifi/SecurityParams;->mAllowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v7, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 461
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    sget-object v7, Landroid/net/wifi/WifiConfiguration$AuthAlgorithm;->strings:[Ljava/lang/String;

    array-length v8, v7

    if-ge v4, v8, :cond_6

    .line 463
    aget-object v7, v7, v4

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 465
    :cond_6
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 469
    :cond_8
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v4, " PairwiseCiphers:"

    .line 470
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v4, v2

    .line 471
    :goto_6
    iget-object v7, p0, Landroid/net/wifi/SecurityParams;->mAllowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v7}, Ljava/util/BitSet;->size()I

    move-result v7

    if-ge v4, v7, :cond_b

    .line 472
    iget-object v7, p0, Landroid/net/wifi/SecurityParams;->mAllowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v7, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 473
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    sget-object v7, Landroid/net/wifi/WifiConfiguration$PairwiseCipher;->strings:[Ljava/lang/String;

    array-length v8, v7

    if-ge v4, v8, :cond_9

    .line 475
    aget-object v7, v7, v4

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 477
    :cond_9
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 481
    :cond_b
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v4, " GroupCiphers:"

    .line 482
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v4, v2

    .line 483
    :goto_8
    iget-object v7, p0, Landroid/net/wifi/SecurityParams;->mAllowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v7}, Ljava/util/BitSet;->size()I

    move-result v7

    if-ge v4, v7, :cond_e

    .line 484
    iget-object v7, p0, Landroid/net/wifi/SecurityParams;->mAllowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v7, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 485
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    sget-object v7, Landroid/net/wifi/WifiConfiguration$GroupCipher;->strings:[Ljava/lang/String;

    array-length v8, v7

    if-ge v4, v8, :cond_c

    .line 487
    aget-object v7, v7, v4

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 489
    :cond_c
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    :goto_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 493
    :cond_e
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v4, " GroupMgmtCiphers:"

    .line 494
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v4, v2

    .line 495
    :goto_a
    iget-object v7, p0, Landroid/net/wifi/SecurityParams;->mAllowedGroupManagementCiphers:Ljava/util/BitSet;

    invoke-virtual {v7}, Ljava/util/BitSet;->size()I

    move-result v7

    if-ge v4, v7, :cond_11

    .line 496
    iget-object v7, p0, Landroid/net/wifi/SecurityParams;->mAllowedGroupManagementCiphers:Ljava/util/BitSet;

    invoke-virtual {v7, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 497
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    sget-object v7, Landroid/net/wifi/WifiConfiguration$GroupMgmtCipher;->strings:[Ljava/lang/String;

    array-length v8, v7

    if-ge v4, v8, :cond_f

    .line 499
    aget-object v7, v7, v4

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 501
    :cond_f
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10
    :goto_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 505
    :cond_11
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v4, " SuiteBCiphers:"

    .line 506
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    :goto_c
    iget-object v4, p0, Landroid/net/wifi/SecurityParams;->mAllowedSuiteBCiphers:Ljava/util/BitSet;

    invoke-virtual {v4}, Ljava/util/BitSet;->size()I

    move-result v4

    if-ge v2, v4, :cond_14

    .line 508
    iget-object v4, p0, Landroid/net/wifi/SecurityParams;->mAllowedSuiteBCiphers:Ljava/util/BitSet;

    invoke-virtual {v4, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 509
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    sget-object v4, Landroid/net/wifi/WifiConfiguration$SuiteBCipher;->strings:[Ljava/lang/String;

    array-length v7, v4

    if-ge v2, v7, :cond_12

    .line 511
    aget-object v4, v4, v2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    .line 513
    :cond_12
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_13
    :goto_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 517
    :cond_14
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, " RequirePmf: "

    .line 518
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroid/net/wifi/SecurityParams;->mRequirePmf:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, " IsAddedByAutoUpgrade: "

    .line 519
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroid/net/wifi/SecurityParams;->mIsAddedByAutoUpgrade:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " IsSaeH2eOnlyMode: "

    .line 520
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroid/net/wifi/SecurityParams;->mIsSaeH2eOnlyMode:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " IsSaePkOnlyMode: "

    .line 521
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Landroid/net/wifi/SecurityParams;->mIsSaePkOnlyMode:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateLegacyWifiConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    .locals 1

    .line 229
    iget-object v0, p0, Landroid/net/wifi/SecurityParams;->mAllowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    iput-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 230
    iget-object v0, p0, Landroid/net/wifi/SecurityParams;->mAllowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    iput-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    .line 231
    iget-object v0, p0, Landroid/net/wifi/SecurityParams;->mAllowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    iput-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    .line 232
    iget-object v0, p0, Landroid/net/wifi/SecurityParams;->mAllowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    iput-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    .line 233
    iget-object v0, p0, Landroid/net/wifi/SecurityParams;->mAllowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    iput-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    .line 234
    iget-object v0, p0, Landroid/net/wifi/SecurityParams;->mAllowedGroupManagementCiphers:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    iput-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedGroupManagementCiphers:Ljava/util/BitSet;

    .line 235
    iget-object v0, p0, Landroid/net/wifi/SecurityParams;->mAllowedSuiteBCiphers:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    iput-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedSuiteBCiphers:Ljava/util/BitSet;

    .line 236
    iget-boolean p0, p0, Landroid/net/wifi/SecurityParams;->mRequirePmf:Z

    iput-boolean p0, p1, Landroid/net/wifi/WifiConfiguration;->requirePmf:Z

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 548
    iget p2, p0, Landroid/net/wifi/SecurityParams;->mSecurityType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 549
    iget-boolean p2, p0, Landroid/net/wifi/SecurityParams;->mEnabled:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 550
    iget-object p2, p0, Landroid/net/wifi/SecurityParams;->mAllowedKeyManagement:Ljava/util/BitSet;

    invoke-static {p1, p2}, Landroid/net/wifi/SecurityParams;->writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V

    .line 551
    iget-object p2, p0, Landroid/net/wifi/SecurityParams;->mAllowedProtocols:Ljava/util/BitSet;

    invoke-static {p1, p2}, Landroid/net/wifi/SecurityParams;->writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V

    .line 552
    iget-object p2, p0, Landroid/net/wifi/SecurityParams;->mAllowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-static {p1, p2}, Landroid/net/wifi/SecurityParams;->writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V

    .line 553
    iget-object p2, p0, Landroid/net/wifi/SecurityParams;->mAllowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-static {p1, p2}, Landroid/net/wifi/SecurityParams;->writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V

    .line 554
    iget-object p2, p0, Landroid/net/wifi/SecurityParams;->mAllowedGroupCiphers:Ljava/util/BitSet;

    invoke-static {p1, p2}, Landroid/net/wifi/SecurityParams;->writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V

    .line 555
    iget-object p2, p0, Landroid/net/wifi/SecurityParams;->mAllowedGroupManagementCiphers:Ljava/util/BitSet;

    invoke-static {p1, p2}, Landroid/net/wifi/SecurityParams;->writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V

    .line 556
    iget-object p2, p0, Landroid/net/wifi/SecurityParams;->mAllowedSuiteBCiphers:Ljava/util/BitSet;

    invoke-static {p1, p2}, Landroid/net/wifi/SecurityParams;->writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V

    .line 557
    iget-boolean p2, p0, Landroid/net/wifi/SecurityParams;->mRequirePmf:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 558
    iget-boolean p2, p0, Landroid/net/wifi/SecurityParams;->mIsAddedByAutoUpgrade:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 559
    iget-boolean p2, p0, Landroid/net/wifi/SecurityParams;->mIsSaeH2eOnlyMode:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 560
    iget-boolean p0, p0, Landroid/net/wifi/SecurityParams;->mIsSaePkOnlyMode:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method

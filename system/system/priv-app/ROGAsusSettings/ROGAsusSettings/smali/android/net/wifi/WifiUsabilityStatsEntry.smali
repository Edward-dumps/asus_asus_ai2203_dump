.class public final Landroid/net/wifi/WifiUsabilityStatsEntry;
.super Ljava/lang/Object;
.source "WifiUsabilityStatsEntry.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;,
        Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;,
        Landroid/net/wifi/WifiUsabilityStatsEntry$ContentionTimeStats;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/WifiUsabilityStatsEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCellularDataNetworkType:I

.field private final mCellularSignalStrengthDb:I

.field private final mCellularSignalStrengthDbm:I

.field private final mChannelUtilizationRatio:I

.field private final mContentionTimeStats:[Landroid/net/wifi/WifiUsabilityStatsEntry$ContentionTimeStats;

.field private final mIsCellularDataAvailable:Z

.field private final mIsSameRegisteredCell:Z

.field private final mIsThroughputSufficient:Z

.field private final mIsWifiScoringEnabled:Z

.field private final mLinkSpeedMbps:I

.field private final mProbeElapsedTimeSinceLastUpdateMillis:I

.field private final mProbeMcsRateSinceLastUpdate:I

.field private final mProbeStatusSinceLastUpdate:I

.field private final mRadioStats:[Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;

.field private final mRateStats:[Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;

.field private final mRssi:I

.field private final mRxLinkSpeedMbps:I

.field private final mTimeSliceDutyCycleInPercent:I

.field private final mTimeStampMillis:J

.field private final mTotalBackgroundScanTimeMillis:J

.field private final mTotalBeaconRx:J

.field private final mTotalCcaBusyFreqTimeMillis:J

.field private final mTotalHotspot2ScanTimeMillis:J

.field private final mTotalNanScanTimeMillis:J

.field private final mTotalPnoScanTimeMillis:J

.field private final mTotalRadioOnFreqTimeMillis:J

.field private final mTotalRadioOnTimeMillis:J

.field private final mTotalRadioRxTimeMillis:J

.field private final mTotalRadioTxTimeMillis:J

.field private final mTotalRoamScanTimeMillis:J

.field private final mTotalRxSuccess:J

.field private final mTotalScanTimeMillis:J

.field private final mTotalTxBad:J

.field private final mTotalTxRetries:J

.field private final mTotalTxSuccess:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 706
    new-instance v0, Landroid/net/wifi/WifiUsabilityStatsEntry$1;

    invoke-direct {v0}, Landroid/net/wifi/WifiUsabilityStatsEntry$1;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiUsabilityStatsEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JIIJJJJJJJJJJJJJJJJIIIII[Landroid/net/wifi/WifiUsabilityStatsEntry$ContentionTimeStats;[Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;[Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;IZZZIIIZ)V
    .locals 3

    move-object v0, p0

    .line 623
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-wide v1, p1

    .line 624
    iput-wide v1, v0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTimeStampMillis:J

    move v1, p3

    .line 625
    iput v1, v0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mRssi:I

    move v1, p4

    .line 626
    iput v1, v0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mLinkSpeedMbps:I

    move-wide v1, p5

    .line 627
    iput-wide v1, v0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalTxSuccess:J

    move-wide v1, p7

    .line 628
    iput-wide v1, v0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalTxRetries:J

    move-wide v1, p9

    .line 629
    iput-wide v1, v0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalTxBad:J

    move-wide v1, p11

    .line 630
    iput-wide v1, v0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalRxSuccess:J

    move-wide/from16 v1, p13

    .line 631
    iput-wide v1, v0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalRadioOnTimeMillis:J

    move-wide/from16 v1, p15

    .line 632
    iput-wide v1, v0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalRadioTxTimeMillis:J

    move-wide/from16 v1, p17

    .line 633
    iput-wide v1, v0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalRadioRxTimeMillis:J

    move-wide/from16 v1, p19

    .line 634
    iput-wide v1, v0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalScanTimeMillis:J

    move-wide/from16 v1, p21

    .line 635
    iput-wide v1, v0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalNanScanTimeMillis:J

    move-wide/from16 v1, p23

    .line 636
    iput-wide v1, v0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalBackgroundScanTimeMillis:J

    move-wide/from16 v1, p25

    .line 637
    iput-wide v1, v0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalRoamScanTimeMillis:J

    move-wide/from16 v1, p27

    .line 638
    iput-wide v1, v0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalPnoScanTimeMillis:J

    move-wide/from16 v1, p29

    .line 639
    iput-wide v1, v0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalHotspot2ScanTimeMillis:J

    move-wide/from16 v1, p31

    .line 640
    iput-wide v1, v0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalCcaBusyFreqTimeMillis:J

    move-wide/from16 v1, p33

    .line 641
    iput-wide v1, v0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalRadioOnFreqTimeMillis:J

    move-wide/from16 v1, p35

    .line 642
    iput-wide v1, v0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalBeaconRx:J

    move/from16 v1, p37

    .line 643
    iput v1, v0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mProbeStatusSinceLastUpdate:I

    move/from16 v1, p38

    .line 644
    iput v1, v0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mProbeElapsedTimeSinceLastUpdateMillis:I

    move/from16 v1, p39

    .line 645
    iput v1, v0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mProbeMcsRateSinceLastUpdate:I

    move/from16 v1, p40

    .line 646
    iput v1, v0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mRxLinkSpeedMbps:I

    move/from16 v1, p41

    .line 647
    iput v1, v0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTimeSliceDutyCycleInPercent:I

    move-object/from16 v1, p42

    .line 648
    iput-object v1, v0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mContentionTimeStats:[Landroid/net/wifi/WifiUsabilityStatsEntry$ContentionTimeStats;

    move-object/from16 v1, p43

    .line 649
    iput-object v1, v0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mRateStats:[Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;

    move-object/from16 v1, p44

    .line 650
    iput-object v1, v0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mRadioStats:[Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;

    move/from16 v1, p45

    .line 651
    iput v1, v0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mChannelUtilizationRatio:I

    move/from16 v1, p46

    .line 652
    iput-boolean v1, v0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mIsThroughputSufficient:Z

    move/from16 v1, p47

    .line 653
    iput-boolean v1, v0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mIsWifiScoringEnabled:Z

    move/from16 v1, p48

    .line 654
    iput-boolean v1, v0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mIsCellularDataAvailable:Z

    move/from16 v1, p49

    .line 655
    iput v1, v0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mCellularDataNetworkType:I

    move/from16 v1, p50

    .line 656
    iput v1, v0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mCellularSignalStrengthDbm:I

    move/from16 v1, p51

    .line 657
    iput v1, v0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mCellularSignalStrengthDb:I

    move/from16 v1, p52

    .line 658
    iput-boolean v1, v0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mIsSameRegisteredCell:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 668
    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTimeStampMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 669
    iget v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mRssi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 670
    iget v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mLinkSpeedMbps:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 671
    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalTxSuccess:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 672
    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalTxRetries:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 673
    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalTxBad:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 674
    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalRxSuccess:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 675
    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalRadioOnTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 676
    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalRadioTxTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 677
    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalRadioRxTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 678
    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalScanTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 679
    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalNanScanTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 680
    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalBackgroundScanTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 681
    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalRoamScanTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 682
    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalPnoScanTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 683
    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalHotspot2ScanTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 684
    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalCcaBusyFreqTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 685
    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalRadioOnFreqTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 686
    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTotalBeaconRx:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 687
    iget v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mProbeStatusSinceLastUpdate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 688
    iget v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mProbeElapsedTimeSinceLastUpdateMillis:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 689
    iget v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mProbeMcsRateSinceLastUpdate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 690
    iget v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mRxLinkSpeedMbps:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 691
    iget v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mTimeSliceDutyCycleInPercent:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 692
    iget-object v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mContentionTimeStats:[Landroid/net/wifi/WifiUsabilityStatsEntry$ContentionTimeStats;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 693
    iget-object v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mRateStats:[Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 694
    iget-object v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mRadioStats:[Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 695
    iget p2, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mChannelUtilizationRatio:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 696
    iget-boolean p2, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mIsThroughputSufficient:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 697
    iget-boolean p2, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mIsWifiScoringEnabled:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 698
    iget-boolean p2, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mIsCellularDataAvailable:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 699
    iget p2, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mCellularDataNetworkType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 700
    iget p2, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mCellularSignalStrengthDbm:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 701
    iget p2, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mCellularSignalStrengthDb:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 702
    iget-boolean p0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry;->mIsSameRegisteredCell:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method

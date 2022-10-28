.class public final Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;
.super Ljava/lang/Object;
.source "WifiUsabilityStatsEntry.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiUsabilityStatsEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RadioStats"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mRadioId:I

.field private mTotalBackgroundScanTimeMillis:J

.field private mTotalHotspot2ScanTimeMillis:J

.field private mTotalNanScanTimeMillis:J

.field private mTotalPnoScanTimeMillis:J

.field private mTotalRadioOnTimeMillis:J

.field private mTotalRadioRxTimeMillis:J

.field private mTotalRadioTxTimeMillis:J

.field private mTotalRoamScanTimeMillis:J

.field private mTotalScanTimeMillis:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 513
    new-instance v0, Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats$1;

    invoke-direct {v0}, Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats$1;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 452
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1302(Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;I)I
    .locals 0

    .line 439
    iput p1, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;->mRadioId:I

    return p1
.end method

.method static synthetic access$1402(Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;J)J
    .locals 0

    .line 439
    iput-wide p1, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;->mTotalRadioOnTimeMillis:J

    return-wide p1
.end method

.method static synthetic access$1502(Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;J)J
    .locals 0

    .line 439
    iput-wide p1, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;->mTotalRadioTxTimeMillis:J

    return-wide p1
.end method

.method static synthetic access$1602(Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;J)J
    .locals 0

    .line 439
    iput-wide p1, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;->mTotalRadioRxTimeMillis:J

    return-wide p1
.end method

.method static synthetic access$1702(Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;J)J
    .locals 0

    .line 439
    iput-wide p1, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;->mTotalScanTimeMillis:J

    return-wide p1
.end method

.method static synthetic access$1802(Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;J)J
    .locals 0

    .line 439
    iput-wide p1, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;->mTotalNanScanTimeMillis:J

    return-wide p1
.end method

.method static synthetic access$1902(Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;J)J
    .locals 0

    .line 439
    iput-wide p1, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;->mTotalBackgroundScanTimeMillis:J

    return-wide p1
.end method

.method static synthetic access$2002(Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;J)J
    .locals 0

    .line 439
    iput-wide p1, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;->mTotalRoamScanTimeMillis:J

    return-wide p1
.end method

.method static synthetic access$2102(Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;J)J
    .locals 0

    .line 439
    iput-wide p1, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;->mTotalPnoScanTimeMillis:J

    return-wide p1
.end method

.method static synthetic access$2202(Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;J)J
    .locals 0

    .line 439
    iput-wide p1, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;->mTotalHotspot2ScanTimeMillis:J

    return-wide p1
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 500
    iget p2, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;->mRadioId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 501
    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;->mTotalRadioOnTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 502
    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;->mTotalRadioTxTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 503
    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;->mTotalRadioRxTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 504
    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;->mTotalScanTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 505
    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;->mTotalNanScanTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 506
    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;->mTotalBackgroundScanTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 507
    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;->mTotalRoamScanTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 508
    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;->mTotalPnoScanTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 509
    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;->mTotalHotspot2ScanTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method

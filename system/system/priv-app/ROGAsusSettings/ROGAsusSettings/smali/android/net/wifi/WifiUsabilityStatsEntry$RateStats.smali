.class public final Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;
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
    name = "RateStats"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBitRateInKbps:I

.field private mBw:I

.field private mMpduLost:I

.field private mNss:I

.field private mPreamble:I

.field private mRateMcsIdx:I

.field private mRetries:I

.field private mRxMpdu:I

.field private mTxMpdu:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 367
    new-instance v0, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats$1;

    invoke-direct {v0}, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats$1;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1002(Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;I)I
    .locals 0

    .line 306
    iput p1, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;->mRxMpdu:I

    return p1
.end method

.method static synthetic access$1102(Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;I)I
    .locals 0

    .line 306
    iput p1, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;->mMpduLost:I

    return p1
.end method

.method static synthetic access$1202(Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;I)I
    .locals 0

    .line 306
    iput p1, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;->mRetries:I

    return p1
.end method

.method static synthetic access$402(Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;I)I
    .locals 0

    .line 306
    iput p1, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;->mPreamble:I

    return p1
.end method

.method static synthetic access$502(Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;I)I
    .locals 0

    .line 306
    iput p1, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;->mNss:I

    return p1
.end method

.method static synthetic access$602(Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;I)I
    .locals 0

    .line 306
    iput p1, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;->mBw:I

    return p1
.end method

.method static synthetic access$702(Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;I)I
    .locals 0

    .line 306
    iput p1, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;->mRateMcsIdx:I

    return p1
.end method

.method static synthetic access$802(Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;I)I
    .locals 0

    .line 306
    iput p1, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;->mBitRateInKbps:I

    return p1
.end method

.method static synthetic access$902(Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;I)I
    .locals 0

    .line 306
    iput p1, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;->mTxMpdu:I

    return p1
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 355
    iget p2, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;->mPreamble:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 356
    iget p2, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;->mNss:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 357
    iget p2, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;->mBw:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 358
    iget p2, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;->mRateMcsIdx:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 359
    iget p2, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;->mBitRateInKbps:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 360
    iget p2, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;->mTxMpdu:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 361
    iget p2, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;->mRxMpdu:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 362
    iget p2, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;->mMpduLost:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 363
    iget p0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;->mRetries:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

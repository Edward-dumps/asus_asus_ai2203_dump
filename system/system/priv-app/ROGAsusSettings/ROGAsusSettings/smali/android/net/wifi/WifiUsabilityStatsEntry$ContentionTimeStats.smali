.class public final Landroid/net/wifi/WifiUsabilityStatsEntry$ContentionTimeStats;
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
    name = "ContentionTimeStats"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/WifiUsabilityStatsEntry$ContentionTimeStats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContentionNumSamples:J

.field private mContentionTimeAvgMicros:J

.field private mContentionTimeMaxMicros:J

.field private mContentionTimeMinMicros:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 187
    new-instance v0, Landroid/net/wifi/WifiUsabilityStatsEntry$ContentionTimeStats$1;

    invoke-direct {v0}, Landroid/net/wifi/WifiUsabilityStatsEntry$ContentionTimeStats$1;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiUsabilityStatsEntry$ContentionTimeStats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Landroid/net/wifi/WifiUsabilityStatsEntry$ContentionTimeStats;J)J
    .locals 0

    .line 149
    iput-wide p1, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$ContentionTimeStats;->mContentionTimeMinMicros:J

    return-wide p1
.end method

.method static synthetic access$102(Landroid/net/wifi/WifiUsabilityStatsEntry$ContentionTimeStats;J)J
    .locals 0

    .line 149
    iput-wide p1, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$ContentionTimeStats;->mContentionTimeMaxMicros:J

    return-wide p1
.end method

.method static synthetic access$202(Landroid/net/wifi/WifiUsabilityStatsEntry$ContentionTimeStats;J)J
    .locals 0

    .line 149
    iput-wide p1, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$ContentionTimeStats;->mContentionTimeAvgMicros:J

    return-wide p1
.end method

.method static synthetic access$302(Landroid/net/wifi/WifiUsabilityStatsEntry$ContentionTimeStats;J)J
    .locals 0

    .line 149
    iput-wide p1, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$ContentionTimeStats;->mContentionNumSamples:J

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

    .line 180
    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$ContentionTimeStats;->mContentionTimeMinMicros:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 181
    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$ContentionTimeStats;->mContentionTimeMaxMicros:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 182
    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$ContentionTimeStats;->mContentionTimeAvgMicros:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 183
    iget-wide v0, p0, Landroid/net/wifi/WifiUsabilityStatsEntry$ContentionTimeStats;->mContentionNumSamples:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method

.class Landroid/net/wifi/WifiUsabilityStatsEntry$ContentionTimeStats$1;
.super Ljava/lang/Object;
.source "WifiUsabilityStatsEntry.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiUsabilityStatsEntry$ContentionTimeStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/WifiUsabilityStatsEntry$ContentionTimeStats;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiUsabilityStatsEntry$ContentionTimeStats;
    .locals 2

    .line 190
    new-instance p0, Landroid/net/wifi/WifiUsabilityStatsEntry$ContentionTimeStats;

    invoke-direct {p0}, Landroid/net/wifi/WifiUsabilityStatsEntry$ContentionTimeStats;-><init>()V

    .line 191
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Landroid/net/wifi/WifiUsabilityStatsEntry$ContentionTimeStats;->access$002(Landroid/net/wifi/WifiUsabilityStatsEntry$ContentionTimeStats;J)J

    .line 192
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Landroid/net/wifi/WifiUsabilityStatsEntry$ContentionTimeStats;->access$102(Landroid/net/wifi/WifiUsabilityStatsEntry$ContentionTimeStats;J)J

    .line 193
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Landroid/net/wifi/WifiUsabilityStatsEntry$ContentionTimeStats;->access$202(Landroid/net/wifi/WifiUsabilityStatsEntry$ContentionTimeStats;J)J

    .line 194
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Landroid/net/wifi/WifiUsabilityStatsEntry$ContentionTimeStats;->access$302(Landroid/net/wifi/WifiUsabilityStatsEntry$ContentionTimeStats;J)J

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 188
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiUsabilityStatsEntry$ContentionTimeStats$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiUsabilityStatsEntry$ContentionTimeStats;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/net/wifi/WifiUsabilityStatsEntry$ContentionTimeStats;
    .locals 0

    .line 198
    new-array p0, p1, [Landroid/net/wifi/WifiUsabilityStatsEntry$ContentionTimeStats;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 188
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiUsabilityStatsEntry$ContentionTimeStats$1;->newArray(I)[Landroid/net/wifi/WifiUsabilityStatsEntry$ContentionTimeStats;

    move-result-object p0

    return-object p0
.end method

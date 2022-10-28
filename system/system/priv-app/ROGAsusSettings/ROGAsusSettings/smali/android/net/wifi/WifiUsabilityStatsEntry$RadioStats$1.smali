.class Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats$1;
.super Ljava/lang/Object;
.source "WifiUsabilityStatsEntry.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 514
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;
    .locals 2

    .line 516
    new-instance p0, Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;

    invoke-direct {p0}, Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;-><init>()V

    .line 517
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {p0, v0}, Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;->access$1302(Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;I)I

    .line 518
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;->access$1402(Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;J)J

    .line 519
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;->access$1502(Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;J)J

    .line 520
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;->access$1602(Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;J)J

    .line 521
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;->access$1702(Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;J)J

    .line 522
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;->access$1802(Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;J)J

    .line 523
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;->access$1902(Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;J)J

    .line 524
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;->access$2002(Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;J)J

    .line 525
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;->access$2102(Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;J)J

    .line 526
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;->access$2202(Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;J)J

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 514
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;
    .locals 0

    .line 530
    new-array p0, p1, [Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 514
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats$1;->newArray(I)[Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;

    move-result-object p0

    return-object p0
.end method

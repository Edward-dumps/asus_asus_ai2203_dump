.class Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats$1;
.super Ljava/lang/Object;
.source "WifiUsabilityStatsEntry.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;
    .locals 1

    .line 369
    new-instance p0, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;

    invoke-direct {p0}, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;-><init>()V

    .line 370
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {p0, v0}, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;->access$402(Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;I)I

    .line 371
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {p0, v0}, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;->access$502(Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;I)I

    .line 372
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {p0, v0}, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;->access$602(Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;I)I

    .line 373
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {p0, v0}, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;->access$702(Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;I)I

    .line 374
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {p0, v0}, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;->access$802(Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;I)I

    .line 375
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {p0, v0}, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;->access$902(Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;I)I

    .line 376
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {p0, v0}, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;->access$1002(Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;I)I

    .line 377
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {p0, v0}, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;->access$1102(Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;I)I

    .line 378
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p0, p1}, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;->access$1202(Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;I)I

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 367
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;
    .locals 0

    .line 382
    new-array p0, p1, [Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 367
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats$1;->newArray(I)[Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;

    move-result-object p0

    return-object p0
.end method

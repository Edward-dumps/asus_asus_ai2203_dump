.class Landroid/net/wifi/WifiUsabilityStatsEntry$1;
.super Ljava/lang/Object;
.source "WifiUsabilityStatsEntry.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiUsabilityStatsEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/WifiUsabilityStatsEntry;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 707
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiUsabilityStatsEntry;
    .locals 55

    move-object/from16 v0, p1

    .line 709
    new-instance v54, Landroid/net/wifi/WifiUsabilityStatsEntry;

    move-object/from16 v1, v54

    .line 710
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 711
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 712
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    .line 713
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v20

    .line 714
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v22

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v24

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v26

    .line 715
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v28

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v30

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v32

    .line 716
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v34

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v36

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v38

    .line 717
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v39

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v40

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v41

    .line 718
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v42

    move-object/from16 p0, v1

    sget-object v1, Landroid/net/wifi/WifiUsabilityStatsEntry$ContentionTimeStats;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v43, v1

    check-cast v43, [Landroid/net/wifi/WifiUsabilityStatsEntry$ContentionTimeStats;

    sget-object v1, Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 719
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v44, v1

    check-cast v44, [Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;

    sget-object v1, Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 720
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v45, v1

    check-cast v45, [Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;

    .line 721
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v46

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v47

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v48

    .line 722
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v49

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v50

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v51

    .line 723
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v52

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v53

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v53}, Landroid/net/wifi/WifiUsabilityStatsEntry;-><init>(JIIJJJJJJJJJJJJJJJJIIIII[Landroid/net/wifi/WifiUsabilityStatsEntry$ContentionTimeStats;[Landroid/net/wifi/WifiUsabilityStatsEntry$RateStats;[Landroid/net/wifi/WifiUsabilityStatsEntry$RadioStats;IZZZIIIZ)V

    return-object v54
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 707
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiUsabilityStatsEntry$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiUsabilityStatsEntry;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/net/wifi/WifiUsabilityStatsEntry;
    .locals 0

    .line 728
    new-array p0, p1, [Landroid/net/wifi/WifiUsabilityStatsEntry;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 707
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiUsabilityStatsEntry$1;->newArray(I)[Landroid/net/wifi/WifiUsabilityStatsEntry;

    move-result-object p0

    return-object p0
.end method

.class Landroid/net/wifi/SoftApConfiguration$1;
.super Ljava/lang/Object;
.source "SoftApConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/SoftApConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/SoftApConfiguration;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 477
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/SoftApConfiguration;
    .locals 21

    move-object/from16 v0, p1

    .line 480
    new-instance v20, Landroid/net/wifi/SoftApConfiguration;

    move-object/from16 v1, v20

    .line 481
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    const-class v3, Landroid/net/MacAddress;

    .line 482
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/MacAddress;

    .line 483
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    invoke-static/range {p1 .. p1}, Landroid/net/wifi/SoftApConfiguration;->access$000(Landroid/os/Parcel;)Landroid/util/SparseIntArray;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 484
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v12

    sget-object v13, Landroid/net/MacAddress;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 485
    invoke-virtual {v0, v13}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v13

    sget-object v14, Landroid/net/MacAddress;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 486
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v16

    .line 487
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v17

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v18

    const/16 v19, 0x0

    invoke-direct/range {v1 .. v19}, Landroid/net/wifi/SoftApConfiguration;-><init>(Ljava/lang/String;Landroid/net/MacAddress;Ljava/lang/String;ZLandroid/util/SparseIntArray;IIZJZLjava/util/List;Ljava/util/List;IZZZLandroid/net/wifi/SoftApConfiguration$1;)V

    return-object v20
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 477
    invoke-virtual {p0, p1}, Landroid/net/wifi/SoftApConfiguration$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/SoftApConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/net/wifi/SoftApConfiguration;
    .locals 0

    .line 492
    new-array p0, p1, [Landroid/net/wifi/SoftApConfiguration;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 477
    invoke-virtual {p0, p1}, Landroid/net/wifi/SoftApConfiguration$1;->newArray(I)[Landroid/net/wifi/SoftApConfiguration;

    move-result-object p0

    return-object p0
.end method

.class public final Landroid/net/wifi/rtt/CivicLocation;
.super Ljava/lang/Object;
.source "CivicLocation.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/rtt/CivicLocation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCivicAddressElements:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mCountryCode:Ljava/lang/String;

.field private final mIsValid:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 94
    new-instance v0, Landroid/net/wifi/rtt/CivicLocation$1;

    invoke-direct {v0}, Landroid/net/wifi/rtt/CivicLocation$1;-><init>()V

    sput-object v0, Landroid/net/wifi/rtt/CivicLocation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Landroid/net/wifi/rtt/CivicLocation;->mCivicAddressElements:Landroid/util/SparseArray;

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/net/wifi/rtt/CivicLocation;->mIsValid:Z

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/rtt/CivicLocation;->mCountryCode:Ljava/lang/String;

    .line 91
    const-class v0, Landroid/net/wifi/rtt/CivicLocation;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readSparseArray(Ljava/lang/ClassLoader;)Landroid/util/SparseArray;

    move-result-object p1

    iput-object p1, p0, Landroid/net/wifi/rtt/CivicLocation;->mCivicAddressElements:Landroid/util/SparseArray;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/net/wifi/rtt/CivicLocation$1;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Landroid/net/wifi/rtt/CivicLocation;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private getSparseArrayKeys(Landroid/util/SparseArray;)[I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;)[I"
        }
    .end annotation

    .line 311
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p0

    .line 312
    new-array v0, p0, [I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    .line 314
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getSparseArrayValues(Landroid/util/SparseArray;)[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 326
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p0

    .line 327
    new-array v0, p0, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    .line 329
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private isSparseArrayStringEqual(Landroid/util/SparseArray;Landroid/util/SparseArray;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 290
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p0

    .line 291
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    if-eq p0, v0, :cond_0

    return v1

    :cond_0
    move v0, v1

    :goto_0
    if-ge v0, p0, :cond_2

    .line 295
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 296
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 297
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 257
    :cond_0
    instance-of v1, p1, Landroid/net/wifi/rtt/CivicLocation;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 260
    :cond_1
    check-cast p1, Landroid/net/wifi/rtt/CivicLocation;

    .line 261
    iget-boolean v1, p0, Landroid/net/wifi/rtt/CivicLocation;->mIsValid:Z

    iget-boolean v3, p1, Landroid/net/wifi/rtt/CivicLocation;->mIsValid:Z

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Landroid/net/wifi/rtt/CivicLocation;->mCountryCode:Ljava/lang/String;

    iget-object v3, p1, Landroid/net/wifi/rtt/CivicLocation;->mCountryCode:Ljava/lang/String;

    .line 262
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/net/wifi/rtt/CivicLocation;->mCivicAddressElements:Landroid/util/SparseArray;

    iget-object p1, p1, Landroid/net/wifi/rtt/CivicLocation;->mCivicAddressElements:Landroid/util/SparseArray;

    .line 263
    invoke-direct {p0, v1, p1}, Landroid/net/wifi/rtt/CivicLocation;->isSparseArrayStringEqual(Landroid/util/SparseArray;Landroid/util/SparseArray;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 5

    .line 268
    iget-object v0, p0, Landroid/net/wifi/rtt/CivicLocation;->mCivicAddressElements:Landroid/util/SparseArray;

    invoke-direct {p0, v0}, Landroid/net/wifi/rtt/CivicLocation;->getSparseArrayKeys(Landroid/util/SparseArray;)[I

    move-result-object v0

    .line 269
    iget-object v1, p0, Landroid/net/wifi/rtt/CivicLocation;->mCivicAddressElements:Landroid/util/SparseArray;

    invoke-direct {p0, v1}, Landroid/net/wifi/rtt/CivicLocation;->getSparseArrayValues(Landroid/util/SparseArray;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    .line 270
    iget-boolean v3, p0, Landroid/net/wifi/rtt/CivicLocation;->mIsValid:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object p0, p0, Landroid/net/wifi/rtt/CivicLocation;->mCountryCode:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object p0, v2, v3

    const/4 p0, 0x2

    aput-object v0, v2, p0

    const/4 p0, 0x3

    aput-object v1, v2, p0

    invoke-static {v2}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 174
    iget-object p0, p0, Landroid/net/wifi/rtt/CivicLocation;->mCivicAddressElements:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 113
    iget-boolean p2, p0, Landroid/net/wifi/rtt/CivicLocation;->mIsValid:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 114
    iget-object p2, p0, Landroid/net/wifi/rtt/CivicLocation;->mCountryCode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 115
    iget-object p0, p0, Landroid/net/wifi/rtt/CivicLocation;->mCivicAddressElements:Landroid/util/SparseArray;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeSparseArray(Landroid/util/SparseArray;)V

    return-void
.end method

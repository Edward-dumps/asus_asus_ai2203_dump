.class public final Landroid/net/wifi/aware/ConfigRequest;
.super Ljava/lang/Object;
.source "ConfigRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/aware/ConfigRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mClusterHigh:I

.field public final mClusterLow:I

.field public final mDiscoveryWindowInterval:[I

.field public final mMasterPreference:I

.field public final mSupport5gBand:Z

.field public final mSupport6gBand:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 125
    new-instance v0, Landroid/net/wifi/aware/ConfigRequest$1;

    invoke-direct {v0}, Landroid/net/wifi/aware/ConfigRequest$1;-><init>()V

    sput-object v0, Landroid/net/wifi/aware/ConfigRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(ZZIII[I)V
    .locals 0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-boolean p1, p0, Landroid/net/wifi/aware/ConfigRequest;->mSupport5gBand:Z

    .line 93
    iput-boolean p2, p0, Landroid/net/wifi/aware/ConfigRequest;->mSupport6gBand:Z

    .line 94
    iput p3, p0, Landroid/net/wifi/aware/ConfigRequest;->mMasterPreference:I

    .line 95
    iput p4, p0, Landroid/net/wifi/aware/ConfigRequest;->mClusterLow:I

    .line 96
    iput p5, p0, Landroid/net/wifi/aware/ConfigRequest;->mClusterHigh:I

    .line 97
    iput-object p6, p0, Landroid/net/wifi/aware/ConfigRequest;->mDiscoveryWindowInterval:[I

    return-void
.end method

.method synthetic constructor <init>(ZZIII[ILandroid/net/wifi/aware/ConfigRequest$1;)V
    .locals 0

    .line 34
    invoke-direct/range {p0 .. p6}, Landroid/net/wifi/aware/ConfigRequest;-><init>(ZZIII[I)V

    return-void
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

    .line 151
    :cond_0
    instance-of v1, p1, Landroid/net/wifi/aware/ConfigRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 155
    :cond_1
    check-cast p1, Landroid/net/wifi/aware/ConfigRequest;

    .line 157
    iget-boolean v1, p0, Landroid/net/wifi/aware/ConfigRequest;->mSupport5gBand:Z

    iget-boolean v3, p1, Landroid/net/wifi/aware/ConfigRequest;->mSupport5gBand:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Landroid/net/wifi/aware/ConfigRequest;->mSupport6gBand:Z

    iget-boolean v3, p1, Landroid/net/wifi/aware/ConfigRequest;->mSupport6gBand:Z

    if-ne v1, v3, :cond_2

    iget v1, p0, Landroid/net/wifi/aware/ConfigRequest;->mMasterPreference:I

    iget v3, p1, Landroid/net/wifi/aware/ConfigRequest;->mMasterPreference:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Landroid/net/wifi/aware/ConfigRequest;->mClusterLow:I

    iget v3, p1, Landroid/net/wifi/aware/ConfigRequest;->mClusterLow:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Landroid/net/wifi/aware/ConfigRequest;->mClusterHigh:I

    iget v3, p1, Landroid/net/wifi/aware/ConfigRequest;->mClusterHigh:I

    if-ne v1, v3, :cond_2

    iget-object p0, p0, Landroid/net/wifi/aware/ConfigRequest;->mDiscoveryWindowInterval:[I

    iget-object p1, p1, Landroid/net/wifi/aware/ConfigRequest;->mDiscoveryWindowInterval:[I

    .line 161
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 168
    iget-boolean v0, p0, Landroid/net/wifi/aware/ConfigRequest;->mSupport5gBand:Z

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 169
    iget-boolean v0, p0, Landroid/net/wifi/aware/ConfigRequest;->mSupport6gBand:Z

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 170
    iget v0, p0, Landroid/net/wifi/aware/ConfigRequest;->mMasterPreference:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 171
    iget v0, p0, Landroid/net/wifi/aware/ConfigRequest;->mClusterLow:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 172
    iget v0, p0, Landroid/net/wifi/aware/ConfigRequest;->mClusterHigh:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 173
    iget-object p0, p0, Landroid/net/wifi/aware/ConfigRequest;->mDiscoveryWindowInterval:[I

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([I)I

    move-result p0

    add-int/2addr v1, p0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConfigRequest [mSupport5gBand="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/net/wifi/aware/ConfigRequest;->mSupport5gBand:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mSupport6gBand="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/net/wifi/aware/ConfigRequest;->mSupport6gBand:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mMasterPreference="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/wifi/aware/ConfigRequest;->mMasterPreference:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mClusterLow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/wifi/aware/ConfigRequest;->mClusterLow:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mClusterHigh="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/wifi/aware/ConfigRequest;->mClusterHigh:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDiscoveryWindowInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/net/wifi/aware/ConfigRequest;->mDiscoveryWindowInterval:[I

    .line 107
    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 117
    iget-boolean p2, p0, Landroid/net/wifi/aware/ConfigRequest;->mSupport5gBand:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    iget-boolean p2, p0, Landroid/net/wifi/aware/ConfigRequest;->mSupport6gBand:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    iget p2, p0, Landroid/net/wifi/aware/ConfigRequest;->mMasterPreference:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    iget p2, p0, Landroid/net/wifi/aware/ConfigRequest;->mClusterLow:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    iget p2, p0, Landroid/net/wifi/aware/ConfigRequest;->mClusterHigh:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    iget-object p0, p0, Landroid/net/wifi/aware/ConfigRequest;->mDiscoveryWindowInterval:[I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeIntArray([I)V

    return-void
.end method

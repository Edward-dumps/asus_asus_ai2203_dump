.class public final Landroid/net/wifi/WifiAvailableChannel;
.super Ljava/lang/Object;
.source "WifiAvailableChannel.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/WifiAvailableChannel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mFrequency:I

.field private mOpModes:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 203
    new-instance v0, Landroid/net/wifi/WifiAvailableChannel$1;

    invoke-direct {v0}, Landroid/net/wifi/WifiAvailableChannel$1;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiAvailableChannel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiAvailableChannel;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/net/wifi/WifiAvailableChannel$1;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiAvailableChannel;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/WifiAvailableChannel;->mFrequency:I

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/net/wifi/WifiAvailableChannel;->mOpModes:I

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

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 176
    const-class v2, Landroid/net/wifi/WifiAvailableChannel;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 177
    :cond_1
    check-cast p1, Landroid/net/wifi/WifiAvailableChannel;

    .line 178
    iget v2, p0, Landroid/net/wifi/WifiAvailableChannel;->mFrequency:I

    iget v3, p1, Landroid/net/wifi/WifiAvailableChannel;->mFrequency:I

    if-ne v2, v3, :cond_2

    iget p0, p0, Landroid/net/wifi/WifiAvailableChannel;->mOpModes:I

    iget p1, p1, Landroid/net/wifi/WifiAvailableChannel;->mOpModes:I

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 184
    iget v1, p0, Landroid/net/wifi/WifiAvailableChannel;->mFrequency:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget p0, p0, Landroid/net/wifi/WifiAvailableChannel;->mOpModes:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mFrequency = "

    .line 190
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/wifi/WifiAvailableChannel;->mFrequency:I

    .line 191
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mOpModes = "

    .line 192
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget p0, p0, Landroid/net/wifi/WifiAvailableChannel;->mOpModes:I

    .line 193
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "%x"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 199
    iget p2, p0, Landroid/net/wifi/WifiAvailableChannel;->mFrequency:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 200
    iget p0, p0, Landroid/net/wifi/WifiAvailableChannel;->mOpModes:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

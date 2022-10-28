.class Landroid/net/wifi/RttManager$ResponderConfig$1;
.super Ljava/lang/Object;
.source "RttManager.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/RttManager$ResponderConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/RttManager$ResponderConfig;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/RttManager$ResponderConfig;
    .locals 1

    .line 1167
    new-instance p0, Landroid/net/wifi/RttManager$ResponderConfig;

    invoke-direct {p0}, Landroid/net/wifi/RttManager$ResponderConfig;-><init>()V

    .line 1168
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/RttManager$ResponderConfig;->macAddress:Ljava/lang/String;

    .line 1169
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/RttManager$ResponderConfig;->frequency:I

    .line 1170
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/RttManager$ResponderConfig;->centerFreq0:I

    .line 1171
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/RttManager$ResponderConfig;->centerFreq1:I

    .line 1172
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/RttManager$ResponderConfig;->channelWidth:I

    .line 1173
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/net/wifi/RttManager$ResponderConfig;->preamble:I

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1164
    invoke-virtual {p0, p1}, Landroid/net/wifi/RttManager$ResponderConfig$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/RttManager$ResponderConfig;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/net/wifi/RttManager$ResponderConfig;
    .locals 0

    .line 1179
    new-array p0, p1, [Landroid/net/wifi/RttManager$ResponderConfig;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1164
    invoke-virtual {p0, p1}, Landroid/net/wifi/RttManager$ResponderConfig$1;->newArray(I)[Landroid/net/wifi/RttManager$ResponderConfig;

    move-result-object p0

    return-object p0
.end method

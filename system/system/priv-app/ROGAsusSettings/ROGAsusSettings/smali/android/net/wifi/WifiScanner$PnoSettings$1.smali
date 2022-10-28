.class Landroid/net/wifi/WifiScanner$PnoSettings$1;
.super Ljava/lang/Object;
.source "WifiScanner.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiScanner$PnoSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/WifiScanner$PnoSettings;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 999
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiScanner$PnoSettings;
    .locals 4

    .line 1001
    new-instance p0, Landroid/net/wifi/WifiScanner$PnoSettings;

    invoke-direct {p0}, Landroid/net/wifi/WifiScanner$PnoSettings;-><init>()V

    .line 1002
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput-boolean v2, p0, Landroid/net/wifi/WifiScanner$PnoSettings;->isConnected:Z

    .line 1003
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/WifiScanner$PnoSettings;->min5GHzRssi:I

    .line 1004
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/WifiScanner$PnoSettings;->min24GHzRssi:I

    .line 1005
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/WifiScanner$PnoSettings;->min6GHzRssi:I

    .line 1006
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1007
    new-array v2, v0, [Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    iput-object v2, p0, Landroid/net/wifi/WifiScanner$PnoSettings;->networkList:[Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    :goto_1
    if-ge v1, v0, :cond_1

    .line 1009
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1010
    new-instance v3, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    invoke-direct {v3, v2}, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;-><init>(Ljava/lang/String;)V

    .line 1011
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    iput-byte v2, v3, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->flags:B

    .line 1012
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    iput-byte v2, v3, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->authBitField:B

    .line 1013
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    iput-object v2, v3, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->frequencies:[I

    .line 1014
    iget-object v2, p0, Landroid/net/wifi/WifiScanner$PnoSettings;->networkList:[Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 999
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiScanner$PnoSettings$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiScanner$PnoSettings;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/net/wifi/WifiScanner$PnoSettings;
    .locals 0

    .line 1020
    new-array p0, p1, [Landroid/net/wifi/WifiScanner$PnoSettings;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 999
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiScanner$PnoSettings$1;->newArray(I)[Landroid/net/wifi/WifiScanner$PnoSettings;

    move-result-object p0

    return-object p0
.end method

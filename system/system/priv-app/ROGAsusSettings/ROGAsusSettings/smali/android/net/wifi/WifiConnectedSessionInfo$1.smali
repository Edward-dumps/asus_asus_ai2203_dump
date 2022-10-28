.class Landroid/net/wifi/WifiConnectedSessionInfo$1;
.super Ljava/lang/Object;
.source "WifiConnectedSessionInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiConnectedSessionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/WifiConnectedSessionInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiConnectedSessionInfo;
    .locals 2

    .line 78
    new-instance p0, Landroid/net/wifi/WifiConnectedSessionInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Landroid/net/wifi/WifiConnectedSessionInfo;-><init>(IZLandroid/net/wifi/WifiConnectedSessionInfo$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 76
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiConnectedSessionInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiConnectedSessionInfo;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/net/wifi/WifiConnectedSessionInfo;
    .locals 0

    .line 82
    new-array p0, p1, [Landroid/net/wifi/WifiConnectedSessionInfo;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 76
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiConnectedSessionInfo$1;->newArray(I)[Landroid/net/wifi/WifiConnectedSessionInfo;

    move-result-object p0

    return-object p0
.end method

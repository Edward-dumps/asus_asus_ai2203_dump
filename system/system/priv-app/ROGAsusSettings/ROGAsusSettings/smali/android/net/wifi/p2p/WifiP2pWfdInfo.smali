.class public final Landroid/net/wifi/p2p/WifiP2pWfdInfo;
.super Ljava/lang/Object;
.source "WifiP2pWfdInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/p2p/WifiP2pWfdInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCtrlPort:I

.field private mDeviceInfo:I

.field private mEnabled:Z

.field private mMaxThroughput:I

.field private mR2DeviceInfo:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 491
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pWfdInfo$1;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pWfdInfo$1;-><init>()V

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 50
    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mR2DeviceInfo:I

    return-void
.end method

.method static synthetic access$000(Landroid/net/wifi/p2p/WifiP2pWfdInfo;Landroid/os/Parcel;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .line 483
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mEnabled:Z

    .line 484
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    .line 485
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mCtrlPort:I

    .line 486
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mMaxThroughput:I

    .line 487
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mR2DeviceInfo:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 447
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "WFD enabled: "

    .line 448
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v1, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v1, "WFD DeviceInfo: "

    .line 449
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "\n WFD CtrlPort: "

    .line 450
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mCtrlPort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "\n WFD MaxThroughput: "

    .line 451
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mMaxThroughput:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "\n WFD R2 DeviceInfo: "

    .line 452
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget p0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mR2DeviceInfo:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 453
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 475
    iget-boolean p2, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mEnabled:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 476
    iget p2, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mDeviceInfo:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 477
    iget p2, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mCtrlPort:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 478
    iget p2, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mMaxThroughput:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 479
    iget p0, p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->mR2DeviceInfo:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

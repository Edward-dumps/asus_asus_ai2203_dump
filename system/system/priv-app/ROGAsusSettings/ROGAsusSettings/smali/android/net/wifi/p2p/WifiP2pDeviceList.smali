.class public Landroid/net/wifi/p2p/WifiP2pDeviceList;
.super Ljava/lang/Object;
.source "WifiP2pDeviceList.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/p2p/WifiP2pDeviceList;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDevices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/p2p/WifiP2pDevice;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 203
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDeviceList$1;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList$1;-><init>()V

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pDeviceList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDeviceList;->mDevices:Ljava/util/HashMap;

    return-void
.end method

.method private validateDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 0

    if-eqz p1, :cond_1

    .line 63
    iget-object p0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 64
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Empty deviceAddress"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 62
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Null device"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getDeviceList()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroid/net/wifi/p2p/WifiP2pDevice;",
            ">;"
        }
    .end annotation

    .line 168
    iget-object p0, p0, Landroid/net/wifi/p2p/WifiP2pDeviceList;->mDevices:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 182
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 183
    iget-object p0, p0, Landroid/net/wifi/p2p/WifiP2pDeviceList;->mDevices:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pDevice;

    const-string v2, "\n"

    .line 184
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 186
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public update(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 1
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
        maxTargetSdk = 0x1e
        trackingBug = 0xa2d2051L
    .end annotation

    .line 89
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->updateSupplicantDetails(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 90
    iget-object p0, p0, Landroid/net/wifi/p2p/WifiP2pDeviceList;->mDevices:Ljava/util/HashMap;

    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/p2p/WifiP2pDevice;

    iget p1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    iput p1, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    return-void
.end method

.method public updateSupplicantDetails(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 2

    .line 95
    invoke-direct {p0, p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->validateDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 96
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDeviceList;->mDevices:Ljava/util/HashMap;

    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_0

    .line 98
    iget-object p0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    iput-object p0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 99
    iget-object p0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    iput-object p0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    .line 100
    iget-object p0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->secondaryDeviceType:Ljava/lang/String;

    iput-object p0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->secondaryDeviceType:Ljava/lang/String;

    .line 101
    iget p0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsConfigMethodsSupported:I

    iput p0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsConfigMethodsSupported:I

    .line 102
    iget p0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceCapability:I

    iput p0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceCapability:I

    .line 103
    iget p0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->groupCapability:I

    iput p0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->groupCapability:I

    .line 104
    iget-object p0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    iput-object p0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    return-void

    .line 108
    :cond_0
    iget-object p0, p0, Landroid/net/wifi/p2p/WifiP2pDeviceList;->mDevices:Ljava/util/HashMap;

    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 196
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDeviceList;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    iget-object p0, p0, Landroid/net/wifi/p2p/WifiP2pDeviceList;->mDevices:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 198
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

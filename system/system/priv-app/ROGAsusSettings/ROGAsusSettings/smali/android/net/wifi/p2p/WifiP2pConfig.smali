.class public Landroid/net/wifi/p2p/WifiP2pConfig;
.super Ljava/lang/Object;
.source "WifiP2pConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/p2p/WifiP2pConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public deviceAddress:Ljava/lang/String;

.field public groupOwnerBand:I

.field public groupOwnerIntent:I

.field public netId:I
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
        maxTargetSdk = 0x1e
        trackingBug = 0xa2d2051L
    .end annotation
.end field

.field public networkName:Ljava/lang/String;

.field public passphrase:Ljava/lang/String;

.field public wps:Landroid/net/wifi/WpsInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 249
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pConfig$1;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pConfig$1;-><init>()V

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 46
    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    .line 60
    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->networkName:Ljava/lang/String;

    .line 69
    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->passphrase:Ljava/lang/String;

    const/4 v0, 0x0

    .line 84
    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->groupOwnerBand:I

    const/4 v1, -0x1

    .line 138
    iput v1, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->groupOwnerIntent:I

    const/4 v1, -0x2

    .line 142
    iput v1, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->netId:I

    .line 156
    new-instance v1, Landroid/net/wifi/WpsInfo;

    invoke-direct {v1}, Landroid/net/wifi/WpsInfo;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    .line 157
    iput v0, v1, Landroid/net/wifi/WpsInfo;->setup:I

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

    .line 207
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "\n address: "

    .line 208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n wps: "

    .line 209
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, "\n groupOwnerIntent: "

    .line 210
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->groupOwnerIntent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "\n persist: "

    .line 211
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->netId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "\n networkName: "

    .line 212
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->networkName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n passphrase: "

    .line 213
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 214
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->passphrase:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "<empty>"

    goto :goto_0

    :cond_0
    const-string v1, "<non-empty>"

    .line 213
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n groupOwnerBand: "

    .line 215
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget p0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->groupOwnerBand:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 216
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 239
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 241
    iget p2, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->groupOwnerIntent:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 242
    iget p2, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->netId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 243
    iget-object p2, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->networkName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 244
    iget-object p2, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->passphrase:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 245
    iget p0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->groupOwnerBand:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.class public final Landroid/net/wifi/rtt/ResponderConfig;
.super Ljava/lang/Object;
.source "ResponderConfig.java"

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
            "Landroid/net/wifi/rtt/ResponderConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final centerFreq0:I

.field public final centerFreq1:I

.field public final channelWidth:I

.field public final frequency:I

.field public final macAddress:Landroid/net/MacAddress;

.field public final peerHandle:Landroid/net/wifi/aware/PeerHandle;

.field public final preamble:I

.field public final responderType:I

.field public final supports80211mc:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 423
    new-instance v0, Landroid/net/wifi/rtt/ResponderConfig$1;

    invoke-direct {v0}, Landroid/net/wifi/rtt/ResponderConfig$1;-><init>()V

    sput-object v0, Landroid/net/wifi/rtt/ResponderConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/net/MacAddress;IZIIIII)V
    .locals 0

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 214
    iput-object p1, p0, Landroid/net/wifi/rtt/ResponderConfig;->macAddress:Landroid/net/MacAddress;

    const/4 p1, 0x0

    .line 215
    iput-object p1, p0, Landroid/net/wifi/rtt/ResponderConfig;->peerHandle:Landroid/net/wifi/aware/PeerHandle;

    .line 216
    iput p2, p0, Landroid/net/wifi/rtt/ResponderConfig;->responderType:I

    .line 217
    iput-boolean p3, p0, Landroid/net/wifi/rtt/ResponderConfig;->supports80211mc:Z

    .line 218
    iput p4, p0, Landroid/net/wifi/rtt/ResponderConfig;->channelWidth:I

    .line 219
    iput p5, p0, Landroid/net/wifi/rtt/ResponderConfig;->frequency:I

    .line 220
    iput p6, p0, Landroid/net/wifi/rtt/ResponderConfig;->centerFreq0:I

    .line 221
    iput p7, p0, Landroid/net/wifi/rtt/ResponderConfig;->centerFreq1:I

    .line 222
    iput p8, p0, Landroid/net/wifi/rtt/ResponderConfig;->preamble:I

    return-void

    .line 211
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid ResponderConfig - must specify a MAC address"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Landroid/net/wifi/aware/PeerHandle;IZIIIII)V
    .locals 1

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 249
    iput-object v0, p0, Landroid/net/wifi/rtt/ResponderConfig;->macAddress:Landroid/net/MacAddress;

    .line 250
    iput-object p1, p0, Landroid/net/wifi/rtt/ResponderConfig;->peerHandle:Landroid/net/wifi/aware/PeerHandle;

    .line 251
    iput p2, p0, Landroid/net/wifi/rtt/ResponderConfig;->responderType:I

    .line 252
    iput-boolean p3, p0, Landroid/net/wifi/rtt/ResponderConfig;->supports80211mc:Z

    .line 253
    iput p4, p0, Landroid/net/wifi/rtt/ResponderConfig;->channelWidth:I

    .line 254
    iput p5, p0, Landroid/net/wifi/rtt/ResponderConfig;->frequency:I

    .line 255
    iput p6, p0, Landroid/net/wifi/rtt/ResponderConfig;->centerFreq0:I

    .line 256
    iput p7, p0, Landroid/net/wifi/rtt/ResponderConfig;->centerFreq1:I

    .line 257
    iput p8, p0, Landroid/net/wifi/rtt/ResponderConfig;->preamble:I

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

    .line 465
    :cond_0
    instance-of v1, p1, Landroid/net/wifi/rtt/ResponderConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 469
    :cond_1
    check-cast p1, Landroid/net/wifi/rtt/ResponderConfig;

    .line 471
    iget-object v1, p0, Landroid/net/wifi/rtt/ResponderConfig;->macAddress:Landroid/net/MacAddress;

    iget-object v3, p1, Landroid/net/wifi/rtt/ResponderConfig;->macAddress:Landroid/net/MacAddress;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/net/wifi/rtt/ResponderConfig;->peerHandle:Landroid/net/wifi/aware/PeerHandle;

    iget-object v3, p1, Landroid/net/wifi/rtt/ResponderConfig;->peerHandle:Landroid/net/wifi/aware/PeerHandle;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Landroid/net/wifi/rtt/ResponderConfig;->responderType:I

    iget v3, p1, Landroid/net/wifi/rtt/ResponderConfig;->responderType:I

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Landroid/net/wifi/rtt/ResponderConfig;->supports80211mc:Z

    iget-boolean v3, p1, Landroid/net/wifi/rtt/ResponderConfig;->supports80211mc:Z

    if-ne v1, v3, :cond_2

    iget v1, p0, Landroid/net/wifi/rtt/ResponderConfig;->channelWidth:I

    iget v3, p1, Landroid/net/wifi/rtt/ResponderConfig;->channelWidth:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Landroid/net/wifi/rtt/ResponderConfig;->frequency:I

    iget v3, p1, Landroid/net/wifi/rtt/ResponderConfig;->frequency:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Landroid/net/wifi/rtt/ResponderConfig;->centerFreq0:I

    iget v3, p1, Landroid/net/wifi/rtt/ResponderConfig;->centerFreq0:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Landroid/net/wifi/rtt/ResponderConfig;->centerFreq1:I

    iget v3, p1, Landroid/net/wifi/rtt/ResponderConfig;->centerFreq1:I

    if-ne v1, v3, :cond_2

    iget p0, p0, Landroid/net/wifi/rtt/ResponderConfig;->preamble:I

    iget p1, p1, Landroid/net/wifi/rtt/ResponderConfig;->preamble:I

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    .line 480
    iget-object v1, p0, Landroid/net/wifi/rtt/ResponderConfig;->macAddress:Landroid/net/MacAddress;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/rtt/ResponderConfig;->peerHandle:Landroid/net/wifi/aware/PeerHandle;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/wifi/rtt/ResponderConfig;->responderType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/net/wifi/rtt/ResponderConfig;->supports80211mc:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/wifi/rtt/ResponderConfig;->channelWidth:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/wifi/rtt/ResponderConfig;->frequency:I

    .line 481
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/wifi/rtt/ResponderConfig;->centerFreq0:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/wifi/rtt/ResponderConfig;->centerFreq1:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget p0, p0, Landroid/net/wifi/rtt/ResponderConfig;->preamble:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/16 v1, 0x8

    aput-object p0, v0, v1

    .line 480
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 487
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "ResponderConfig: macAddress="

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/wifi/rtt/ResponderConfig;->macAddress:Landroid/net/MacAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, ", peerHandle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 488
    iget-object v1, p0, Landroid/net/wifi/rtt/ResponderConfig;->peerHandle:Landroid/net/wifi/aware/PeerHandle;

    if-nez v1, :cond_0

    const-string v1, "<null>"

    goto :goto_0

    :cond_0
    iget v1, v1, Landroid/net/wifi/aware/PeerHandle;->peerId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, ", responderType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/net/wifi/rtt/ResponderConfig;->responderType:I

    .line 489
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ", supports80211mc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v1, p0, Landroid/net/wifi/rtt/ResponderConfig;->supports80211mc:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v1, ", channelWidth="

    .line 490
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/net/wifi/rtt/ResponderConfig;->channelWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ", frequency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/net/wifi/rtt/ResponderConfig;->frequency:I

    .line 491
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ", centerFreq0="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/net/wifi/rtt/ResponderConfig;->centerFreq0:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ", centerFreq1="

    .line 492
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/net/wifi/rtt/ResponderConfig;->centerFreq1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ", preamble="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget p0, p0, Landroid/net/wifi/rtt/ResponderConfig;->preamble:I

    .line 493
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 402
    iget-object v0, p0, Landroid/net/wifi/rtt/ResponderConfig;->macAddress:Landroid/net/MacAddress;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 403
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_0

    .line 405
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 406
    iget-object v0, p0, Landroid/net/wifi/rtt/ResponderConfig;->macAddress:Landroid/net/MacAddress;

    invoke-virtual {v0, p1, p2}, Landroid/net/MacAddress;->writeToParcel(Landroid/os/Parcel;I)V

    .line 408
    :goto_0
    iget-object p2, p0, Landroid/net/wifi/rtt/ResponderConfig;->peerHandle:Landroid/net/wifi/aware/PeerHandle;

    if-nez p2, :cond_1

    .line 409
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_1

    .line 411
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 412
    iget-object p2, p0, Landroid/net/wifi/rtt/ResponderConfig;->peerHandle:Landroid/net/wifi/aware/PeerHandle;

    iget p2, p2, Landroid/net/wifi/aware/PeerHandle;->peerId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 414
    :goto_1
    iget p2, p0, Landroid/net/wifi/rtt/ResponderConfig;->responderType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 415
    iget-boolean p2, p0, Landroid/net/wifi/rtt/ResponderConfig;->supports80211mc:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 416
    iget p2, p0, Landroid/net/wifi/rtt/ResponderConfig;->channelWidth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 417
    iget p2, p0, Landroid/net/wifi/rtt/ResponderConfig;->frequency:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 418
    iget p2, p0, Landroid/net/wifi/rtt/ResponderConfig;->centerFreq0:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 419
    iget p2, p0, Landroid/net/wifi/rtt/ResponderConfig;->centerFreq1:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 420
    iget p0, p0, Landroid/net/wifi/rtt/ResponderConfig;->preamble:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

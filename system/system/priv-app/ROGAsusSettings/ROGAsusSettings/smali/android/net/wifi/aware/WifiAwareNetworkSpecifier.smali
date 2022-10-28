.class public final Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;
.super Landroid/net/NetworkSpecifier;
.source "WifiAwareNetworkSpecifier.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final clientId:I

.field public final passphrase:Ljava/lang/String;

.field public final peerId:I

.field public final peerMac:[B

.field public final pmk:[B

.field public final port:I

.field public final role:I

.field public final sessionId:I

.field public final transportProtocol:I

.field public final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 169
    new-instance v0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier$1;

    invoke-direct {v0}, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier$1;-><init>()V

    sput-object v0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIII[B[BLjava/lang/String;II)V
    .locals 0

    .line 156
    invoke-direct {p0}, Landroid/net/NetworkSpecifier;-><init>()V

    .line 157
    iput p1, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->type:I

    .line 158
    iput p2, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->role:I

    .line 159
    iput p3, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->clientId:I

    .line 160
    iput p4, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->sessionId:I

    .line 161
    iput p5, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->peerId:I

    .line 162
    iput-object p6, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->peerMac:[B

    .line 163
    iput-object p7, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->pmk:[B

    .line 164
    iput-object p8, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->passphrase:Ljava/lang/String;

    .line 165
    iput p9, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->port:I

    .line 166
    iput p10, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->transportProtocol:I

    return-void
.end method


# virtual methods
.method public canBeSatisfiedBy(Landroid/net/NetworkSpecifier;)Z
    .locals 1

    .line 225
    instance-of v0, p1, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;

    if-eqz v0, :cond_0

    .line 226
    check-cast p1, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;

    invoke-virtual {p1, p0}, Landroid/net/wifi/aware/WifiAwareAgentNetworkSpecifier;->satisfiesAwareNetworkSpecifier(Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;)Z

    move-result p0

    return p0

    .line 228
    :cond_0
    invoke-virtual {p0, p1}, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

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

    .line 245
    :cond_0
    instance-of v1, p1, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 249
    :cond_1
    check-cast p1, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;

    .line 251
    iget v1, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->type:I

    iget v3, p1, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->type:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->role:I

    iget v3, p1, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->role:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->clientId:I

    iget v3, p1, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->clientId:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->sessionId:I

    iget v3, p1, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->sessionId:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->peerId:I

    iget v3, p1, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->peerId:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->peerMac:[B

    iget-object v3, p1, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->peerMac:[B

    .line 256
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->pmk:[B

    iget-object v3, p1, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->pmk:[B

    .line 257
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->passphrase:Ljava/lang/String;

    iget-object v3, p1, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->passphrase:Ljava/lang/String;

    .line 258
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->port:I

    iget v3, p1, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->port:I

    if-ne v1, v3, :cond_2

    iget p0, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->transportProtocol:I

    iget p1, p1, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->transportProtocol:I

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    .line 234
    iget v1, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->role:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->clientId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->sessionId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->peerId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->peerMac:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->pmk:[B

    .line 235
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->passphrase:Ljava/lang/String;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->port:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget p0, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->transportProtocol:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/16 v1, 0x9

    aput-object p0, v0, v1

    .line 234
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WifiAwareNetworkSpecifier ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "type="

    .line 267
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", role="

    .line 268
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->role:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", clientId="

    .line 269
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->clientId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sessionId="

    .line 270
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->sessionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", peerId="

    .line 271
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->peerId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", peerMac="

    .line 273
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->peerMac:[B

    const-string v2, "<null>"

    const-string v3, "<non-null>"

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", pmk="

    .line 275
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->pmk:[B

    if-nez v1, :cond_1

    move-object v1, v2

    goto :goto_1

    :cond_1
    move-object v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", passphrase="

    .line 277
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->passphrase:Ljava/lang/String;

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    move-object v2, v3

    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", port="

    .line 278
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", transportProtocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->transportProtocol:I

    .line 279
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    .line 280
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 209
    iget p2, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->type:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
    iget p2, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->role:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 211
    iget p2, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->clientId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 212
    iget p2, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->sessionId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 213
    iget p2, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->peerId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 214
    iget-object p2, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->peerMac:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 215
    iget-object p2, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->pmk:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 216
    iget-object p2, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->passphrase:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 217
    iget p2, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->port:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 218
    iget p0, p0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;->transportProtocol:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

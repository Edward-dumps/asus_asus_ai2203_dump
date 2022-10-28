.class public Landroid/net/wifi/RttManager$RttCapabilities;
.super Ljava/lang/Object;
.source "RttManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/RttManager$RttCapabilities;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public bwSupported:I

.field public lciSupported:Z

.field public lcrSupported:Z

.field public mcVersion:I

.field public oneSidedRttSupported:Z

.field public preambleSupported:I

.field public responderSupported:Z

.field public secureRttSupported:Z

.field public twoSided11McRttSupported:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 296
    new-instance v0, Landroid/net/wifi/RttManager$RttCapabilities$1;

    invoke-direct {v0}, Landroid/net/wifi/RttManager$RttCapabilities$1;-><init>()V

    sput-object v0, Landroid/net/wifi/RttManager$RttCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 217
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "oneSidedRtt "

    .line 218
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 219
    iget-boolean v1, p0, Landroid/net/wifi/RttManager$RttCapabilities;->oneSidedRttSupported:Z

    const-string v2, "is Supported. "

    const-string v3, "is not supported. "

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "twoSided11McRtt "

    .line 220
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 221
    iget-boolean v1, p0, Landroid/net/wifi/RttManager$RttCapabilities;->twoSided11McRttSupported:Z

    if-eqz v1, :cond_1

    move-object v1, v2

    goto :goto_1

    :cond_1
    move-object v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "lci "

    .line 222
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 223
    iget-boolean v1, p0, Landroid/net/wifi/RttManager$RttCapabilities;->lciSupported:Z

    if-eqz v1, :cond_2

    move-object v1, v2

    goto :goto_2

    :cond_2
    move-object v1, v3

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "lcr "

    .line 224
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 225
    iget-boolean v1, p0, Landroid/net/wifi/RttManager$RttCapabilities;->lcrSupported:Z

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    move-object v2, v3

    :goto_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 227
    iget v1, p0, Landroid/net/wifi/RttManager$RttCapabilities;->preambleSupported:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4

    const-string v1, "Legacy "

    .line 228
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 231
    :cond_4
    iget v1, p0, Landroid/net/wifi/RttManager$RttCapabilities;->preambleSupported:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_5

    const-string v1, "HT "

    .line 232
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 235
    :cond_5
    iget v1, p0, Landroid/net/wifi/RttManager$RttCapabilities;->preambleSupported:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_6

    const-string v1, "VHT "

    .line 236
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_6
    const-string v1, "is supported. "

    .line 239
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 241
    iget v1, p0, Landroid/net/wifi/RttManager$RttCapabilities;->bwSupported:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_7

    const-string v1, "5 MHz "

    .line 242
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 245
    :cond_7
    iget v1, p0, Landroid/net/wifi/RttManager$RttCapabilities;->bwSupported:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_8

    const-string v1, "10 MHz "

    .line 246
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 249
    :cond_8
    iget v1, p0, Landroid/net/wifi/RttManager$RttCapabilities;->bwSupported:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_9

    const-string v1, "20 MHz "

    .line 250
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 253
    :cond_9
    iget v1, p0, Landroid/net/wifi/RttManager$RttCapabilities;->bwSupported:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_a

    const-string v1, "40 MHz "

    .line 254
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 257
    :cond_a
    iget v1, p0, Landroid/net/wifi/RttManager$RttCapabilities;->bwSupported:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_b

    const-string v1, "80 MHz "

    .line 258
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 261
    :cond_b
    iget v1, p0, Landroid/net/wifi/RttManager$RttCapabilities;->bwSupported:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_c

    const-string v1, "160 MHz "

    .line 262
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_c
    const-string v1, "is supported."

    .line 265
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " STA responder role is "

    .line 267
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 268
    iget-boolean v1, p0, Landroid/net/wifi/RttManager$RttCapabilities;->responderSupported:Z

    const-string v2, "supported"

    const-string v3, "not supported"

    if-eqz v1, :cond_d

    move-object v1, v2

    goto :goto_4

    :cond_d
    move-object v1, v3

    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " Secure RTT protocol is "

    .line 269
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 270
    iget-boolean v1, p0, Landroid/net/wifi/RttManager$RttCapabilities;->secureRttSupported:Z

    if-eqz v1, :cond_e

    goto :goto_5

    :cond_e
    move-object v2, v3

    :goto_5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 271
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " 11mc version is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/net/wifi/RttManager$RttCapabilities;->mcVersion:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 273
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 284
    iget-boolean p2, p0, Landroid/net/wifi/RttManager$RttCapabilities;->oneSidedRttSupported:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 285
    iget-boolean p2, p0, Landroid/net/wifi/RttManager$RttCapabilities;->twoSided11McRttSupported:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 286
    iget-boolean p2, p0, Landroid/net/wifi/RttManager$RttCapabilities;->lciSupported:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 287
    iget-boolean p2, p0, Landroid/net/wifi/RttManager$RttCapabilities;->lcrSupported:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 288
    iget p2, p0, Landroid/net/wifi/RttManager$RttCapabilities;->preambleSupported:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 289
    iget p2, p0, Landroid/net/wifi/RttManager$RttCapabilities;->bwSupported:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 290
    iget-boolean p2, p0, Landroid/net/wifi/RttManager$RttCapabilities;->responderSupported:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 291
    iget-boolean p2, p0, Landroid/net/wifi/RttManager$RttCapabilities;->secureRttSupported:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 292
    iget p0, p0, Landroid/net/wifi/RttManager$RttCapabilities;->mcVersion:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

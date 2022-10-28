.class public Landroid/net/wifi/RttManager$ResponderConfig;
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
            "Landroid/net/wifi/RttManager$ResponderConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public centerFreq0:I

.field public centerFreq1:I

.field public channelWidth:I

.field public frequency:I

.field public macAddress:Ljava/lang/String;

.field public preamble:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1163
    new-instance v0, Landroid/net/wifi/RttManager$ResponderConfig$1;

    invoke-direct {v0}, Landroid/net/wifi/RttManager$ResponderConfig$1;-><init>()V

    sput-object v0, Landroid/net/wifi/RttManager$ResponderConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1096
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 1102
    iput-object v0, p0, Landroid/net/wifi/RttManager$ResponderConfig;->macAddress:Ljava/lang/String;

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

    .line 1137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "macAddress = "

    .line 1138
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/RttManager$ResponderConfig;->macAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " frequency = "

    .line 1139
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/wifi/RttManager$ResponderConfig;->frequency:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " centerFreq0 = "

    .line 1140
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/wifi/RttManager$ResponderConfig;->centerFreq0:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " centerFreq1 = "

    .line 1141
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/wifi/RttManager$ResponderConfig;->centerFreq1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " channelWidth = "

    .line 1142
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/wifi/RttManager$ResponderConfig;->channelWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " preamble = "

    .line 1143
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/net/wifi/RttManager$ResponderConfig;->preamble:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1144
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1154
    iget-object p2, p0, Landroid/net/wifi/RttManager$ResponderConfig;->macAddress:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1155
    iget p2, p0, Landroid/net/wifi/RttManager$ResponderConfig;->frequency:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1156
    iget p2, p0, Landroid/net/wifi/RttManager$ResponderConfig;->centerFreq0:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1157
    iget p2, p0, Landroid/net/wifi/RttManager$ResponderConfig;->centerFreq1:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1158
    iget p2, p0, Landroid/net/wifi/RttManager$ResponderConfig;->channelWidth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1159
    iget p0, p0, Landroid/net/wifi/RttManager$ResponderConfig;->preamble:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

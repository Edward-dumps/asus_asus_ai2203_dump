.class public Landroid/net/wifi/WpsInfo;
.super Ljava/lang/Object;
.source "WpsInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/WpsInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public BSSID:Ljava/lang/String;

.field public pin:Ljava/lang/String;

.field public setup:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 88
    new-instance v0, Landroid/net/wifi/WpsInfo$1;

    invoke-direct {v0}, Landroid/net/wifi/WpsInfo$1;-><init>()V

    sput-object v0, Landroid/net/wifi/WpsInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 50
    iput v0, p0, Landroid/net/wifi/WpsInfo;->setup:I

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Landroid/net/wifi/WpsInfo;->BSSID:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 56
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, " setup: "

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/net/wifi/WpsInfo;->setup:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const/16 v1, 0xa

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v2, " BSSID: "

    .line 59
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Landroid/net/wifi/WpsInfo;->BSSID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v2, " pin: "

    .line 61
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 82
    iget p2, p0, Landroid/net/wifi/WpsInfo;->setup:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    iget-object p2, p0, Landroid/net/wifi/WpsInfo;->BSSID:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    iget-object p0, p0, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

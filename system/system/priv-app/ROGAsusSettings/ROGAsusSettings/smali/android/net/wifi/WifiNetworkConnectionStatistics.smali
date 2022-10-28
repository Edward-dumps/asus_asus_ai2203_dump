.class public Landroid/net/wifi/WifiNetworkConnectionStatistics;
.super Ljava/lang/Object;
.source "WifiNetworkConnectionStatistics.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/WifiNetworkConnectionStatistics;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public numConnection:I

.field public numUsage:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 73
    new-instance v0, Landroid/net/wifi/WifiNetworkConnectionStatistics$1;

    invoke-direct {v0}, Landroid/net/wifi/WifiNetworkConnectionStatistics$1;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiNetworkConnectionStatistics;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p1, p0, Landroid/net/wifi/WifiNetworkConnectionStatistics;->numConnection:I

    .line 39
    iput p2, p0, Landroid/net/wifi/WifiNetworkConnectionStatistics;->numUsage:I

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

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "c="

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/wifi/WifiNetworkConnectionStatistics;->numConnection:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " u="

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/net/wifi/WifiNetworkConnectionStatistics;->numUsage:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 68
    iget p2, p0, Landroid/net/wifi/WifiNetworkConnectionStatistics;->numConnection:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    iget p0, p0, Landroid/net/wifi/WifiNetworkConnectionStatistics;->numUsage:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

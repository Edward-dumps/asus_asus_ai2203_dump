.class public final Landroid/net/wifi/WifiManager$AddNetworkResult;
.super Ljava/lang/Object;
.source "WifiManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AddNetworkResult"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/WifiManager$AddNetworkResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final networkId:I

.field public final statusCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1806
    new-instance v0, Landroid/net/wifi/WifiManager$AddNetworkResult$1;

    invoke-direct {v0}, Landroid/net/wifi/WifiManager$AddNetworkResult$1;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiManager$AddNetworkResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 1828
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1829
    iput p1, p0, Landroid/net/wifi/WifiManager$AddNetworkResult;->statusCode:I

    .line 1830
    iput p2, p0, Landroid/net/wifi/WifiManager$AddNetworkResult;->networkId:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1801
    iget p2, p0, Landroid/net/wifi/WifiManager$AddNetworkResult;->statusCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1802
    iget p0, p0, Landroid/net/wifi/WifiManager$AddNetworkResult;->networkId:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

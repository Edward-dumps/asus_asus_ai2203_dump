.class public Landroid/net/wifi/WifiScanner$ParcelableScanResults;
.super Ljava/lang/Object;
.source "WifiScanner.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/WifiScanner$ParcelableScanResults;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mResults:[Landroid/net/wifi/ScanResult;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 863
    new-instance v0, Landroid/net/wifi/WifiScanner$ParcelableScanResults$1;

    invoke-direct {v0}, Landroid/net/wifi/WifiScanner$ParcelableScanResults$1;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiScanner$ParcelableScanResults;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>([Landroid/net/wifi/ScanResult;)V
    .locals 0

    .line 836
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 837
    iput-object p1, p0, Landroid/net/wifi/WifiScanner$ParcelableScanResults;->mResults:[Landroid/net/wifi/ScanResult;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 851
    iget-object v0, p0, Landroid/net/wifi/WifiScanner$ParcelableScanResults;->mResults:[Landroid/net/wifi/ScanResult;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 852
    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 853
    :goto_0
    iget-object v0, p0, Landroid/net/wifi/WifiScanner$ParcelableScanResults;->mResults:[Landroid/net/wifi/ScanResult;

    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 854
    aget-object v0, v0, v1

    .line 855
    invoke-virtual {v0, p1, p2}, Landroid/net/wifi/ScanResult;->writeToParcel(Landroid/os/Parcel;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 858
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :cond_1
    return-void
.end method

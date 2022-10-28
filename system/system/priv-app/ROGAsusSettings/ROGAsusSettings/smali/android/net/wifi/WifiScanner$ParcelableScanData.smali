.class public Landroid/net/wifi/WifiScanner$ParcelableScanData;
.super Ljava/lang/Object;
.source "WifiScanner.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/WifiScanner$ParcelableScanData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mResults:[Landroid/net/wifi/WifiScanner$ScanData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 815
    new-instance v0, Landroid/net/wifi/WifiScanner$ParcelableScanData$1;

    invoke-direct {v0}, Landroid/net/wifi/WifiScanner$ParcelableScanData$1;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiScanner$ParcelableScanData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>([Landroid/net/wifi/WifiScanner$ScanData;)V
    .locals 0

    .line 788
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 789
    iput-object p1, p0, Landroid/net/wifi/WifiScanner$ParcelableScanData;->mResults:[Landroid/net/wifi/WifiScanner$ScanData;

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

    .line 803
    iget-object v0, p0, Landroid/net/wifi/WifiScanner$ParcelableScanData;->mResults:[Landroid/net/wifi/WifiScanner$ScanData;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 804
    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 805
    :goto_0
    iget-object v0, p0, Landroid/net/wifi/WifiScanner$ParcelableScanData;->mResults:[Landroid/net/wifi/WifiScanner$ScanData;

    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 806
    aget-object v0, v0, v1

    .line 807
    invoke-virtual {v0, p1, p2}, Landroid/net/wifi/WifiScanner$ScanData;->writeToParcel(Landroid/os/Parcel;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 810
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :cond_1
    return-void
.end method

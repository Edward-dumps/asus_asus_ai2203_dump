.class public Landroid/net/wifi/WifiScanner$ScanData;
.super Ljava/lang/Object;
.source "WifiScanner.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/WifiScanner$ScanData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBucketsScanned:I

.field private mFlags:I

.field private mId:I

.field private final mResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private mScannedBands:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 766
    new-instance v0, Landroid/net/wifi/WifiScanner$ScanData$1;

    invoke-direct {v0}, Landroid/net/wifi/WifiScanner$ScanData$1;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiScanner$ScanData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 644
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 645
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiScanner$ScanData;->mResults:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(IIIILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    .line 662
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 663
    iput p1, p0, Landroid/net/wifi/WifiScanner$ScanData;->mId:I

    .line 664
    iput p2, p0, Landroid/net/wifi/WifiScanner$ScanData;->mFlags:I

    .line 665
    iput p3, p0, Landroid/net/wifi/WifiScanner$ScanData;->mBucketsScanned:I

    .line 666
    iput p4, p0, Landroid/net/wifi/WifiScanner$ScanData;->mScannedBands:I

    .line 667
    iput-object p5, p0, Landroid/net/wifi/WifiScanner$ScanData;->mResults:Ljava/util/List;

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

    .line 758
    iget p2, p0, Landroid/net/wifi/WifiScanner$ScanData;->mId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 759
    iget p2, p0, Landroid/net/wifi/WifiScanner$ScanData;->mFlags:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 760
    iget p2, p0, Landroid/net/wifi/WifiScanner$ScanData;->mBucketsScanned:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 761
    iget p2, p0, Landroid/net/wifi/WifiScanner$ScanData;->mScannedBands:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 762
    iget-object p0, p0, Landroid/net/wifi/WifiScanner$ScanData;->mResults:Ljava/util/List;

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    return-void
.end method

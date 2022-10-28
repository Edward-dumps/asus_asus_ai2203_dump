.class public Landroid/net/wifi/WifiScanner$ScanSettings;
.super Ljava/lang/Object;
.source "WifiScanner.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/WifiScanner$ScanSettings;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public band:I

.field public channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

.field public final hiddenNetworks:Ljava/util/List;
    .annotation build Landroid/annotation/RequiresPermission;
        value = "android.permission.NETWORK_STACK"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;",
            ">;"
        }
    .end annotation
.end field

.field public hideFromAppOps:Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public ignoreLocationSettings:Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public isPnoScan:Z

.field private mEnable6GhzPsc:Z

.field private mRnrSetting:I

.field public maxPeriodInMs:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public maxScansToCache:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public numBssidsPerScan:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public periodInMs:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public reportEvents:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public stepCount:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public type:I
    .annotation build Landroid/annotation/RequiresPermission;
        value = "android.permission.NETWORK_STACK"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 576
    new-instance v0, Landroid/net/wifi/WifiScanner$ScanSettings$1;

    invoke-direct {v0}, Landroid/net/wifi/WifiScanner$ScanSettings$1;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiScanner$ScanSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 364
    iput v0, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->mRnrSetting:I

    .line 369
    iput-boolean v0, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->mEnable6GhzPsc:Z

    .line 377
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->hiddenNetworks:Ljava/util/List;

    .line 455
    iput v0, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->type:I

    return-void
.end method

.method static synthetic access$002(Landroid/net/wifi/WifiScanner$ScanSettings;I)I
    .locals 0

    .line 346
    iput p1, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->mRnrSetting:I

    return p1
.end method

.method static synthetic access$102(Landroid/net/wifi/WifiScanner$ScanSettings;Z)Z
    .locals 0

    .line 346
    iput-boolean p1, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->mEnable6GhzPsc:Z

    return p1
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 546
    iget p2, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 547
    iget p2, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 548
    iget p2, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->reportEvents:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 549
    iget p2, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->numBssidsPerScan:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 550
    iget p2, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->maxScansToCache:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 551
    iget p2, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->maxPeriodInMs:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 552
    iget p2, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->stepCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 553
    iget-boolean p2, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->isPnoScan:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 554
    iget p2, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->type:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 555
    iget-boolean p2, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->ignoreLocationSettings:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 556
    iget-boolean p2, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->hideFromAppOps:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 557
    iget p2, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->mRnrSetting:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 558
    iget-boolean p2, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->mEnable6GhzPsc:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 559
    iget-object p2, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 560
    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 561
    :goto_0
    iget-object p2, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 562
    aget-object p2, p2, v0

    iget p2, p2, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 563
    iget-object p2, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    aget-object p2, p2, v0

    iget p2, p2, Landroid/net/wifi/WifiScanner$ChannelSpec;->dwellTimeMS:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 564
    iget-object p2, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    aget-object p2, p2, v0

    iget-boolean p2, p2, Landroid/net/wifi/WifiScanner$ChannelSpec;->passive:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 567
    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 569
    :cond_1
    iget-object p2, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->hiddenNetworks:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 570
    iget-object p0, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->hiddenNetworks:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;

    .line 571
    iget-object p2, p2, Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;->ssid:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    return-void
.end method

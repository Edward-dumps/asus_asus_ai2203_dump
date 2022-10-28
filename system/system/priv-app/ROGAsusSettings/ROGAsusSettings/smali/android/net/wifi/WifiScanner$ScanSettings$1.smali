.class Landroid/net/wifi/WifiScanner$ScanSettings$1;
.super Ljava/lang/Object;
.source "WifiScanner.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiScanner$ScanSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/WifiScanner$ScanSettings;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 577
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiScanner$ScanSettings;
    .locals 6

    .line 579
    new-instance p0, Landroid/net/wifi/WifiScanner$ScanSettings;

    invoke-direct {p0}, Landroid/net/wifi/WifiScanner$ScanSettings;-><init>()V

    .line 580
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    .line 581
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    .line 582
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->reportEvents:I

    .line 583
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->numBssidsPerScan:I

    .line 584
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->maxScansToCache:I

    .line 585
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->maxPeriodInMs:I

    .line 586
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->stepCount:I

    .line 587
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->isPnoScan:Z

    .line 588
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->type:I

    .line 589
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->ignoreLocationSettings:Z

    .line 590
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    iput-boolean v0, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->hideFromAppOps:Z

    .line 591
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {p0, v0}, Landroid/net/wifi/WifiScanner$ScanSettings;->access$002(Landroid/net/wifi/WifiScanner$ScanSettings;I)I

    .line 592
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-static {p0, v0}, Landroid/net/wifi/WifiScanner$ScanSettings;->access$102(Landroid/net/wifi/WifiScanner$ScanSettings;Z)Z

    .line 593
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 594
    new-array v3, v0, [Landroid/net/wifi/WifiScanner$ChannelSpec;

    iput-object v3, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    move v3, v1

    :goto_3
    if-ge v3, v0, :cond_4

    .line 596
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 597
    new-instance v5, Landroid/net/wifi/WifiScanner$ChannelSpec;

    invoke-direct {v5, v4}, Landroid/net/wifi/WifiScanner$ChannelSpec;-><init>(I)V

    .line 598
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v5, Landroid/net/wifi/WifiScanner$ChannelSpec;->dwellTimeMS:I

    .line 599
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v4, v2, :cond_3

    move v4, v2

    goto :goto_4

    :cond_3
    move v4, v1

    :goto_4
    iput-boolean v4, v5, Landroid/net/wifi/WifiScanner$ChannelSpec;->passive:Z

    .line 600
    iget-object v4, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    aput-object v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 602
    :cond_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 603
    iget-object v2, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->hiddenNetworks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :goto_5
    if-ge v1, v0, :cond_5

    .line 605
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 606
    iget-object v3, p0, Landroid/net/wifi/WifiScanner$ScanSettings;->hiddenNetworks:Ljava/util/List;

    new-instance v4, Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;

    invoke-direct {v4, v2}, Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_5
    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 577
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiScanner$ScanSettings$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiScanner$ScanSettings;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/net/wifi/WifiScanner$ScanSettings;
    .locals 0

    .line 612
    new-array p0, p1, [Landroid/net/wifi/WifiScanner$ScanSettings;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 577
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiScanner$ScanSettings$1;->newArray(I)[Landroid/net/wifi/WifiScanner$ScanSettings;

    move-result-object p0

    return-object p0
.end method

.class public Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectedInfo;
.super Ljava/lang/Object;
.source "DualWifiEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConnectedInfo"
.end annotation


# instance fields
.field public dnsServers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public frequencyMhz:I

.field public gateway:Ljava/lang/String;

.field public ipAddress:Ljava/lang/String;

.field public ipv6Addresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public linkSpeedMbps:I

.field public subnetMask:Ljava/lang/String;

.field public wifiStandard:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 473
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 462
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectedInfo;->dnsServers:Ljava/util/List;

    .line 465
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectedInfo;->ipv6Addresses:Ljava/util/List;

    const/4 v0, 0x0

    .line 468
    iput v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectedInfo;->wifiStandard:I

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectedInfo;)V
    .locals 2

    .line 479
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 462
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectedInfo;->dnsServers:Ljava/util/List;

    .line 465
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectedInfo;->ipv6Addresses:Ljava/util/List;

    const/4 v0, 0x0

    .line 468
    iput v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectedInfo;->wifiStandard:I

    .line 480
    iget v0, p1, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectedInfo;->frequencyMhz:I

    iput v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectedInfo;->frequencyMhz:I

    .line 481
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectedInfo;->dnsServers:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectedInfo;->dnsServers:Ljava/util/List;

    .line 482
    iget v0, p1, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectedInfo;->linkSpeedMbps:I

    iput v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectedInfo;->linkSpeedMbps:I

    .line 483
    iget-object v0, p1, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectedInfo;->ipAddress:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectedInfo;->ipAddress:Ljava/lang/String;

    .line 484
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectedInfo;->ipv6Addresses:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectedInfo;->ipv6Addresses:Ljava/util/List;

    .line 485
    iget-object v0, p1, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectedInfo;->gateway:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectedInfo;->gateway:Ljava/lang/String;

    .line 486
    iget-object v0, p1, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectedInfo;->subnetMask:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectedInfo;->subnetMask:Ljava/lang/String;

    .line 487
    iget p1, p1, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectedInfo;->wifiStandard:I

    iput p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectedInfo;->wifiStandard:I

    return-void
.end method

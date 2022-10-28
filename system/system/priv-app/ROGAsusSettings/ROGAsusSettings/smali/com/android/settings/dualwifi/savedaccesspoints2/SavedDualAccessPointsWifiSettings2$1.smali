.class Lcom/android/settings/dualwifi/savedaccesspoints2/SavedDualAccessPointsWifiSettings2$1;
.super Landroid/os/SimpleClock;
.source "SavedDualAccessPointsWifiSettings2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/dualwifi/savedaccesspoints2/SavedDualAccessPointsWifiSettings2;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dualwifi/savedaccesspoints2/SavedDualAccessPointsWifiSettings2;


# direct methods
.method constructor <init>(Lcom/android/settings/dualwifi/savedaccesspoints2/SavedDualAccessPointsWifiSettings2;Ljava/time/ZoneId;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/android/settings/dualwifi/savedaccesspoints2/SavedDualAccessPointsWifiSettings2$1;->this$0:Lcom/android/settings/dualwifi/savedaccesspoints2/SavedDualAccessPointsWifiSettings2;

    invoke-direct {p0, p2}, Landroid/os/SimpleClock;-><init>(Ljava/time/ZoneId;)V

    return-void
.end method


# virtual methods
.method public millis()J
    .locals 2

    .line 83
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

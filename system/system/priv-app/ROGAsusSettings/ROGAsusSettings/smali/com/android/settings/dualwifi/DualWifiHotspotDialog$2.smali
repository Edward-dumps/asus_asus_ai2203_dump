.class Lcom/android/settings/dualwifi/DualWifiHotspotDialog$2;
.super Landroid/database/ContentObserver;
.source "DualWifiHotspotDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dualwifi/DualWifiHotspotDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dualwifi/DualWifiHotspotDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/dualwifi/DualWifiHotspotDialog;Landroid/os/Handler;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/android/settings/dualwifi/DualWifiHotspotDialog$2;->this$0:Lcom/android/settings/dualwifi/DualWifiHotspotDialog;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    const-string p1, "DualWifiHotspotDialog"

    const-string v0, "onChange"

    .line 99
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiHotspotDialog$2;->this$0:Lcom/android/settings/dualwifi/DualWifiHotspotDialog;

    invoke-static {p0}, Lcom/android/settings/dualwifi/DualWifiHotspotDialog;->access$200(Lcom/android/settings/dualwifi/DualWifiHotspotDialog;)V

    return-void
.end method

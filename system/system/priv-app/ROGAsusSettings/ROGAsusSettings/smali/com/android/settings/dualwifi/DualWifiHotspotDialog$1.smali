.class Lcom/android/settings/dualwifi/DualWifiHotspotDialog$1;
.super Ljava/lang/Object;
.source "DualWifiHotspotDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/dualwifi/DualWifiHotspotDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dualwifi/DualWifiHotspotDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/dualwifi/DualWifiHotspotDialog;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/android/settings/dualwifi/DualWifiHotspotDialog$1;->this$0:Lcom/android/settings/dualwifi/DualWifiHotspotDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    const-string p1, "DualWifiHotspotDialog"

    const-string v0, "onDismiss"

    .line 63
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object p1, p0, Lcom/android/settings/dualwifi/DualWifiHotspotDialog$1;->this$0:Lcom/android/settings/dualwifi/DualWifiHotspotDialog;

    invoke-static {p1}, Lcom/android/settings/dualwifi/DualWifiHotspotDialog;->access$000(Lcom/android/settings/dualwifi/DualWifiHotspotDialog;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 65
    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiHotspotDialog$1;->this$0:Lcom/android/settings/dualwifi/DualWifiHotspotDialog;

    invoke-static {p0}, Lcom/android/settings/dualwifi/DualWifiHotspotDialog;->access$100(Lcom/android/settings/dualwifi/DualWifiHotspotDialog;)Lcom/android/settings/dualwifi/DualWifiHotspotDialog$DualWifiHotspotDialogListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/settings/dualwifi/DualWifiHotspotDialog$DualWifiHotspotDialogListener;->onCancel()V

    :cond_0
    return-void
.end method

.class Lcom/android/settings/dualwifi/DualWifiPrimarySwitchPreferenceController$2;
.super Landroid/content/BroadcastReceiver;
.source "DualWifiPrimarySwitchPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/dualwifi/DualWifiPrimarySwitchPreferenceController;->onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dualwifi/DualWifiPrimarySwitchPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/dualwifi/DualWifiPrimarySwitchPreferenceController;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/android/settings/dualwifi/DualWifiPrimarySwitchPreferenceController$2;->this$0:Lcom/android/settings/dualwifi/DualWifiPrimarySwitchPreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 128
    iget-object p1, p0, Lcom/android/settings/dualwifi/DualWifiPrimarySwitchPreferenceController$2;->this$0:Lcom/android/settings/dualwifi/DualWifiPrimarySwitchPreferenceController;

    invoke-static {p1}, Lcom/android/settings/dualwifi/DualWifiPrimarySwitchPreferenceController;->access$200(Lcom/android/settings/dualwifi/DualWifiPrimarySwitchPreferenceController;)Lcom/android/settings/dualwifi/DualWifiEnabler;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 129
    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiPrimarySwitchPreferenceController$2;->this$0:Lcom/android/settings/dualwifi/DualWifiPrimarySwitchPreferenceController;

    invoke-static {p0}, Lcom/android/settings/dualwifi/DualWifiPrimarySwitchPreferenceController;->access$200(Lcom/android/settings/dualwifi/DualWifiPrimarySwitchPreferenceController;)Lcom/android/settings/dualwifi/DualWifiEnabler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/dualwifi/DualWifiEnabler;->notifySwitchUpdate()V

    :cond_0
    return-void
.end method

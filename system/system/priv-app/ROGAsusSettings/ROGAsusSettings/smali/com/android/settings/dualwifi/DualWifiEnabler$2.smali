.class Lcom/android/settings/dualwifi/DualWifiEnabler$2;
.super Ljava/lang/Object;
.source "DualWifiEnabler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/dualwifi/DualWifiEnabler;->onSwitchToggled(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dualwifi/DualWifiEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/dualwifi/DualWifiEnabler;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/android/settings/dualwifi/DualWifiEnabler$2;->this$0:Lcom/android/settings/dualwifi/DualWifiEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 149
    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiEnabler$2;->this$0:Lcom/android/settings/dualwifi/DualWifiEnabler;

    invoke-static {p0}, Lcom/android/settings/dualwifi/DualWifiEnabler;->access$300(Lcom/android/settings/dualwifi/DualWifiEnabler;)Lcom/android/settings/widget/SwitchWidgetController;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/SwitchWidgetController;->setEnabled(Z)V

    return-void
.end method

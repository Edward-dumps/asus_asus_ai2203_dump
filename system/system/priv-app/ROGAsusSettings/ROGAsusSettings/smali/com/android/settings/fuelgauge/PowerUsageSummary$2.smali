.class Lcom/android/settings/fuelgauge/PowerUsageSummary$2;
.super Landroid/content/BroadcastReceiver;
.source "PowerUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fuelgauge/PowerUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fuelgauge/PowerUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings/fuelgauge/PowerUsageSummary;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$2;->this$0:Lcom/android/settings/fuelgauge/PowerUsageSummary;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 130
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "change_system_mode"

    .line 131
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 132
    iget-object p0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$2;->this$0:Lcom/android/settings/fuelgauge/PowerUsageSummary;

    const-class p1, Lcom/android/settings/fuelgauge/SystemModesPreferenceController;

    invoke-static {p0, p1}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->access$600(Lcom/android/settings/fuelgauge/PowerUsageSummary;Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p0

    check-cast p0, Lcom/android/settings/fuelgauge/SystemModesPreferenceController;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/SystemModesPreferenceController;->updateState(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method

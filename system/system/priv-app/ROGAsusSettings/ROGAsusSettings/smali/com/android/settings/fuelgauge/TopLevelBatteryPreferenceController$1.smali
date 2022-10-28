.class Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController$1;
.super Ljava/lang/Object;
.source "TopLevelBatteryPreferenceController.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController$1;->this$0:Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 85
    iget-object p1, p0, Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController$1;->this$0:Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController;

    invoke-static {p2}, Lcom/android/settings/fuelgauge/IPowerSaverManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/settings/fuelgauge/IPowerSaverManager;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController;->access$002(Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController;Lcom/android/settings/fuelgauge/IPowerSaverManager;)Lcom/android/settings/fuelgauge/IPowerSaverManager;

    .line 86
    iget-object p0, p0, Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController$1;->this$0:Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController;

    invoke-static {p0}, Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController;->access$100(Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController$1;->this$0:Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController;->access$002(Lcom/android/settings/fuelgauge/TopLevelBatteryPreferenceController;Lcom/android/settings/fuelgauge/IPowerSaverManager;)Lcom/android/settings/fuelgauge/IPowerSaverManager;

    return-void
.end method

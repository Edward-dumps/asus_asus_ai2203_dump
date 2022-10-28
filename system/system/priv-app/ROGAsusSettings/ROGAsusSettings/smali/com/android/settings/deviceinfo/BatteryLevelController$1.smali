.class Lcom/android/settings/deviceinfo/BatteryLevelController$1;
.super Landroid/content/BroadcastReceiver;
.source "BatteryLevelController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/BatteryLevelController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/BatteryLevelController;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/BatteryLevelController;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/android/settings/deviceinfo/BatteryLevelController$1;->this$0:Lcom/android/settings/deviceinfo/BatteryLevelController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 55
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    .line 56
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 57
    iget-object p0, p0, Lcom/android/settings/deviceinfo/BatteryLevelController$1;->this$0:Lcom/android/settings/deviceinfo/BatteryLevelController;

    invoke-static {p0}, Lcom/android/settings/deviceinfo/BatteryLevelController;->access$000(Lcom/android/settings/deviceinfo/BatteryLevelController;)Landroidx/preference/Preference;

    move-result-object p0

    invoke-static {p2}, Lcom/android/settings/Utils;->getBatteryPercentage(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

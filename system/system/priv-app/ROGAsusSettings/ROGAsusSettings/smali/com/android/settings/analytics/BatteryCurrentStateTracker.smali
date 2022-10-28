.class public Lcom/android/settings/analytics/BatteryCurrentStateTracker;
.super Lcom/android/settings/analytics/CurrentStateTracker;
.source "BatteryCurrentStateTracker.java"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/android/settings/analytics/CurrentStateTracker;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private collectBatteryAnimaiton()V
    .locals 3

    .line 37
    iget-object v0, p0, Lcom/android/settings/analytics/CurrentStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen_charging_animation"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 39
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 40
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "selected"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AsusBatteryChargingAnimation"

    .line 42
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/analytics/CurrentStateTracker;->sendStates(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private collectBatteryIconPrecentage()V
    .locals 3

    .line 28
    iget-object v0, p0, Lcom/android/settings/analytics/CurrentStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "asus_status_bar_show_battery_percent"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 30
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 31
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "selected"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AsusBatteryPercentageIcon"

    .line 33
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/analytics/CurrentStateTracker;->sendStates(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method protected invoke()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/android/settings/analytics/BatteryCurrentStateTracker;->collectBatteryIconPrecentage()V

    .line 20
    invoke-direct {p0}, Lcom/android/settings/analytics/BatteryCurrentStateTracker;->collectBatteryAnimaiton()V

    return-void
.end method

.class Lcom/android/settings/fuelgauge/AsusBatteryDrainingStopPreferenceController$1;
.super Ljava/lang/Object;
.source "AsusBatteryDrainingStopPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fuelgauge/AsusBatteryDrainingStopPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fuelgauge/AsusBatteryDrainingStopPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/fuelgauge/AsusBatteryDrainingStopPreferenceController;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/android/settings/fuelgauge/AsusBatteryDrainingStopPreferenceController$1;->this$0:Lcom/android/settings/fuelgauge/AsusBatteryDrainingStopPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/android/settings/fuelgauge/AsusBatteryDrainingStopPreferenceController$1;->this$0:Lcom/android/settings/fuelgauge/AsusBatteryDrainingStopPreferenceController;

    invoke-static {p0}, Lcom/android/settings/fuelgauge/AsusBatteryDrainingStopPreferenceController;->access$000(Lcom/android/settings/fuelgauge/AsusBatteryDrainingStopPreferenceController;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/fuelgauge/AsusBatteryDrainingStopPreferenceController;->access$100(Landroid/content/Context;)V

    const/4 p0, 0x1

    return p0
.end method

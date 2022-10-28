.class Lcom/android/settings/analytics/Tracker$2;
.super Ljava/util/ArrayList;
.source "Tracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/analytics/Tracker;->getCurrentStateTrackers()Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lcom/android/settings/analytics/CurrentStateTracker;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/analytics/Tracker;


# direct methods
.method constructor <init>(Lcom/android/settings/analytics/Tracker;)V
    .locals 2

    .line 42
    iput-object p1, p0, Lcom/android/settings/analytics/Tracker$2;->this$0:Lcom/android/settings/analytics/Tracker;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 43
    new-instance v0, Lcom/android/settings/analytics/SoundVibrationStateTracker;

    invoke-static {p1}, Lcom/android/settings/analytics/Tracker;->access$000(Lcom/android/settings/analytics/Tracker;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/analytics/SoundVibrationStateTracker;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    new-instance v0, Lcom/android/settings/analytics/DisplayCurrentStateTracker;

    invoke-static {p1}, Lcom/android/settings/analytics/Tracker;->access$000(Lcom/android/settings/analytics/Tracker;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/analytics/DisplayCurrentStateTracker;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    new-instance v0, Lcom/android/settings/analytics/BatteryCurrentStateTracker;

    invoke-static {p1}, Lcom/android/settings/analytics/Tracker;->access$000(Lcom/android/settings/analytics/Tracker;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/analytics/BatteryCurrentStateTracker;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    new-instance v0, Lcom/android/settings/analytics/SecurityCurrentStateTracker;

    invoke-static {p1}, Lcom/android/settings/analytics/Tracker;->access$000(Lcom/android/settings/analytics/Tracker;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/analytics/SecurityCurrentStateTracker;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    new-instance v0, Lcom/android/settings/analytics/AdvancedCurrentStateTracker;

    invoke-static {p1}, Lcom/android/settings/analytics/Tracker;->access$000(Lcom/android/settings/analytics/Tracker;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/analytics/AdvancedCurrentStateTracker;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    new-instance v0, Lcom/android/settings/analytics/PhoneCurrentStateTracker;

    invoke-static {p1}, Lcom/android/settings/analytics/Tracker;->access$000(Lcom/android/settings/analytics/Tracker;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/analytics/PhoneCurrentStateTracker;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    new-instance v0, Lcom/android/settings/analytics/ConnectionCurrentStateTracker;

    invoke-static {p1}, Lcom/android/settings/analytics/Tracker;->access$000(Lcom/android/settings/analytics/Tracker;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/settings/analytics/ConnectionCurrentStateTracker;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

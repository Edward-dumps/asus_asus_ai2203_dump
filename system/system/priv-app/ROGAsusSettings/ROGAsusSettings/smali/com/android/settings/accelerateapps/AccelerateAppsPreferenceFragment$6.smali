.class Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment$6;
.super Landroid/content/BroadcastReceiver;
.source "AccelerateAppsPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;)V
    .locals 0

    .line 511
    iput-object p1, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment$6;->this$0:Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "extra_action"

    const/4 v0, -0x1

    .line 514
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_0

    .line 516
    iget-object p0, p0, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment$6;->this$0:Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;

    invoke-static {p0}, Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;->access$100(Lcom/android/settings/accelerateapps/AccelerateAppsPreferenceFragment;)Landroid/os/Handler;

    move-result-object p0

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

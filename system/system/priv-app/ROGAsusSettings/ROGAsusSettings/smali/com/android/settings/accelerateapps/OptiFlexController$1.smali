.class Lcom/android/settings/accelerateapps/OptiFlexController$1;
.super Landroid/os/Handler;
.source "OptiFlexController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accelerateapps/OptiFlexController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accelerateapps/OptiFlexController;


# direct methods
.method constructor <init>(Lcom/android/settings/accelerateapps/OptiFlexController;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/android/settings/accelerateapps/OptiFlexController$1;->this$0:Lcom/android/settings/accelerateapps/OptiFlexController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 108
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 109
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_0

    goto :goto_0

    .line 111
    :cond_0
    iget-object p1, p0, Lcom/android/settings/accelerateapps/OptiFlexController$1;->this$0:Lcom/android/settings/accelerateapps/OptiFlexController;

    invoke-static {p1}, Lcom/android/settings/accelerateapps/OptiFlexController;->access$100(Lcom/android/settings/accelerateapps/OptiFlexController;)Lcom/android/settings/accelerateapps/AccelerateAppsController;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/accelerateapps/OptiFlexController$1;->this$0:Lcom/android/settings/accelerateapps/OptiFlexController;

    invoke-static {v0}, Lcom/android/settings/accelerateapps/OptiFlexController;->access$000(Lcom/android/settings/accelerateapps/OptiFlexController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/accelerateapps/AccelerateAppsController;->loadSharePreference(Landroid/content/Context;)V

    .line 112
    iget-object p1, p0, Lcom/android/settings/accelerateapps/OptiFlexController$1;->this$0:Lcom/android/settings/accelerateapps/OptiFlexController;

    invoke-static {p1}, Lcom/android/settings/accelerateapps/OptiFlexController;->access$100(Lcom/android/settings/accelerateapps/OptiFlexController;)Lcom/android/settings/accelerateapps/AccelerateAppsController;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/accelerateapps/OptiFlexController$1;->this$0:Lcom/android/settings/accelerateapps/OptiFlexController;

    invoke-static {v0}, Lcom/android/settings/accelerateapps/OptiFlexController;->access$000(Lcom/android/settings/accelerateapps/OptiFlexController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accelerateapps/OptiFlexController$1;->this$0:Lcom/android/settings/accelerateapps/OptiFlexController;

    invoke-static {v1}, Lcom/android/settings/accelerateapps/OptiFlexController;->access$000(Lcom/android/settings/accelerateapps/OptiFlexController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/accelerateapps/AccelerateAppsController;->updateAcceleratableList(Landroid/content/pm/PackageManager;Landroid/content/Context;)V

    .line 113
    iget-object p1, p0, Lcom/android/settings/accelerateapps/OptiFlexController$1;->this$0:Lcom/android/settings/accelerateapps/OptiFlexController;

    invoke-static {p1}, Lcom/android/settings/accelerateapps/OptiFlexController;->access$100(Lcom/android/settings/accelerateapps/OptiFlexController;)Lcom/android/settings/accelerateapps/AccelerateAppsController;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/accelerateapps/OptiFlexController$1;->this$0:Lcom/android/settings/accelerateapps/OptiFlexController;

    invoke-static {v0}, Lcom/android/settings/accelerateapps/OptiFlexController;->access$000(Lcom/android/settings/accelerateapps/OptiFlexController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/accelerateapps/AccelerateAppsController;->updateModeBySharePref(Landroid/content/Context;)V

    .line 114
    iget-object p1, p0, Lcom/android/settings/accelerateapps/OptiFlexController$1;->this$0:Lcom/android/settings/accelerateapps/OptiFlexController;

    invoke-static {p1}, Lcom/android/settings/accelerateapps/OptiFlexController;->access$100(Lcom/android/settings/accelerateapps/OptiFlexController;)Lcom/android/settings/accelerateapps/AccelerateAppsController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/accelerateapps/AccelerateAppsController;->isSafelySizeForBroadcast()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 116
    iget-object p1, p0, Lcom/android/settings/accelerateapps/OptiFlexController$1;->this$0:Lcom/android/settings/accelerateapps/OptiFlexController;

    invoke-static {p1}, Lcom/android/settings/accelerateapps/OptiFlexController;->access$100(Lcom/android/settings/accelerateapps/OptiFlexController;)Lcom/android/settings/accelerateapps/AccelerateAppsController;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/accelerateapps/OptiFlexController$1;->this$0:Lcom/android/settings/accelerateapps/OptiFlexController;

    invoke-static {p0}, Lcom/android/settings/accelerateapps/OptiFlexController;->access$000(Lcom/android/settings/accelerateapps/OptiFlexController;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/accelerateapps/AccelerateAppsController;->broadcastToAccelerate(Landroid/content/Context;)V

    :cond_1
    :goto_0
    return-void
.end method

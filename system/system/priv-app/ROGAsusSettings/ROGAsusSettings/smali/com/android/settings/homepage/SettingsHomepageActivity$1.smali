.class Lcom/android/settings/homepage/SettingsHomepageActivity$1;
.super Landroid/os/Handler;
.source "SettingsHomepageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/homepage/SettingsHomepageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/homepage/SettingsHomepageActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/homepage/SettingsHomepageActivity;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/android/settings/homepage/SettingsHomepageActivity$1;->this$0:Lcom/android/settings/homepage/SettingsHomepageActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 78
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 79
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p1, v0, :cond_1

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 85
    :cond_0
    iget-object p0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity$1;->this$0:Lcom/android/settings/homepage/SettingsHomepageActivity;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->isConfigChange:Z

    goto :goto_0

    .line 81
    :cond_1
    iget-object p1, p0, Lcom/android/settings/homepage/SettingsHomepageActivity$1;->this$0:Lcom/android/settings/homepage/SettingsHomepageActivity;

    invoke-static {p1}, Lcom/android/settings/homepage/SettingsHomepageActivity;->access$000(Lcom/android/settings/homepage/SettingsHomepageActivity;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 82
    iget-object p0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity$1;->this$0:Lcom/android/settings/homepage/SettingsHomepageActivity;

    invoke-static {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->access$000(Lcom/android/settings/homepage/SettingsHomepageActivity;)Landroid/os/Handler;

    move-result-object p0

    const-wide/16 v2, 0x12c

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void
.end method

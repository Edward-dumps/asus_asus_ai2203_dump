.class Lcom/android/settings/dropbox/DropboxUpdateController$1;
.super Landroid/content/BroadcastReceiver;
.source "DropboxUpdateController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dropbox/DropboxUpdateController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dropbox/DropboxUpdateController;


# direct methods
.method constructor <init>(Lcom/android/settings/dropbox/DropboxUpdateController;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/android/settings/dropbox/DropboxUpdateController$1;->this$0:Lcom/android/settings/dropbox/DropboxUpdateController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 49
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.android.settings.dropbox.DROPBOX_DAILY_UPDATE"

    .line 50
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 51
    iget-object p1, p0, Lcom/android/settings/dropbox/DropboxUpdateController$1;->this$0:Lcom/android/settings/dropbox/DropboxUpdateController;

    invoke-virtual {p1}, Lcom/android/settings/dropbox/DropboxUpdateController;->setDropboxAlarmSchedule()V

    .line 52
    iget-object p1, p0, Lcom/android/settings/dropbox/DropboxUpdateController$1;->this$0:Lcom/android/settings/dropbox/DropboxUpdateController;

    invoke-static {p1}, Lcom/android/settings/dropbox/DropboxUpdateController;->access$000(Lcom/android/settings/dropbox/DropboxUpdateController;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Settings Dropbox daily updating start!!"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-object p1, p0, Lcom/android/settings/dropbox/DropboxUpdateController$1;->this$0:Lcom/android/settings/dropbox/DropboxUpdateController;

    invoke-static {p1}, Lcom/android/settings/dropbox/DropboxUpdateController;->access$100(Lcom/android/settings/dropbox/DropboxUpdateController;)Lcom/android/settings/dropbox/DropboxTracker;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 54
    iget-object p0, p0, Lcom/android/settings/dropbox/DropboxUpdateController$1;->this$0:Lcom/android/settings/dropbox/DropboxUpdateController;

    invoke-static {p0}, Lcom/android/settings/dropbox/DropboxUpdateController;->access$100(Lcom/android/settings/dropbox/DropboxUpdateController;)Lcom/android/settings/dropbox/DropboxTracker;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/dropbox/DropboxTracker;->outputAllDropbox()V

    :cond_0
    return-void
.end method

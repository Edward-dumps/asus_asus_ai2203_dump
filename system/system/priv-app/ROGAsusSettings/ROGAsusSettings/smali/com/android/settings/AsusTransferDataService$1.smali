.class Lcom/android/settings/AsusTransferDataService$1;
.super Ljava/lang/Object;
.source "AsusTransferDataService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AsusTransferDataService;->fullBackupPackage(Ljava/lang/String;Landroid/os/Messenger;Landroid/os/Messenger;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AsusTransferDataService;

.field final synthetic val$pkgName:Ljava/lang/String;

.field final synthetic val$replyTo:Landroid/os/Messenger;


# direct methods
.method constructor <init>(Lcom/android/settings/AsusTransferDataService;Ljava/lang/String;Landroid/os/Messenger;)V
    .locals 0

    .line 658
    iput-object p1, p0, Lcom/android/settings/AsusTransferDataService$1;->this$0:Lcom/android/settings/AsusTransferDataService;

    iput-object p2, p0, Lcom/android/settings/AsusTransferDataService$1;->val$pkgName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings/AsusTransferDataService$1;->val$replyTo:Landroid/os/Messenger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 662
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/AsusTransferDataService$1;->this$0:Lcom/android/settings/AsusTransferDataService;

    invoke-static {v0}, Lcom/android/settings/AsusTransferDataService;->access$1900(Lcom/android/settings/AsusTransferDataService;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/AsusTransferDataService$1;->val$pkgName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/AsusTransferDataService$1;->this$0:Lcom/android/settings/AsusTransferDataService;

    invoke-static {v2}, Lcom/android/settings/AsusTransferDataService;->access$1800(Lcom/android/settings/AsusTransferDataService;)Lcom/android/settings/AsusTransferDataService$BackupObserver;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/app/backup/IBackupManager;->fullBackupForAsusTransfer(Ljava/lang/String;Landroid/app/backup/IBackupObserver;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 664
    iget-object v1, p0, Lcom/android/settings/AsusTransferDataService$1;->this$0:Lcom/android/settings/AsusTransferDataService;

    invoke-static {v1}, Lcom/android/settings/AsusTransferDataService;->access$1800(Lcom/android/settings/AsusTransferDataService;)Lcom/android/settings/AsusTransferDataService$BackupObserver;

    move-result-object v1

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/settings/AsusTransferDataService$BackupObserver;->done:Z

    .line 665
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 666
    iput v0, v1, Landroid/os/Message;->arg1:I

    const/4 v0, 0x4

    .line 667
    iput v0, v1, Landroid/os/Message;->what:I

    .line 668
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "pkgName"

    .line 669
    iget-object v3, p0, Lcom/android/settings/AsusTransferDataService$1;->val$pkgName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 671
    iget-object p0, p0, Lcom/android/settings/AsusTransferDataService$1;->val$replyTo:Landroid/os/Messenger;

    invoke-virtual {p0, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 674
    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AsusTransferDataService"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

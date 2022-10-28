.class Lcom/android/settings/AsusTransferDataService$2;
.super Ljava/lang/Object;
.source "AsusTransferDataService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AsusTransferDataService;->restorePackage(Ljava/lang/String;Landroid/os/Messenger;Landroid/os/Messenger;)I
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

    .line 746
    iput-object p1, p0, Lcom/android/settings/AsusTransferDataService$2;->this$0:Lcom/android/settings/AsusTransferDataService;

    iput-object p2, p0, Lcom/android/settings/AsusTransferDataService$2;->val$pkgName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings/AsusTransferDataService$2;->val$replyTo:Landroid/os/Messenger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 751
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/AsusTransferDataService$2;->this$0:Lcom/android/settings/AsusTransferDataService;

    invoke-static {v0}, Lcom/android/settings/AsusTransferDataService;->access$2100(Lcom/android/settings/AsusTransferDataService;)Landroid/app/backup/IRestoreSession;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/AsusTransferDataService$2;->val$pkgName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/AsusTransferDataService$2;->this$0:Lcom/android/settings/AsusTransferDataService;

    invoke-static {v2}, Lcom/android/settings/AsusTransferDataService;->access$2000(Lcom/android/settings/AsusTransferDataService;)Lcom/android/settings/AsusTransferDataService$RestoreObserver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/app/backup/IRestoreSession;->restorePackage(Ljava/lang/String;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;)I

    move-result v0

    if-nez v0, :cond_0

    .line 754
    iget-object v0, p0, Lcom/android/settings/AsusTransferDataService$2;->this$0:Lcom/android/settings/AsusTransferDataService;

    invoke-static {v0}, Lcom/android/settings/AsusTransferDataService;->access$2000(Lcom/android/settings/AsusTransferDataService;)Lcom/android/settings/AsusTransferDataService$RestoreObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/AsusTransferDataService$RestoreObserver;->waitForCompletion()V

    goto :goto_0

    .line 756
    :cond_0
    iget-object v1, p0, Lcom/android/settings/AsusTransferDataService$2;->this$0:Lcom/android/settings/AsusTransferDataService;

    invoke-static {v1}, Lcom/android/settings/AsusTransferDataService;->access$2000(Lcom/android/settings/AsusTransferDataService;)Lcom/android/settings/AsusTransferDataService$RestoreObserver;

    move-result-object v1

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/settings/AsusTransferDataService$RestoreObserver;->done:Z

    .line 757
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 758
    iput v0, v1, Landroid/os/Message;->arg1:I

    const/4 v0, 0x6

    .line 759
    iput v0, v1, Landroid/os/Message;->what:I

    .line 760
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "pkgName"

    .line 761
    iget-object v3, p0, Lcom/android/settings/AsusTransferDataService$2;->val$pkgName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 763
    iget-object v0, p0, Lcom/android/settings/AsusTransferDataService$2;->val$replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 764
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to restore package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/AsusTransferDataService$2;->val$pkgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 768
    :goto_0
    iget-object p0, p0, Lcom/android/settings/AsusTransferDataService$2;->this$0:Lcom/android/settings/AsusTransferDataService;

    invoke-static {p0}, Lcom/android/settings/AsusTransferDataService;->access$2100(Lcom/android/settings/AsusTransferDataService;)Landroid/app/backup/IRestoreSession;

    move-result-object p0

    invoke-interface {p0}, Landroid/app/backup/IRestoreSession;->endRestoreSession()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 770
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AsusTransferDataService"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

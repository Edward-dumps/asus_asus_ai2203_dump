.class Lcom/android/settings/AsusTransferDataService$RestoreObserver;
.super Landroid/app/backup/IRestoreObserver$Stub;
.source "AsusTransferDataService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AsusTransferDataService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RestoreObserver"
.end annotation


# instance fields
.field done:Z

.field mMessenger:Landroid/os/Messenger;

.field mPackageName:Ljava/lang/String;

.field mReplyTo:Landroid/os/Messenger;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/os/Messenger;Landroid/os/Messenger;)V
    .locals 1

    .line 966
    invoke-direct {p0}, Landroid/app/backup/IRestoreObserver$Stub;-><init>()V

    const/4 v0, 0x0

    .line 961
    iput-boolean v0, p0, Lcom/android/settings/AsusTransferDataService$RestoreObserver;->done:Z

    .line 967
    iput-object p2, p0, Lcom/android/settings/AsusTransferDataService$RestoreObserver;->mMessenger:Landroid/os/Messenger;

    .line 968
    iput-object p3, p0, Lcom/android/settings/AsusTransferDataService$RestoreObserver;->mReplyTo:Landroid/os/Messenger;

    .line 969
    iput-object p1, p0, Lcom/android/settings/AsusTransferDataService$RestoreObserver;->mPackageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onUpdate(ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public restoreFinished(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 995
    monitor-enter p0

    .line 996
    :try_start_0
    iget-boolean v0, p0, Lcom/android/settings/AsusTransferDataService$RestoreObserver;->done:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 997
    iput-boolean v0, p0, Lcom/android/settings/AsusTransferDataService$RestoreObserver;->done:Z

    .line 998
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1000
    :try_start_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x7

    .line 1001
    iput v1, v0, Landroid/os/Message;->what:I

    .line 1002
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1003
    iget-object p1, p0, Lcom/android/settings/AsusTransferDataService$RestoreObserver;->mReplyTo:Landroid/os/Messenger;

    iput-object p1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 1004
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v1, "pkgName"

    .line 1005
    iget-object v2, p0, Lcom/android/settings/AsusTransferDataService$RestoreObserver;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1006
    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1007
    iget-object p1, p0, Lcom/android/settings/AsusTransferDataService$RestoreObserver;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {p1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string v0, "AsusTransferDataService"

    .line 1009
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p1, 0x0

    .line 1011
    iput-object p1, p0, Lcom/android/settings/AsusTransferDataService$RestoreObserver;->mMessenger:Landroid/os/Messenger;

    .line 1013
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public restoreSetsAvailable([Landroid/app/backup/RestoreSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public restoreStarting(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public waitForCompletion()V
    .locals 1

    .line 1024
    monitor-enter p0

    .line 1025
    :catch_0
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/android/settings/AsusTransferDataService$RestoreObserver;->done:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 1027
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1031
    :try_start_2
    iput-boolean v0, p0, Lcom/android/settings/AsusTransferDataService$RestoreObserver;->done:Z

    .line 1032
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

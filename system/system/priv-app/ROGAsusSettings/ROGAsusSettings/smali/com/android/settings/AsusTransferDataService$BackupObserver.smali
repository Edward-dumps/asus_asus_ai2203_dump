.class Lcom/android/settings/AsusTransferDataService$BackupObserver;
.super Landroid/app/backup/IBackupObserver$Stub;
.source "AsusTransferDataService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AsusTransferDataService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BackupObserver"
.end annotation


# instance fields
.field done:Z

.field mMessenger:Landroid/os/Messenger;

.field mPkgName:Ljava/lang/String;

.field mReplyTo:Landroid/os/Messenger;

.field mResultStatus:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/os/Messenger;Landroid/os/Messenger;)V
    .locals 1

    .line 879
    invoke-direct {p0}, Landroid/app/backup/IBackupObserver$Stub;-><init>()V

    const/4 v0, 0x0

    .line 873
    iput-boolean v0, p0, Lcom/android/settings/AsusTransferDataService$BackupObserver;->done:Z

    .line 877
    iput v0, p0, Lcom/android/settings/AsusTransferDataService$BackupObserver;->mResultStatus:I

    .line 880
    iput-object p2, p0, Lcom/android/settings/AsusTransferDataService$BackupObserver;->mMessenger:Landroid/os/Messenger;

    .line 881
    iput-object p3, p0, Lcom/android/settings/AsusTransferDataService$BackupObserver;->mReplyTo:Landroid/os/Messenger;

    .line 882
    iput-object p1, p0, Lcom/android/settings/AsusTransferDataService$BackupObserver;->mPkgName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public backupFinished(I)V
    .locals 3

    .line 928
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Backup finished with result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 929
    invoke-static {p1}, Lcom/android/settings/AsusTransferDataService;->access$2200(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 928
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 934
    monitor-enter p0

    .line 935
    :try_start_0
    iget-boolean v0, p0, Lcom/android/settings/AsusTransferDataService$BackupObserver;->done:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 936
    iput-boolean v0, p0, Lcom/android/settings/AsusTransferDataService$BackupObserver;->done:Z

    .line 937
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 939
    :try_start_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x5

    .line 940
    iput v1, v0, Landroid/os/Message;->what:I

    .line 941
    iget v1, p0, Lcom/android/settings/AsusTransferDataService$BackupObserver;->mResultStatus:I

    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    .line 942
    iput v1, v0, Landroid/os/Message;->arg1:I

    goto :goto_0

    .line 944
    :cond_0
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 946
    :goto_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v1, "pkgName"

    .line 947
    iget-object v2, p0, Lcom/android/settings/AsusTransferDataService$BackupObserver;->mPkgName:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 948
    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 949
    iget-object p1, p0, Lcom/android/settings/AsusTransferDataService$BackupObserver;->mReplyTo:Landroid/os/Messenger;

    iput-object p1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 950
    iget-object p1, p0, Lcom/android/settings/AsusTransferDataService$BackupObserver;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {p1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_2
    const-string v0, "AsusTransferDataService"

    .line 952
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const/4 p1, 0x0

    .line 954
    iput-object p1, p0, Lcom/android/settings/AsusTransferDataService$BackupObserver;->mMessenger:Landroid/os/Messenger;

    .line 956
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public onResult(Ljava/lang/String;I)V
    .locals 5

    .line 918
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " with result: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 919
    invoke-static {p2}, Lcom/android/settings/AsusTransferDataService;->access$2200(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 918
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 920
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 921
    invoke-static {p2}, Lcom/android/settings/AsusTransferDataService;->access$2200(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AsusTransferDataService"

    .line 920
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    iput p2, p0, Lcom/android/settings/AsusTransferDataService$BackupObserver;->mResultStatus:I

    return-void
.end method

.method public onUpdate(Ljava/lang/String;Landroid/app/backup/BackupProgress;)V
    .locals 6

    .line 896
    iget-wide v0, p2, Landroid/app/backup/BackupProgress;->bytesTransferred:J

    iget-wide v2, p2, Landroid/app/backup/BackupProgress;->bytesExpected:J

    invoke-static {}, Lcom/android/settings/AsusTransferDataService;->access$700()I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x14

    div-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 897
    invoke-static {}, Lcom/android/settings/AsusTransferDataService;->access$708()I

    .line 898
    monitor-enter p0

    .line 900
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0xd

    .line 901
    iput v1, v0, Landroid/os/Message;->what:I

    .line 902
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "pkgName"

    .line 903
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "bytesTransferred"

    .line 904
    iget-wide v2, p2, Landroid/app/backup/BackupProgress;->bytesTransferred:J

    invoke-virtual {v1, p1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p1, "bytesExpected"

    .line 905
    iget-wide v2, p2, Landroid/app/backup/BackupProgress;->bytesExpected:J

    invoke-virtual {v1, p1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 906
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 907
    iget-object p1, p0, Lcom/android/settings/AsusTransferDataService$BackupObserver;->mReplyTo:Landroid/os/Messenger;

    iput-object p1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 908
    iget-object p1, p0, Lcom/android/settings/AsusTransferDataService$BackupObserver;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {p1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    const-string p2, "AsusTransferDataService"

    .line 910
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_0
    :goto_2
    return-void
.end method

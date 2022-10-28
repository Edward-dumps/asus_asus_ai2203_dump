.class public Lcom/android/settings/AsusTransferDataService;
.super Landroid/app/Service;
.source "AsusTransferDataService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/AsusTransferDataService$RestoreObserver;,
        Lcom/android/settings/AsusTransferDataService$BackupObserver;,
        Lcom/android/settings/AsusTransferDataService$IncomingHandler;
    }
.end annotation


# static fields
.field private static mBackupProgressCount:I = 0x1


# instance fields
.field private final GET_RESTORE_SESSION_LIMIT:I

.field private final TIMEOUT_COUNTER_FOR_CANCEL:I

.field private isFullBackupStartSuccess:Ljava/lang/Boolean;

.field private isRestoreStartSuccess:Ljava/lang/Boolean;

.field private mBackupManager:Landroid/app/backup/IBackupManager;

.field private mCurrentBackupObserver:Lcom/android/settings/AsusTransferDataService$BackupObserver;

.field private mCurrentRestoreObserver:Lcom/android/settings/AsusTransferDataService$RestoreObserver;

.field private mExternalDestination:Ljava/lang/String;

.field private mFullBackupHandler:Landroid/os/Handler;

.field private mFullBackupHandlerThread:Landroid/os/HandlerThread;

.field final mMessenger:Landroid/os/Messenger;

.field private mOriginTransport:Ljava/lang/String;

.field mReplyToRestore:Landroid/os/Messenger;

.field private mRestore:Landroid/app/backup/IRestoreSession;

.field private mTotalBytesTransferred:J

.field private mTryGetRestoreSession:I

.field private preBackupEnable:Ljava/lang/Boolean;

.field private preFinishBackupPackage:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$wb96_7x0NvpTVKLwZjBh8mwU4Tc(Ljava/lang/String;Ljava/lang/String;Landroid/os/Messenger;Landroid/os/Message;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/settings/AsusTransferDataService;->lambda$moveBackupFile$0(Ljava/lang/String;Ljava/lang/String;Landroid/os/Messenger;Landroid/os/Message;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 44
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/16 v0, 0xc8

    .line 98
    iput v0, p0, Lcom/android/settings/AsusTransferDataService;->GET_RESTORE_SESSION_LIMIT:I

    const-string v0, "/sdcard/AsusTransferDemo/"

    .line 99
    iput-object v0, p0, Lcom/android/settings/AsusTransferDataService;->mExternalDestination:Ljava/lang/String;

    const/4 v0, 0x0

    .line 106
    iput v0, p0, Lcom/android/settings/AsusTransferDataService;->mTryGetRestoreSession:I

    const-string v0, ""

    .line 107
    iput-object v0, p0, Lcom/android/settings/AsusTransferDataService;->preFinishBackupPackage:Ljava/lang/String;

    .line 109
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/android/settings/AsusTransferDataService;->preBackupEnable:Ljava/lang/Boolean;

    .line 110
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/android/settings/AsusTransferDataService;->isFullBackupStartSuccess:Ljava/lang/Boolean;

    .line 111
    iput-object v0, p0, Lcom/android/settings/AsusTransferDataService;->isRestoreStartSuccess:Ljava/lang/Boolean;

    const/4 v0, 0x1

    .line 129
    iput v0, p0, Lcom/android/settings/AsusTransferDataService;->TIMEOUT_COUNTER_FOR_CANCEL:I

    .line 131
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/android/settings/AsusTransferDataService$IncomingHandler;

    invoke-direct {v1, p0}, Lcom/android/settings/AsusTransferDataService$IncomingHandler;-><init>(Lcom/android/settings/AsusTransferDataService;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/AsusTransferDataService;->mMessenger:Landroid/os/Messenger;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/AsusTransferDataService;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/android/settings/AsusTransferDataService;->resetRestoreTimeoutParam()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/AsusTransferDataService;)I
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/android/settings/AsusTransferDataService;->checkCorrectTransport()I

    move-result p0

    return p0
.end method

.method static synthetic access$1000(Lcom/android/settings/AsusTransferDataService;I)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/android/settings/AsusTransferDataService;->setRestoreTimeoutMillis(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/settings/AsusTransferDataService;Ljava/lang/String;Landroid/os/Messenger;Landroid/os/Messenger;)I
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/AsusTransferDataService;->restorePackage(Ljava/lang/String;Landroid/os/Messenger;Landroid/os/Messenger;)I

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lcom/android/settings/AsusTransferDataService;)Ljava/lang/Boolean;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/settings/AsusTransferDataService;->isRestoreStartSuccess:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/android/settings/AsusTransferDataService;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/android/settings/AsusTransferDataService;->isRestoreStartSuccess:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/settings/AsusTransferDataService;)I
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/android/settings/AsusTransferDataService;->resetTransport()I

    move-result p0

    return p0
.end method

.method static synthetic access$1400(Lcom/android/settings/AsusTransferDataService;)Ljava/lang/String;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/settings/AsusTransferDataService;->mExternalDestination:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/settings/AsusTransferDataService;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/AsusTransferDataService;->moveBackupFile(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/settings/AsusTransferDataService;)Ljava/lang/String;
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/android/settings/AsusTransferDataService;->getDeviceName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1700(Lcom/android/settings/AsusTransferDataService;Landroid/os/Message;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/android/settings/AsusTransferDataService;->processAsusLocalBackup(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/settings/AsusTransferDataService;)Lcom/android/settings/AsusTransferDataService$BackupObserver;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/settings/AsusTransferDataService;->mCurrentBackupObserver:Lcom/android/settings/AsusTransferDataService$BackupObserver;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/android/settings/AsusTransferDataService;)Landroid/app/backup/IBackupManager;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/settings/AsusTransferDataService;->mBackupManager:Landroid/app/backup/IBackupManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/AsusTransferDataService;Ljava/lang/String;)I
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/android/settings/AsusTransferDataService;->changeTransportDestination(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$2000(Lcom/android/settings/AsusTransferDataService;)Lcom/android/settings/AsusTransferDataService$RestoreObserver;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/settings/AsusTransferDataService;->mCurrentRestoreObserver:Lcom/android/settings/AsusTransferDataService$RestoreObserver;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/android/settings/AsusTransferDataService;)Landroid/app/backup/IRestoreSession;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/settings/AsusTransferDataService;->mRestore:Landroid/app/backup/IRestoreSession;

    return-object p0
.end method

.method static synthetic access$2200(I)Ljava/lang/String;
    .locals 0

    .line 44
    invoke-static {p0}, Lcom/android/settings/AsusTransferDataService;->convertBackupStatusToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/settings/AsusTransferDataService;Ljava/lang/String;Landroid/os/Messenger;Landroid/os/Messenger;)I
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/AsusTransferDataService;->backupPackage(Ljava/lang/String;Landroid/os/Messenger;Landroid/os/Messenger;)I

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/android/settings/AsusTransferDataService;I)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/android/settings/AsusTransferDataService;->setBackupTimeoutMillis(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/AsusTransferDataService;Ljava/lang/String;Landroid/os/Messenger;Landroid/os/Messenger;)I
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/AsusTransferDataService;->fullBackupPackage(Ljava/lang/String;Landroid/os/Messenger;Landroid/os/Messenger;)I

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/android/settings/AsusTransferDataService;)Ljava/lang/String;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/settings/AsusTransferDataService;->preFinishBackupPackage:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$602(Lcom/android/settings/AsusTransferDataService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/android/settings/AsusTransferDataService;->preFinishBackupPackage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700()I
    .locals 1

    .line 44
    sget v0, Lcom/android/settings/AsusTransferDataService;->mBackupProgressCount:I

    return v0
.end method

.method static synthetic access$702(I)I
    .locals 0

    .line 44
    sput p0, Lcom/android/settings/AsusTransferDataService;->mBackupProgressCount:I

    return p0
.end method

.method static synthetic access$708()I
    .locals 2

    .line 44
    sget v0, Lcom/android/settings/AsusTransferDataService;->mBackupProgressCount:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/android/settings/AsusTransferDataService;->mBackupProgressCount:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/settings/AsusTransferDataService;)Ljava/lang/Boolean;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/settings/AsusTransferDataService;->isFullBackupStartSuccess:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$802(Lcom/android/settings/AsusTransferDataService;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/android/settings/AsusTransferDataService;->isFullBackupStartSuccess:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/settings/AsusTransferDataService;)J
    .locals 2

    .line 44
    iget-wide v0, p0, Lcom/android/settings/AsusTransferDataService;->mTotalBytesTransferred:J

    return-wide v0
.end method

.method static synthetic access$902(Lcom/android/settings/AsusTransferDataService;J)J
    .locals 0

    .line 44
    iput-wide p1, p0, Lcom/android/settings/AsusTransferDataService;->mTotalBytesTransferred:J

    return-wide p1
.end method

.method static synthetic access$914(Lcom/android/settings/AsusTransferDataService;J)J
    .locals 2

    .line 44
    iget-wide v0, p0, Lcom/android/settings/AsusTransferDataService;->mTotalBytesTransferred:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/settings/AsusTransferDataService;->mTotalBytesTransferred:J

    return-wide v0
.end method

.method private backupPackage(Ljava/lang/String;Landroid/os/Messenger;Landroid/os/Messenger;)I
    .locals 3

    .line 683
    iget-object v0, p0, Lcom/android/settings/AsusTransferDataService;->mCurrentBackupObserver:Lcom/android/settings/AsusTransferDataService$BackupObserver;

    if-nez v0, :cond_0

    .line 684
    new-instance v0, Lcom/android/settings/AsusTransferDataService$BackupObserver;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/settings/AsusTransferDataService$BackupObserver;-><init>(Ljava/lang/String;Landroid/os/Messenger;Landroid/os/Messenger;)V

    iput-object v0, p0, Lcom/android/settings/AsusTransferDataService;->mCurrentBackupObserver:Lcom/android/settings/AsusTransferDataService$BackupObserver;

    goto :goto_0

    .line 686
    :cond_0
    iget-boolean v0, v0, Lcom/android/settings/AsusTransferDataService$BackupObserver;->done:Z

    if-nez v0, :cond_1

    const/16 p0, -0x3ea

    return p0

    .line 689
    :cond_1
    new-instance v0, Lcom/android/settings/AsusTransferDataService$BackupObserver;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/settings/AsusTransferDataService$BackupObserver;-><init>(Ljava/lang/String;Landroid/os/Messenger;Landroid/os/Messenger;)V

    iput-object v0, p0, Lcom/android/settings/AsusTransferDataService;->mCurrentBackupObserver:Lcom/android/settings/AsusTransferDataService$BackupObserver;

    .line 693
    :goto_0
    :try_start_0
    iget-object p2, p0, Lcom/android/settings/AsusTransferDataService;->mBackupManager:Landroid/app/backup/IBackupManager;

    const/4 p3, 0x1

    new-array v0, p3, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iget-object p1, p0, Lcom/android/settings/AsusTransferDataService;->mCurrentBackupObserver:Lcom/android/settings/AsusTransferDataService$BackupObserver;

    const/4 v2, 0x0

    invoke-interface {p2, v0, p1, v2, v1}, Landroid/app/backup/IBackupManager;->requestBackup([Ljava/lang/String;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;I)I

    move-result p1

    if-eqz p1, :cond_2

    .line 695
    iget-object p0, p0, Lcom/android/settings/AsusTransferDataService;->mCurrentBackupObserver:Lcom/android/settings/AsusTransferDataService$BackupObserver;

    iput-boolean p3, p0, Lcom/android/settings/AsusTransferDataService$BackupObserver;->done:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return p1

    :catch_0
    move-exception p0

    .line 699
    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AsusTransferDataService"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0x3e8

    return p0
.end method

.method private changeTransportDestination(Ljava/lang/String;)I
    .locals 0

    .line 636
    iput-object p1, p0, Lcom/android/settings/AsusTransferDataService;->mExternalDestination:Ljava/lang/String;

    const/4 p0, 0x0

    return p0
.end method

.method private checkCorrectTransport()I
    .locals 3

    const-string v0, "android/com.android.internal.backup.AsusTransport"

    .line 613
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/AsusTransferDataService;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v1}, Landroid/app/backup/IBackupManager;->isBackupEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 614
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/android/settings/AsusTransferDataService;->preBackupEnable:Ljava/lang/Boolean;

    .line 618
    iget-object v1, p0, Lcom/android/settings/AsusTransferDataService;->mBackupManager:Landroid/app/backup/IBackupManager;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/app/backup/IBackupManager;->setBackupEnabled(Z)V

    .line 621
    :cond_0
    iget-object v1, p0, Lcom/android/settings/AsusTransferDataService;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v1}, Landroid/app/backup/IBackupManager;->getCurrentTransport()Ljava/lang/String;

    move-result-object v1

    .line 622
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 623
    iget-object v1, p0, Lcom/android/settings/AsusTransferDataService;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v1, v0}, Landroid/app/backup/IBackupManager;->selectBackupTransport(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/AsusTransferDataService;->mOriginTransport:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 629
    :cond_1
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "full_backup"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/AsusTransferDataService;->mFullBackupHandlerThread:Landroid/os/HandlerThread;

    .line 630
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 631
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/AsusTransferDataService;->mFullBackupHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/AsusTransferDataService;->mFullBackupHandler:Landroid/os/Handler;

    const/4 p0, 0x0

    return p0

    :catch_0
    const/16 p0, -0x3e8

    return p0
.end method

.method private static convertBackupStatusToString(I)Ljava/lang/String;
    .locals 1

    const/16 v0, -0x7d2

    if-eq p0, v0, :cond_6

    const/16 v0, -0x7d1

    if-eq p0, v0, :cond_5

    const/16 v0, -0x3ed

    if-eq p0, v0, :cond_4

    const/16 v0, -0x3e8

    if-eq p0, v0, :cond_3

    if-eqz p0, :cond_2

    const/16 v0, -0x3eb

    if-eq p0, v0, :cond_1

    const/16 v0, -0x3ea

    if-eq p0, v0, :cond_0

    const-string p0, "Unknown error"

    return-object p0

    :cond_0
    const-string p0, "Transport rejected package"

    return-object p0

    :cond_1
    const-string p0, "Agent error"

    return-object p0

    :cond_2
    const-string p0, "Success"

    return-object p0

    :cond_3
    const-string p0, "Transport error"

    return-object p0

    :cond_4
    const-string p0, "Size quota exceeded"

    return-object p0

    :cond_5
    const-string p0, "Backup is not allowed"

    return-object p0

    :cond_6
    const-string p0, "Package not found"

    return-object p0
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 568
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 569
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 570
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 571
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    :cond_1
    const/4 v0, 0x0

    .line 576
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 577
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    const-wide/16 v4, 0x0

    .line 578
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    move-object v2, v0

    move-object v3, p0

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 581
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->close()V

    .line 584
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    return-void

    :catchall_0
    move-exception p1

    move-object v8, v0

    move-object v0, p0

    move-object p0, v8

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object p0, v0

    :goto_0
    if-eqz v0, :cond_2

    .line 581
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    :cond_2
    if-eqz p0, :cond_3

    .line 584
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->close()V

    .line 586
    :cond_3
    throw p1
.end method

.method public static copyFileOrDirectory(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "AsusTransferDataService"

    :try_start_0
    const-string v1, "copyFileOrDirectory"

    .line 539
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 541
    new-instance p0, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    const-string p0, "/data/cache/AsusBackup/5566/_full/obb/"

    .line 544
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "OBB file is not exists, not need to copy"

    .line 545
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p0, "Copy source file is not exists"

    .line 547
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    .line 551
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 552
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object p1

    .line 553
    array-length v0, p1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_3

    .line 555
    new-instance v3, Ljava/io/File;

    aget-object v4, p1, v2

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 556
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 557
    invoke-static {v3, v4}, Lcom/android/settings/AsusTransferDataService;->copyFileOrDirectory(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 560
    :cond_2
    invoke-static {v1, p0}, Lcom/android/settings/AsusTransferDataService;->copyFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 563
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_2
    return-void
.end method

.method public static deleteFileOrDirectory(Ljava/lang/String;)V
    .locals 7

    const-string v0, "AsusTransferDataService"

    const-string v1, "deleteFileOrDirectory"

    .line 486
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 489
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v1, "/data/cache/AsusBackup/5566/_full/obb/"

    .line 490
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "OBB file is not exists, not need to delete"

    .line 491
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p0, "Delete source file is not exists"

    .line 493
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    .line 498
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 499
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 500
    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_2

    .line 502
    new-instance v5, Ljava/io/File;

    aget-object v6, v2, v4

    invoke-direct {v5, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 503
    invoke-static {v5}, Lcom/android/settings/AsusTransferDataService;->deleteFileOrDirectory(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 506
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    .line 507
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " : "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private fullBackupPackage(Ljava/lang/String;Landroid/os/Messenger;Landroid/os/Messenger;)I
    .locals 1

    .line 641
    iget-object v0, p0, Lcom/android/settings/AsusTransferDataService;->mCurrentBackupObserver:Lcom/android/settings/AsusTransferDataService$BackupObserver;

    if-nez v0, :cond_0

    .line 642
    new-instance v0, Lcom/android/settings/AsusTransferDataService$BackupObserver;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/settings/AsusTransferDataService$BackupObserver;-><init>(Ljava/lang/String;Landroid/os/Messenger;Landroid/os/Messenger;)V

    iput-object v0, p0, Lcom/android/settings/AsusTransferDataService;->mCurrentBackupObserver:Lcom/android/settings/AsusTransferDataService$BackupObserver;

    goto :goto_0

    .line 644
    :cond_0
    iget-boolean v0, v0, Lcom/android/settings/AsusTransferDataService$BackupObserver;->done:Z

    if-nez v0, :cond_1

    const/16 p0, -0x3ea

    return p0

    .line 647
    :cond_1
    new-instance v0, Lcom/android/settings/AsusTransferDataService$BackupObserver;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/settings/AsusTransferDataService$BackupObserver;-><init>(Ljava/lang/String;Landroid/os/Messenger;Landroid/os/Messenger;)V

    iput-object v0, p0, Lcom/android/settings/AsusTransferDataService;->mCurrentBackupObserver:Lcom/android/settings/AsusTransferDataService$BackupObserver;

    .line 650
    :goto_0
    iget-object p2, p0, Lcom/android/settings/AsusTransferDataService;->mFullBackupHandler:Landroid/os/Handler;

    if-nez p2, :cond_3

    .line 651
    iget-object p2, p0, Lcom/android/settings/AsusTransferDataService;->mFullBackupHandlerThread:Landroid/os/HandlerThread;

    if-nez p2, :cond_2

    .line 652
    new-instance p2, Landroid/os/HandlerThread;

    const-string v0, "full_backup"

    invoke-direct {p2, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/settings/AsusTransferDataService;->mFullBackupHandlerThread:Landroid/os/HandlerThread;

    .line 653
    invoke-virtual {p2}, Landroid/os/HandlerThread;->start()V

    .line 655
    :cond_2
    new-instance p2, Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/settings/AsusTransferDataService;->mFullBackupHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/settings/AsusTransferDataService;->mFullBackupHandler:Landroid/os/Handler;

    .line 658
    :cond_3
    iget-object p2, p0, Lcom/android/settings/AsusTransferDataService;->mFullBackupHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/AsusTransferDataService$1;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/settings/AsusTransferDataService$1;-><init>(Lcom/android/settings/AsusTransferDataService;Ljava/lang/String;Landroid/os/Messenger;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x0

    return p0
.end method

.method private getDeviceName()Ljava/lang/String;
    .locals 1

    const-string p0, "ro.vendor.asus.product.mkt_name"

    const-string v0, ""

    .line 862
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-ne p0, v0, :cond_0

    .line 864
    sget-object p0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method private static synthetic lambda$moveBackupFile$0(Ljava/lang/String;Ljava/lang/String;Landroid/os/Messenger;Landroid/os/Message;)V
    .locals 0

    .line 528
    :try_start_0
    invoke-static {p0, p1}, Lcom/android/settings/AsusTransferDataService;->copyFileOrDirectory(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    invoke-static {p0}, Lcom/android/settings/AsusTransferDataService;->deleteFileOrDirectory(Ljava/lang/String;)V

    .line 530
    invoke-virtual {p2, p3}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 532
    invoke-virtual {p0}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    :goto_0
    return-void
.end method

.method private moveBackupFile(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3

    .line 512
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 513
    iget-object v1, p3, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    const/4 v2, 0x0

    .line 514
    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 515
    iget v2, p3, Landroid/os/Message;->what:I

    iput v2, v0, Landroid/os/Message;->what:I

    .line 516
    invoke-virtual {p3}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 518
    iget-object p3, p0, Lcom/android/settings/AsusTransferDataService;->mFullBackupHandler:Landroid/os/Handler;

    if-nez p3, :cond_1

    .line 519
    iget-object p3, p0, Lcom/android/settings/AsusTransferDataService;->mFullBackupHandlerThread:Landroid/os/HandlerThread;

    if-nez p3, :cond_0

    .line 520
    new-instance p3, Landroid/os/HandlerThread;

    const-string v2, "full_backup"

    invoke-direct {p3, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p3, p0, Lcom/android/settings/AsusTransferDataService;->mFullBackupHandlerThread:Landroid/os/HandlerThread;

    .line 521
    invoke-virtual {p3}, Landroid/os/HandlerThread;->start()V

    .line 523
    :cond_0
    new-instance p3, Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/AsusTransferDataService;->mFullBackupHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {p3, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/android/settings/AsusTransferDataService;->mFullBackupHandler:Landroid/os/Handler;

    .line 526
    :cond_1
    iget-object p0, p0, Lcom/android/settings/AsusTransferDataService;->mFullBackupHandler:Landroid/os/Handler;

    new-instance p3, Lcom/android/settings/AsusTransferDataService$$ExternalSyntheticLambda0;

    invoke-direct {p3, p1, p2, v1, v0}, Lcom/android/settings/AsusTransferDataService$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Messenger;Landroid/os/Message;)V

    invoke-virtual {p0, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private processAsusLocalBackup(Landroid/os/Message;)V
    .locals 11

    .line 432
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 433
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 434
    iget v2, p1, Landroid/os/Message;->what:I

    iput v2, v1, Landroid/os/Message;->what:I

    .line 435
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 437
    iget v3, p1, Landroid/os/Message;->what:I

    const-string v4, "lastBackup"

    const-string v5, "asus_local_backup_last_backup"

    const-string v6, "reminderFrequency"

    const-string v7, "asus_local_backup_reminder_frequency"

    const-string v8, "isEnabled"

    const-string v9, "asus_local_backup"

    const/4 v10, 0x0

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string v3, ""

    .line 468
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 469
    invoke-virtual {p0}, Landroid/app/Service;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v5, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    .line 462
    :pswitch_1
    invoke-virtual {p0}, Landroid/app/Service;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 464
    invoke-virtual {v2, v4, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 456
    :pswitch_2
    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 457
    invoke-virtual {p0}, Landroid/app/Service;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v7, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 450
    :pswitch_3
    invoke-virtual {p0}, Landroid/app/Service;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v7, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    .line 452
    invoke-virtual {v2, v6, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    .line 445
    :pswitch_4
    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 446
    invoke-virtual {p0}, Landroid/app/Service;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v9, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 439
    :pswitch_5
    invoke-virtual {p0}, Landroid/app/Service;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v3, 0x1

    if-ne p0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v10

    .line 441
    :goto_0
    invoke-virtual {v2, v8, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :goto_1
    const-string p0, "pkgName"

    .line 475
    invoke-virtual {v0, p0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, p0, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    iput v10, v1, Landroid/os/Message;->arg1:I

    .line 477
    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 479
    :try_start_0
    iget-object p0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {p0, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    const-string p1, "AsusTransferDataService"

    const-string v0, "The service has crashed."

    .line 481
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x33
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private resetRestoreTimeoutParam()V
    .locals 3

    .line 853
    invoke-virtual {p0}, Landroid/app/Service;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "backup_agent_timeout_parameters"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    if-eq v0, v2, :cond_0

    .line 855
    invoke-virtual {p0}, Landroid/app/Service;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v1, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method private resetTransport()I
    .locals 4

    const-string v0, "com.google.android.gms/.backup.BackupTransportService"

    const-string v1, "AsusTransferDataService"

    .line 785
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "before resetTransport mOriginTransport:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/AsusTransferDataService;->mOriginTransport:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    iget-object v2, p0, Lcom/android/settings/AsusTransferDataService;->mBackupManager:Landroid/app/backup/IBackupManager;

    if-eqz v2, :cond_0

    .line 788
    invoke-interface {v2}, Landroid/app/backup/IBackupManager;->cancelBackups()V

    .line 791
    :cond_0
    iget-object v2, p0, Lcom/android/settings/AsusTransferDataService;->mOriginTransport:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "android/com.android.internal.backup.AsusTransport"

    iget-object v3, p0, Lcom/android/settings/AsusTransferDataService;->mOriginTransport:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 792
    iget-object v0, p0, Lcom/android/settings/AsusTransferDataService;->mBackupManager:Landroid/app/backup/IBackupManager;

    iget-object v2, p0, Lcom/android/settings/AsusTransferDataService;->mOriginTransport:Ljava/lang/String;

    invoke-interface {v0, v2}, Landroid/app/backup/IBackupManager;->selectBackupTransport(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 793
    iput-object v0, p0, Lcom/android/settings/AsusTransferDataService;->mOriginTransport:Ljava/lang/String;

    goto :goto_0

    .line 797
    :cond_1
    iget-object v2, p0, Lcom/android/settings/AsusTransferDataService;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v2}, Landroid/app/backup/IBackupManager;->listAllTransports()[Ljava/lang/String;

    move-result-object v2

    .line 798
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 799
    iget-object v2, p0, Lcom/android/settings/AsusTransferDataService;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v2, v0}, Landroid/app/backup/IBackupManager;->selectBackupTransport(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/AsusTransferDataService;->mOriginTransport:Ljava/lang/String;

    goto :goto_0

    .line 801
    :cond_2
    iget-object v0, p0, Lcom/android/settings/AsusTransferDataService;->mBackupManager:Landroid/app/backup/IBackupManager;

    const-string v2, "android/com.android.internal.backup.LocalTransport"

    invoke-interface {v0, v2}, Landroid/app/backup/IBackupManager;->selectBackupTransport(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/AsusTransferDataService;->mOriginTransport:Ljava/lang/String;

    .line 805
    :goto_0
    iget-object v0, p0, Lcom/android/settings/AsusTransferDataService;->preBackupEnable:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_3

    .line 807
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/android/settings/AsusTransferDataService;->preBackupEnable:Ljava/lang/Boolean;

    .line 811
    iget-object v0, p0, Lcom/android/settings/AsusTransferDataService;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v0, v2}, Landroid/app/backup/IBackupManager;->setBackupEnabled(Z)V

    .line 814
    :cond_3
    iget-object v0, p0, Lcom/android/settings/AsusTransferDataService;->mFullBackupHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    .line 815
    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 816
    iput-object v3, p0, Lcom/android/settings/AsusTransferDataService;->mFullBackupHandler:Landroid/os/Handler;

    .line 819
    :cond_4
    iget-object v0, p0, Lcom/android/settings/AsusTransferDataService;->mFullBackupHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_5

    .line 820
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 821
    iget-object v0, p0, Lcom/android/settings/AsusTransferDataService;->mFullBackupHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->interrupt()V

    .line 822
    iput-object v3, p0, Lcom/android/settings/AsusTransferDataService;->mFullBackupHandlerThread:Landroid/os/HandlerThread;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    return v2

    :catch_0
    move-exception p0

    .line 826
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0x3e8

    return p0
.end method

.method private restorePackage(Ljava/lang/String;Landroid/os/Messenger;Landroid/os/Messenger;)I
    .locals 7

    const-string v0, "com.whatsapp"

    .line 705
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "AsusTransferDataService"

    if-eqz v0, :cond_0

    .line 706
    invoke-virtual {p0}, Landroid/app/Service;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "activity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 708
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Force stopping whatsapp "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 712
    :cond_0
    new-instance v0, Lcom/android/settings/AsusTransferDataService$RestoreObserver;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/settings/AsusTransferDataService$RestoreObserver;-><init>(Ljava/lang/String;Landroid/os/Messenger;Landroid/os/Messenger;)V

    iput-object v0, p0, Lcom/android/settings/AsusTransferDataService;->mCurrentRestoreObserver:Lcom/android/settings/AsusTransferDataService$RestoreObserver;

    const/16 p2, -0x3e8

    .line 716
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/AsusTransferDataService;->mBackupManager:Landroid/app/backup/IBackupManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v3, p1, v2}, Landroid/app/backup/IBackupManager;->beginRestoreSessionForUser(ILjava/lang/String;Ljava/lang/String;)Landroid/app/backup/IRestoreSession;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/AsusTransferDataService;->mRestore:Landroid/app/backup/IRestoreSession;

    .line 717
    :goto_0
    iget-object v0, p0, Lcom/android/settings/AsusTransferDataService;->mRestore:Landroid/app/backup/IRestoreSession;

    if-nez v0, :cond_1

    const/16 v4, 0xc8

    iget v5, p0, Lcom/android/settings/AsusTransferDataService;->mTryGetRestoreSession:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/android/settings/AsusTransferDataService;->mTryGetRestoreSession:I

    if-le v4, v5, :cond_1

    .line 721
    iget-object v0, p0, Lcom/android/settings/AsusTransferDataService;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v0, v3, p1, v2}, Landroid/app/backup/IBackupManager;->beginRestoreSessionForUser(ILjava/lang/String;Ljava/lang/String;)Landroid/app/backup/IRestoreSession;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/AsusTransferDataService;->mRestore:Landroid/app/backup/IRestoreSession;

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    .line 725
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p0

    .line 726
    iput p2, p0, Landroid/os/Message;->arg1:I

    const/4 v0, 0x6

    .line 727
    iput v0, p0, Landroid/os/Message;->what:I

    .line 728
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "pkgName"

    .line 729
    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    invoke-virtual {p0, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 731
    invoke-virtual {p3, p0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    return p2

    .line 736
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/sdcard/Android/obb/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "/data/cache/AsusBackup/5566/_full/obb/"

    invoke-static {v0, v2}, Lcom/android/settings/AsusTransferDataService;->copyFileOrDirectory(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    iget-object v0, p0, Lcom/android/settings/AsusTransferDataService;->mFullBackupHandler:Landroid/os/Handler;

    if-nez v0, :cond_4

    .line 739
    iget-object v0, p0, Lcom/android/settings/AsusTransferDataService;->mFullBackupHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_3

    .line 740
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "full_backup"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/AsusTransferDataService;->mFullBackupHandlerThread:Landroid/os/HandlerThread;

    .line 741
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 743
    :cond_3
    new-instance v0, Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/AsusTransferDataService;->mFullBackupHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/AsusTransferDataService;->mFullBackupHandler:Landroid/os/Handler;

    .line 746
    :cond_4
    iget-object v0, p0, Lcom/android/settings/AsusTransferDataService;->mFullBackupHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/settings/AsusTransferDataService$2;

    invoke-direct {v2, p0, p1, p3}, Lcom/android/settings/AsusTransferDataService$2;-><init>(Lcom/android/settings/AsusTransferDataService;Ljava/lang/String;Landroid/os/Messenger;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception p0

    .line 778
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p2
.end method

.method private setBackupTimeoutMillis(I)V
    .locals 2

    .line 846
    invoke-virtual {p0}, Landroid/app/Service;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "full_backup_agent_timeout_millis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "backup_agent_timeout_parameters"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private setRestoreTimeoutMillis(I)V
    .locals 2

    .line 836
    invoke-virtual {p0}, Landroid/app/Service;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "restore_agent_timeout_millis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "backup_agent_timeout_parameters"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 604
    sget-boolean p1, Landroid/os/Build$FEATURES;->ENABLE_ASUS_DATA_TRANSFER:Z

    if-nez p1, :cond_0

    .line 605
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    const/4 p0, 0x0

    return-object p0

    .line 608
    :cond_0
    iget-object p0, p0, Lcom/android/settings/AsusTransferDataService;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {p0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public onCreate()V
    .locals 2

    .line 591
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 592
    sget-boolean v0, Landroid/os/Build$FEATURES;->ENABLE_ASUS_DATA_TRANSFER:Z

    if-nez v0, :cond_0

    .line 593
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void

    :cond_0
    const-string v0, "AsusTransferDataService"

    const-string v1, "onCreate"

    .line 596
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "backup"

    .line 598
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 597
    invoke-static {v0}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/AsusTransferDataService;->mBackupManager:Landroid/app/backup/IBackupManager;

    return-void
.end method

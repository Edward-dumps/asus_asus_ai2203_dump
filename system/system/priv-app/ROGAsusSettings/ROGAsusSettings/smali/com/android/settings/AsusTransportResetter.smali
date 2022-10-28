.class public Lcom/android/settings/AsusTransportResetter;
.super Landroid/content/BroadcastReceiver;
.source "AsusTransportResetter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private clearRestoreCache()V
    .locals 4

    .line 61
    new-instance p0, Ljava/io/File;

    const-string v0, "/cache/AsusBackup/5566/_full/"

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AsusTransportReset"

    const-string v1, "AsusDataTransfer cache floder is exist, clear the floder."

    .line 63
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 65
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 66
    new-instance v2, Ljava/io/File;

    aget-object v3, v0, v1

    invoke-direct {v2, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const-string p2, "backup_agent_timeout_parameters"

    const-string v0, "com.google.android.gms/.backup.BackupTransportService"

    const-string v1, "AsusTransportReset"

    const-string v2, "receive boot complete"

    .line 30
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "backup"

    .line 32
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 31
    invoke-static {v2}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v2

    .line 34
    :try_start_0
    invoke-interface {v2}, Landroid/app/backup/IBackupManager;->getCurrentTransport()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android/com.android.internal.backup.AsusTransport"

    .line 35
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "current transport is AsusTransport, reset transport."

    .line 36
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-interface {v2}, Landroid/app/backup/IBackupManager;->listAllTransports()[Ljava/lang/String;

    move-result-object v3

    .line 38
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 39
    invoke-interface {v2, v0}, Landroid/app/backup/IBackupManager;->selectBackupTransport(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "android/com.android.internal.backup.LocalTransport"

    .line 41
    invoke-interface {v2, v0}, Landroid/app/backup/IBackupManager;->selectBackupTransport(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, ""

    if-eq v0, v2, :cond_1

    .line 47
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, p2, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 53
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/AsusTransportResetter;->clearRestoreCache()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 55
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

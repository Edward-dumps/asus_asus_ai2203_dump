.class public Lcom/android/settings/dropbox/DropboxUpdateController;
.super Ljava/lang/Object;
.source "DropboxUpdateController.java"


# instance fields
.field private final DROPBOX_DAILY_UPDATE_ALARM_INTENT:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mContext:Landroid/content/Context;

.field private mDropboxAlarmReceiver:Landroid/content/BroadcastReceiver;

.field private mDropboxPendingIntent:Landroid/app/PendingIntent;

.field private mDropboxTracker:Lcom/android/settings/dropbox/DropboxTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-class v0, Lcom/android/settings/dropbox/DropboxUpdateController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dropbox/DropboxUpdateController;->TAG:Ljava/lang/String;

    const-string v0, "com.android.settings.dropbox.DROPBOX_DAILY_UPDATE"

    .line 20
    iput-object v0, p0, Lcom/android/settings/dropbox/DropboxUpdateController;->DROPBOX_DAILY_UPDATE_ALARM_INTENT:Ljava/lang/String;

    .line 46
    new-instance v1, Lcom/android/settings/dropbox/DropboxUpdateController$1;

    invoke-direct {v1, p0}, Lcom/android/settings/dropbox/DropboxUpdateController$1;-><init>(Lcom/android/settings/dropbox/DropboxUpdateController;)V

    iput-object v1, p0, Lcom/android/settings/dropbox/DropboxUpdateController;->mDropboxAlarmReceiver:Landroid/content/BroadcastReceiver;

    const-string v1, "alarm"

    .line 28
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lcom/android/settings/dropbox/DropboxUpdateController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 29
    iput-object p1, p0, Lcom/android/settings/dropbox/DropboxUpdateController;->mContext:Landroid/content/Context;

    .line 30
    invoke-static {p1}, Lcom/android/settings/dropbox/DropboxTracker;->getInstance(Landroid/content/Context;)Lcom/android/settings/dropbox/DropboxTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/dropbox/DropboxUpdateController;->mDropboxTracker:Lcom/android/settings/dropbox/DropboxTracker;

    .line 31
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 32
    iget-object v3, p0, Lcom/android/settings/dropbox/DropboxUpdateController;->mDropboxAlarmReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/dropbox/DropboxUpdateController;)Ljava/lang/String;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/android/settings/dropbox/DropboxUpdateController;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/dropbox/DropboxUpdateController;)Lcom/android/settings/dropbox/DropboxTracker;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/android/settings/dropbox/DropboxUpdateController;->mDropboxTracker:Lcom/android/settings/dropbox/DropboxTracker;

    return-object p0
.end method


# virtual methods
.method public checkInitial()V
    .locals 5

    .line 61
    iget-object v0, p0, Lcom/android/settings/dropbox/DropboxUpdateController;->mDropboxTracker:Lcom/android/settings/dropbox/DropboxTracker;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "upload_time"

    .line 64
    invoke-virtual {v0, v1}, Lcom/android/settings/dropbox/DropboxTracker;->getSharedPreferenceData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 66
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 69
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-wide v3, v1

    :goto_0
    sub-long/2addr v1, v3

    const-wide/32 v3, 0x1b77400

    cmp-long v0, v1, v3

    if-ltz v0, :cond_1

    .line 73
    iget-object p0, p0, Lcom/android/settings/dropbox/DropboxUpdateController;->mDropboxTracker:Lcom/android/settings/dropbox/DropboxTracker;

    invoke-virtual {p0}, Lcom/android/settings/dropbox/DropboxTracker;->outputAllDropbox()V

    :cond_1
    return-void
.end method

.method public setDropboxAlarmSchedule()V
    .locals 6

    .line 36
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.dropbox.DROPBOX_DAILY_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 37
    iget-object v1, p0, Lcom/android/settings/dropbox/DropboxUpdateController;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x12000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dropbox/DropboxUpdateController;->mDropboxPendingIntent:Landroid/app/PendingIntent;

    .line 40
    iget-object v0, p0, Lcom/android/settings/dropbox/DropboxUpdateController;->mAlarmManager:Landroid/app/AlarmManager;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/android/settings/dropbox/DropboxUpdateController;->TAG:Ljava/lang/String;

    const-string v1, "Settings setDropboxAlarmSchedule"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iget-object v0, p0, Lcom/android/settings/dropbox/DropboxUpdateController;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v1, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/32 v4, 0x1b77400

    add-long/2addr v2, v4

    iget-object p0, p0, Lcom/android/settings/dropbox/DropboxUpdateController;->mDropboxPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    :cond_0
    return-void
.end method

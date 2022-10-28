.class public Lcom/android/settings/analytics/AnalyticsJobService;
.super Landroid/app/job/JobService;
.source "AnalyticsJobService.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    const-class v0, Lcom/android/settings/analytics/AnalyticsJobService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/analytics/AnalyticsJobService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method public static schedule(Landroid/content/Context;J)V
    .locals 3

    const-string v0, "jobscheduler"

    .line 22
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    .line 23
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/android/settings/analytics/AnalyticsJobService;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 25
    new-instance p0, Landroid/app/job/JobInfo$Builder;

    const/16 v2, 0x25d

    invoke-direct {p0, v2, v1}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const/4 v1, 0x2

    .line 26
    invoke-virtual {p0, v1}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    const/4 v1, 0x1

    .line 27
    invoke-virtual {p0, v1}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    .line 28
    invoke-virtual {p0, p1, p2}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    .line 29
    invoke-virtual {p0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 0

    .line 40
    new-instance p1, Lcom/android/settings/analytics/Tracker;

    invoke-virtual {p0}, Landroid/app/job/JobService;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/android/settings/analytics/Tracker;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/android/settings/analytics/Tracker;->sendStates()V

    const/4 p0, 0x1

    return p0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

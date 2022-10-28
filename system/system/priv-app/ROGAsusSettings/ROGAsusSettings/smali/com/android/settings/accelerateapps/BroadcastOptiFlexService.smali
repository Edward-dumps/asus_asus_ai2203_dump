.class public Lcom/android/settings/accelerateapps/BroadcastOptiFlexService;
.super Landroid/app/Service;
.source "BroadcastOptiFlexService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accelerateapps/BroadcastOptiFlexService$ProvisionObserver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mProvisionObserver:Lcom/android/settings/accelerateapps/BroadcastOptiFlexService$ProvisionObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    sget-boolean v0, Lcom/android/settings/accelerateapps/AccelerateAppsController;->DEBUG:Z

    sput-boolean v0, Lcom/android/settings/accelerateapps/BroadcastOptiFlexService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 27
    sget-boolean v0, Lcom/android/settings/accelerateapps/BroadcastOptiFlexService;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/accelerateapps/BroadcastOptiFlexService;)Z
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/android/settings/accelerateapps/BroadcastOptiFlexService;->isDeviceProvisioned()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/android/settings/accelerateapps/BroadcastOptiFlexService;)Lcom/android/settings/accelerateapps/BroadcastOptiFlexService$ProvisionObserver;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/android/settings/accelerateapps/BroadcastOptiFlexService;->mProvisionObserver:Lcom/android/settings/accelerateapps/BroadcastOptiFlexService$ProvisionObserver;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/settings/accelerateapps/BroadcastOptiFlexService;)Landroid/content/Context;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/android/settings/accelerateapps/BroadcastOptiFlexService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private isDeviceProvisioned()Z
    .locals 2

    .line 155
    iget-object p0, p0, Lcom/android/settings/accelerateapps/BroadcastOptiFlexService;->mContext:Landroid/content/Context;

    .line 156
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "device_provisioned"

    const/4 v1, 0x0

    .line 155
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()V
    .locals 2

    .line 54
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accelerateapps/BroadcastOptiFlexService;->mContext:Landroid/content/Context;

    .line 55
    new-instance v0, Lcom/android/settings/accelerateapps/BroadcastOptiFlexService$ProvisionObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accelerateapps/BroadcastOptiFlexService$ProvisionObserver;-><init>(Lcom/android/settings/accelerateapps/BroadcastOptiFlexService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/accelerateapps/BroadcastOptiFlexService;->mProvisionObserver:Lcom/android/settings/accelerateapps/BroadcastOptiFlexService$ProvisionObserver;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 149
    sget-boolean v0, Lcom/android/settings/accelerateapps/BroadcastOptiFlexService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "BroadOptiFlexService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method protected onHandleIntent()V
    .locals 9

    .line 82
    sget-boolean v0, Lcom/android/settings/accelerateapps/BroadcastOptiFlexService;->DEBUG:Z

    const-string v1, "BroadOptiFlexService"

    if-eqz v0, :cond_0

    const-string v0, "onHandleIntent"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accelerateapps/BroadcastOptiFlexService;->mContext:Landroid/content/Context;

    const-string v2, "OptiFlex"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "firstUsedOptiFlex"

    const/4 v4, 0x1

    .line 88
    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 89
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    if-eqz v2, :cond_1

    .line 92
    invoke-static {}, Lcom/android/settings/accelerateapps/OptiFlexUtil;->getDefaultList()Ljava/util/List;

    move-result-object v0

    .line 93
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-virtual {p0}, Landroid/app/Service;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-static {v5, v0, v2, v6}, Lcom/android/settings/accelerateapps/OptiFlexUtil;->queryResovleInfo(Ljava/util/List;Ljava/util/List;ILandroid/content/pm/PackageManager;)V

    goto :goto_0

    :cond_1
    const-string v2, "selectedAppsUid"

    const-string v6, ""

    .line 95
    invoke-interface {v0, v2, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    invoke-static {v0}, Lcom/android/settings/accelerateapps/AccelerateAppsController;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 98
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 99
    invoke-static {v5, v0}, Lcom/android/settings/accelerateapps/OptiFlexUtil;->queryResovleInfoByUid(Ljava/util/List;Ljava/util/List;)V

    .line 103
    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 105
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v5, v3

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/lit8 v7, v5, 0x1

    .line 106
    aput v6, v0, v5

    move v5, v7

    goto :goto_1

    .line 108
    :cond_3
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v5, "android"

    .line 109
    invoke-virtual {v2, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    iget-object v5, p0, Lcom/android/settings/accelerateapps/BroadcastOptiFlexService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "optiflex"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v4, :cond_5

    .line 112
    iget-object v5, p0, Lcom/android/settings/accelerateapps/BroadcastOptiFlexService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "optiflex_auto_selected"

    invoke-static {v5, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v4, :cond_4

    move v5, v6

    goto :goto_2

    :cond_4
    move v5, v4

    goto :goto_2

    :cond_5
    move v5, v3

    :goto_2
    if-ne v5, v4, :cond_6

    const-string v4, "OptiFlexAppsUid"

    .line 122
    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    :cond_6
    if-ne v5, v6, :cond_8

    .line 127
    iget-object v4, p0, Lcom/android/settings/accelerateapps/BroadcastOptiFlexService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/accelerateapps/OptiFlexUtil;->getLastAutoListFromSettings(Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 128
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_8

    .line 129
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    .line 130
    new-array v7, v6, [I

    :goto_3
    if-ge v3, v6, :cond_7

    .line 132
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aput v8, v7, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_7
    const-string v3, "OptiFlexAppsPkg"

    .line 134
    invoke-virtual {v2, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    :cond_8
    const-string v3, "OptiFlexMode"

    .line 138
    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "asus.intent.action.OPTIFLEX_CONFIG"

    .line 139
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    iget-object p0, p0, Lcom/android/settings/accelerateapps/BroadcastOptiFlexService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 142
    sget-boolean p0, Lcom/android/settings/accelerateapps/BroadcastOptiFlexService;->DEBUG:Z

    if-eqz p0, :cond_9

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/android/settings/accelerateapps/BroadcastOptiFlexService;->isDeviceProvisioned()Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/accelerateapps/BroadcastOptiFlexService;->onHandleIntent()V

    .line 68
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    const/4 p2, 0x2

    goto :goto_0

    :cond_0
    const-string p1, "device_provisioned"

    .line 71
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 72
    iget-object p3, p0, Lcom/android/settings/accelerateapps/BroadcastOptiFlexService;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    iget-object p0, p0, Lcom/android/settings/accelerateapps/BroadcastOptiFlexService;->mProvisionObserver:Lcom/android/settings/accelerateapps/BroadcastOptiFlexService$ProvisionObserver;

    invoke-virtual {p3, p1, p2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :goto_0
    return p2
.end method

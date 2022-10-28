.class public Lcom/android/settings/accelerateapps/AccelerateAppsController;
.super Ljava/lang/Object;
.source "AccelerateAppsController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accelerateapps/AccelerateAppsController$CompareResolveInfo;
    }
.end annotation


# static fields
.field static final DEBUG:Z

.field private static mInstance:Lcom/android/settings/accelerateapps/AccelerateAppsController;


# instance fields
.field private mAcceleratableApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultSelectedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOptiFlexAutoEnabled:Z

.field private mOptiFlexEnabled:Z

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mSelectedAccelerateApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "userdebug"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/accelerateapps/AccelerateAppsController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    invoke-static {}, Lcom/android/settings/accelerateapps/OptiFlexUtil;->getDefaultList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accelerateapps/AccelerateAppsController;->mDefaultSelectedList:Ljava/util/List;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accelerateapps/AccelerateAppsController;->mSelectedAccelerateApps:Ljava/util/List;

    const/4 v0, 0x1

    .line 93
    iput-boolean v0, p0, Lcom/android/settings/accelerateapps/AccelerateAppsController;->mOptiFlexEnabled:Z

    .line 94
    iput-boolean v0, p0, Lcom/android/settings/accelerateapps/AccelerateAppsController;->mOptiFlexAutoEnabled:Z

    return-void
.end method

.method private checkUnreachableUid(Ljava/util/List;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    const-string p0, "OptiFlex"

    const/4 v0, 0x0

    .line 282
    invoke-virtual {p2, p0, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 284
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    .line 285
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 286
    invoke-static {v0}, Lcom/android/settings/accelerateapps/OptiFlexUtil;->getOptiFlexUid(Landroid/content/pm/ResolveInfo;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v0, ";"

    .line 287
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 290
    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "selectedAppsUid"

    invoke-interface {p0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static getInstance()Lcom/android/settings/accelerateapps/AccelerateAppsController;
    .locals 1

    .line 121
    sget-object v0, Lcom/android/settings/accelerateapps/AccelerateAppsController;->mInstance:Lcom/android/settings/accelerateapps/AccelerateAppsController;

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Lcom/android/settings/accelerateapps/AccelerateAppsController;

    invoke-direct {v0}, Lcom/android/settings/accelerateapps/AccelerateAppsController;-><init>()V

    sput-object v0, Lcom/android/settings/accelerateapps/AccelerateAppsController;->mInstance:Lcom/android/settings/accelerateapps/AccelerateAppsController;

    .line 124
    :cond_0
    sget-object v0, Lcom/android/settings/accelerateapps/AccelerateAppsController;->mInstance:Lcom/android/settings/accelerateapps/AccelerateAppsController;

    return-object v0
.end method

.method private getList(Landroid/content/pm/PackageManager;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 294
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 296
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.LAUNCHER"

    .line 297
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    .line 298
    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 299
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 301
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 302
    invoke-virtual {p1, v3}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    .line 303
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p1

    move v4, v1

    :goto_0
    if-ge v4, v2, :cond_a

    .line 307
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 308
    invoke-static {v5}, Lcom/android/settings/accelerateapps/OptiFlexUtil;->getOptiFlexUid(Landroid/content/pm/ResolveInfo;)I

    move-result v6

    const v7, 0x186a0

    .line 314
    div-int v8, v6, v7

    const/16 v9, 0x935

    const/4 v10, 0x1

    if-ne v8, v9, :cond_0

    .line 315
    rem-int v7, v6, v7

    .line 317
    iget-object v8, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v9, "com.android.vending"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    move v10, v1

    goto :goto_1

    :cond_0
    move v7, v6

    :cond_1
    :goto_1
    const/16 v8, 0x2710

    if-lt v7, v8, :cond_2

    const/16 v8, 0x4e1f

    if-le v7, v8, :cond_4

    :cond_2
    const v8, 0x17318

    if-lt v7, v8, :cond_3

    const v8, 0x176ff

    if-le v7, v8, :cond_4

    :cond_3
    move v10, v1

    :cond_4
    if-eqz v10, :cond_6

    move v7, v1

    :goto_2
    if-ge v7, p1, :cond_6

    .line 331
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 332
    invoke-static {v8}, Lcom/android/settings/accelerateapps/OptiFlexUtil;->getOptiFlexUid(Landroid/content/pm/ResolveInfo;)I

    move-result v8

    if-ne v6, v8, :cond_5

    move v10, v1

    goto :goto_3

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    if-eqz v10, :cond_8

    .line 341
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v7

    move v8, v1

    :goto_4
    if-ge v8, v7, :cond_8

    .line 343
    invoke-interface {p0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 344
    invoke-static {v9}, Lcom/android/settings/accelerateapps/OptiFlexUtil;->getOptiFlexUid(Landroid/content/pm/ResolveInfo;)I

    move-result v9

    if-ne v6, v9, :cond_7

    move v10, v1

    goto :goto_5

    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_8
    :goto_5
    if-eqz v10, :cond_9

    .line 352
    invoke-interface {p0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_a
    return-object p0
.end method

.method public static split(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    .line 486
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 490
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/16 v2, 0x3b

    .line 493
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    :goto_0
    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 495
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v3, 0x1

    .line 497
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    goto :goto_0

    .line 500
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 501
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 502
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 505
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public broadcastToAccelerate(Landroid/content/Context;)V
    .locals 10

    .line 418
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "OptiFlex"

    const/4 v2, 0x0

    .line 420
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "OptiFlexMode"

    .line 421
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 422
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v5, "android"

    .line 423
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "asus.intent.action.OPTIFLEX_CONFIG"

    .line 424
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 425
    iget-object v5, p0, Lcom/android/settings/accelerateapps/AccelerateAppsController;->mSelectedAccelerateApps:Ljava/util/List;

    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    goto :goto_0

    :cond_0
    move v5, v2

    .line 426
    :goto_0
    new-array v5, v5, [I

    .line 428
    iget-object p0, p0, Lcom/android/settings/accelerateapps/AccelerateAppsController;->mSelectedAccelerateApps:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move v6, v2

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    add-int/lit8 v8, v6, 0x1

    .line 429
    invoke-static {v7}, Lcom/android/settings/accelerateapps/OptiFlexUtil;->getOptiFlexUid(Landroid/content/pm/ResolveInfo;)I

    move-result v9

    aput v9, v5, v6

    .line 430
    invoke-static {v7}, Lcom/android/settings/accelerateapps/OptiFlexUtil;->getOptiFlexUid(Landroid/content/pm/ResolveInfo;)I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v6, ";"

    .line 431
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v6, v8

    goto :goto_1

    :cond_1
    const-string p0, "AccelerateAppsControl"

    const-string v6, "OptiFlexAppsUid"

    const/4 v7, 0x1

    if-ne v1, v7, :cond_3

    .line 435
    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 436
    sget-boolean v5, Lcom/android/settings/accelerateapps/AccelerateAppsController;->DEBUG:Z

    if-eqz v5, :cond_3

    .line 437
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    if-le v5, v7, :cond_2

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    sub-int/2addr v5, v7

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    invoke-virtual {v0, v5, v7}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    :cond_2
    const-string v5, "Broadcast OptiFlex : ["

    .line 438
    invoke-virtual {v0, v2, v5}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "]"

    .line 439
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 440
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v0, 0x2

    if-ne v1, v0, :cond_5

    .line 446
    invoke-static {p1}, Lcom/android/settings/accelerateapps/OptiFlexUtil;->getLastAutoListFromSettings(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 447
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_5

    .line 448
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    .line 449
    new-array v7, v5, [I

    :goto_2
    if-ge v2, v5, :cond_4

    .line 451
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const/4 v9, -0x1

    .line 452
    aput v9, v7, v2

    .line 454
    :try_start_0
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aput v8, v7, v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 456
    :catch_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "wrong uid str ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "] = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v9, v7, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 459
    :cond_4
    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 463
    :cond_5
    invoke-virtual {v4, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 464
    sget-object p0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p1, v4, p0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public checkApps(Landroid/content/pm/ResolveInfo;)Z
    .locals 3

    .line 362
    iget-object v0, p0, Lcom/android/settings/accelerateapps/AccelerateAppsController;->mSelectedAccelerateApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {}, Lcom/android/settings/accelerateapps/OptiFlexUtil;->getMaxListSize()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accelerateapps/AccelerateAppsController;->mAcceleratableApps:Ljava/util/List;

    new-instance v1, Lcom/android/settings/accelerateapps/AccelerateAppsController$CompareResolveInfo;

    iget-object v2, p0, Lcom/android/settings/accelerateapps/AccelerateAppsController;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {v1, p0, v2}, Lcom/android/settings/accelerateapps/AccelerateAppsController$CompareResolveInfo;-><init>(Lcom/android/settings/accelerateapps/AccelerateAppsController;Landroid/content/pm/PackageManager;)V

    invoke-static {v0, p1, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    .line 367
    iget-object v1, p0, Lcom/android/settings/accelerateapps/AccelerateAppsController;->mSelectedAccelerateApps:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    if-ltz v0, :cond_1

    .line 368
    iget-object v0, p0, Lcom/android/settings/accelerateapps/AccelerateAppsController;->mSelectedAccelerateApps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 369
    iget-object v0, p0, Lcom/android/settings/accelerateapps/AccelerateAppsController;->mAcceleratableApps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 371
    iget-object p1, p0, Lcom/android/settings/accelerateapps/AccelerateAppsController;->mAcceleratableApps:Ljava/util/List;

    new-instance v0, Lcom/android/settings/accelerateapps/AccelerateAppsController$CompareResolveInfo;

    iget-object v1, p0, Lcom/android/settings/accelerateapps/AccelerateAppsController;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accelerateapps/AccelerateAppsController$CompareResolveInfo;-><init>(Lcom/android/settings/accelerateapps/AccelerateAppsController;Landroid/content/pm/PackageManager;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public getAcceleratableApps()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 113
    iget-object p0, p0, Lcom/android/settings/accelerateapps/AccelerateAppsController;->mAcceleratableApps:Ljava/util/List;

    return-object p0
.end method

.method public getOptiFlexAutoEnabled()Z
    .locals 0

    .line 109
    iget-boolean p0, p0, Lcom/android/settings/accelerateapps/AccelerateAppsController;->mOptiFlexAutoEnabled:Z

    return p0
.end method

.method public getOptiFlexEnabled()Z
    .locals 0

    .line 101
    iget-boolean p0, p0, Lcom/android/settings/accelerateapps/AccelerateAppsController;->mOptiFlexEnabled:Z

    return p0
.end method

.method public getSelectedAccelerateApps()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 117
    iget-object p0, p0, Lcom/android/settings/accelerateapps/AccelerateAppsController;->mSelectedAccelerateApps:Ljava/util/List;

    return-object p0
.end method

.method public isSafelySizeForBroadcast()Z
    .locals 1

    .line 410
    iget-object p0, p0, Lcom/android/settings/accelerateapps/AccelerateAppsController;->mSelectedAccelerateApps:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-static {}, Lcom/android/settings/accelerateapps/OptiFlexUtil;->getMaxListSize()I

    move-result v0

    if-le p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public loadSharePreference(Landroid/content/Context;)V
    .locals 3

    .line 128
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "optiflex"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/accelerateapps/AccelerateAppsController;->mOptiFlexEnabled:Z

    .line 129
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "optiflex_auto_selected"

    invoke-static {p1, v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v2, :cond_1

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    iput-boolean v2, p0, Lcom/android/settings/accelerateapps/AccelerateAppsController;->mOptiFlexAutoEnabled:Z

    return-void
.end method

.method public saveSelectedApps(Landroid/content/Context;)V
    .locals 3

    const-string v0, "OptiFlex"

    const/4 v1, 0x0

    .line 470
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "firstUsedOptiFlex"

    const/4 v2, 0x1

    .line 472
    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 474
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 477
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 478
    iget-object p0, p0, Lcom/android/settings/accelerateapps/AccelerateAppsController;->mSelectedAccelerateApps:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 479
    invoke-static {v1}, Lcom/android/settings/accelerateapps/OptiFlexUtil;->getOptiFlexUid(Landroid/content/pm/ResolveInfo;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ";"

    .line 480
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 482
    :cond_1
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "selectedAppsUid"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public saveSharePreference(Landroid/content/Context;)V
    .locals 5

    const-string v0, "OptiFlex"

    const/4 v1, 0x0

    .line 149
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 150
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings/accelerateapps/AccelerateAppsController;->mOptiFlexEnabled:Z

    const-string v4, "optiflex"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 151
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-boolean v2, p0, Lcom/android/settings/accelerateapps/AccelerateAppsController;->mOptiFlexAutoEnabled:Z

    const-string v3, "optiflex_auto_selected"

    invoke-static {p1, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 155
    iget-boolean p1, p0, Lcom/android/settings/accelerateapps/AccelerateAppsController;->mOptiFlexEnabled:Z

    if-eqz p1, :cond_1

    .line 156
    iget-boolean p0, p0, Lcom/android/settings/accelerateapps/AccelerateAppsController;->mOptiFlexAutoEnabled:Z

    if-eqz p0, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 163
    :cond_1
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "OptiFlexMode"

    invoke-interface {p0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setOptiFlexAutoEnabled(Z)V
    .locals 0

    .line 105
    iput-boolean p1, p0, Lcom/android/settings/accelerateapps/AccelerateAppsController;->mOptiFlexAutoEnabled:Z

    return-void
.end method

.method public setOptiFlexEnabled(Z)V
    .locals 0

    .line 97
    iput-boolean p1, p0, Lcom/android/settings/accelerateapps/AccelerateAppsController;->mOptiFlexEnabled:Z

    return-void
.end method

.method public uncheckApps(Landroid/content/pm/ResolveInfo;)V
    .locals 3

    .line 378
    iget-object v0, p0, Lcom/android/settings/accelerateapps/AccelerateAppsController;->mAcceleratableApps:Ljava/util/List;

    new-instance v1, Lcom/android/settings/accelerateapps/AccelerateAppsController$CompareResolveInfo;

    iget-object v2, p0, Lcom/android/settings/accelerateapps/AccelerateAppsController;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {v1, p0, v2}, Lcom/android/settings/accelerateapps/AccelerateAppsController$CompareResolveInfo;-><init>(Lcom/android/settings/accelerateapps/AccelerateAppsController;Landroid/content/pm/PackageManager;)V

    invoke-static {v0, p1, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    if-gez v0, :cond_1

    .line 380
    iget-object v0, p0, Lcom/android/settings/accelerateapps/AccelerateAppsController;->mSelectedAccelerateApps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/android/settings/accelerateapps/AccelerateAppsController;->mSelectedAccelerateApps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 383
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accelerateapps/AccelerateAppsController;->mAcceleratableApps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 385
    iget-object p1, p0, Lcom/android/settings/accelerateapps/AccelerateAppsController;->mAcceleratableApps:Ljava/util/List;

    new-instance v0, Lcom/android/settings/accelerateapps/AccelerateAppsController$CompareResolveInfo;

    iget-object v1, p0, Lcom/android/settings/accelerateapps/AccelerateAppsController;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accelerateapps/AccelerateAppsController$CompareResolveInfo;-><init>(Lcom/android/settings/accelerateapps/AccelerateAppsController;Landroid/content/pm/PackageManager;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_1
    return-void
.end method

.method public updateAcceleratableList(Landroid/content/pm/PackageManager;Landroid/content/Context;)V
    .locals 6

    .line 214
    iput-object p1, p0, Lcom/android/settings/accelerateapps/AccelerateAppsController;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 215
    invoke-direct {p0, p1}, Lcom/android/settings/accelerateapps/AccelerateAppsController;->getList(Landroid/content/pm/PackageManager;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accelerateapps/AccelerateAppsController;->mAcceleratableApps:Ljava/util/List;

    const-string v0, "OptiFlex"

    const/4 v1, 0x0

    .line 216
    invoke-virtual {p2, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "firstUsedOptiFlex"

    const/4 v3, 0x1

    .line 217
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 218
    iget-object v3, p0, Lcom/android/settings/accelerateapps/AccelerateAppsController;->mSelectedAccelerateApps:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    if-eqz v2, :cond_2

    .line 221
    iget-object p2, p0, Lcom/android/settings/accelerateapps/AccelerateAppsController;->mDefaultSelectedList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 222
    iget-object v1, p0, Lcom/android/settings/accelerateapps/AccelerateAppsController;->mAcceleratableApps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 223
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 224
    iget-object v3, p0, Lcom/android/settings/accelerateapps/AccelerateAppsController;->mSelectedAccelerateApps:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 232
    iget-boolean v3, p0, Lcom/android/settings/accelerateapps/AccelerateAppsController;->mOptiFlexAutoEnabled:Z

    if-eqz v3, :cond_3

    .line 233
    invoke-static {p2}, Lcom/android/settings/accelerateapps/OptiFlexUtil;->getLastAutoListFromSettings(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 234
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    move-object v2, v0

    goto :goto_1

    :cond_3
    const-string v2, "selectedAppsUid"

    const-string v3, ""

    .line 238
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 240
    invoke-static {v0}, Lcom/android/settings/accelerateapps/AccelerateAppsController;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    new-array v0, v1, [Ljava/lang/String;

    .line 244
    :cond_4
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    :cond_5
    :goto_1
    if-eqz v2, :cond_a

    .line 248
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_7

    goto :goto_2

    :cond_7
    const/4 v3, -0x1

    .line 254
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 256
    :catch_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "wrong uid str = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "AccelerateAppsControl"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :goto_3
    iget-object v1, p0, Lcom/android/settings/accelerateapps/AccelerateAppsController;->mAcceleratableApps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 259
    invoke-static {v4}, Lcom/android/settings/accelerateapps/OptiFlexUtil;->getOptiFlexUid(Landroid/content/pm/ResolveInfo;)I

    move-result v5

    if-ne v3, v5, :cond_8

    .line 260
    iget-object v5, p0, Lcom/android/settings/accelerateapps/AccelerateAppsController;->mSelectedAccelerateApps:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 265
    :cond_9
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/accelerateapps/AccelerateAppsController;->mSelectedAccelerateApps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_a

    iget-object v0, p0, Lcom/android/settings/accelerateapps/AccelerateAppsController;->mSelectedAccelerateApps:Ljava/util/List;

    .line 266
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {}, Lcom/android/settings/accelerateapps/OptiFlexUtil;->getMaxListSize()I

    move-result v1

    if-le v0, v1, :cond_a

    .line 267
    iget-object v0, p0, Lcom/android/settings/accelerateapps/AccelerateAppsController;->mSelectedAccelerateApps:Ljava/util/List;

    invoke-direct {p0, v0, p2}, Lcom/android/settings/accelerateapps/AccelerateAppsController;->checkUnreachableUid(Ljava/util/List;Landroid/content/Context;)V

    .line 272
    :cond_a
    iget-object p2, p0, Lcom/android/settings/accelerateapps/AccelerateAppsController;->mSelectedAccelerateApps:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 273
    iget-object v1, p0, Lcom/android/settings/accelerateapps/AccelerateAppsController;->mAcceleratableApps:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_5

    .line 276
    :cond_b
    iget-object p2, p0, Lcom/android/settings/accelerateapps/AccelerateAppsController;->mAcceleratableApps:Ljava/util/List;

    new-instance v0, Lcom/android/settings/accelerateapps/AccelerateAppsController$CompareResolveInfo;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/accelerateapps/AccelerateAppsController$CompareResolveInfo;-><init>(Lcom/android/settings/accelerateapps/AccelerateAppsController;Landroid/content/pm/PackageManager;)V

    invoke-static {p2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method public updateLastAutoModeList(Landroid/content/pm/PackageManager;Landroid/content/Context;)V
    .locals 6

    .line 168
    iget-boolean v0, p0, Lcom/android/settings/accelerateapps/AccelerateAppsController;->mOptiFlexAutoEnabled:Z

    if-eqz v0, :cond_8

    .line 169
    invoke-static {p2}, Lcom/android/settings/accelerateapps/OptiFlexUtil;->getLastAutoListFromSettings(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 170
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 175
    :goto_0
    iget-object v1, p0, Lcom/android/settings/accelerateapps/AccelerateAppsController;->mSelectedAccelerateApps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 176
    iget-object v3, p0, Lcom/android/settings/accelerateapps/AccelerateAppsController;->mAcceleratableApps:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 179
    :cond_1
    iget-object v1, p0, Lcom/android/settings/accelerateapps/AccelerateAppsController;->mSelectedAccelerateApps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    if-eqz v0, :cond_6

    .line 182
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    const/4 v3, -0x1

    .line 189
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 191
    :catch_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "wrong uid_str = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "AccelerateAppsControl"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :goto_3
    iget-object v2, p0, Lcom/android/settings/accelerateapps/AccelerateAppsController;->mAcceleratableApps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 194
    invoke-static {v4}, Lcom/android/settings/accelerateapps/OptiFlexUtil;->getOptiFlexUid(Landroid/content/pm/ResolveInfo;)I

    move-result v5

    if-ne v3, v5, :cond_4

    .line 195
    iget-object v5, p0, Lcom/android/settings/accelerateapps/AccelerateAppsController;->mSelectedAccelerateApps:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 200
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/accelerateapps/AccelerateAppsController;->mSelectedAccelerateApps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Lcom/android/settings/accelerateapps/AccelerateAppsController;->mSelectedAccelerateApps:Ljava/util/List;

    .line 201
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {}, Lcom/android/settings/accelerateapps/OptiFlexUtil;->getMaxListSize()I

    move-result v1

    if-le v0, v1, :cond_6

    .line 202
    iget-object v0, p0, Lcom/android/settings/accelerateapps/AccelerateAppsController;->mSelectedAccelerateApps:Ljava/util/List;

    invoke-direct {p0, v0, p2}, Lcom/android/settings/accelerateapps/AccelerateAppsController;->checkUnreachableUid(Ljava/util/List;Landroid/content/Context;)V

    .line 205
    :cond_6
    iget-object p2, p0, Lcom/android/settings/accelerateapps/AccelerateAppsController;->mSelectedAccelerateApps:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 206
    iget-object v1, p0, Lcom/android/settings/accelerateapps/AccelerateAppsController;->mAcceleratableApps:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_5

    .line 209
    :cond_7
    iget-object p2, p0, Lcom/android/settings/accelerateapps/AccelerateAppsController;->mAcceleratableApps:Ljava/util/List;

    new-instance v0, Lcom/android/settings/accelerateapps/AccelerateAppsController$CompareResolveInfo;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/accelerateapps/AccelerateAppsController$CompareResolveInfo;-><init>(Lcom/android/settings/accelerateapps/AccelerateAppsController;Landroid/content/pm/PackageManager;)V

    invoke-static {p2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_8
    return-void
.end method

.method public updateModeBySharePref(Landroid/content/Context;)V
    .locals 4

    const-string p0, "OptiFlex"

    const/4 v0, 0x0

    .line 133
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 134
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "optiflex"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v0

    .line 135
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v2, "optiflex_auto_selected"

    invoke-static {p1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v3, :cond_1

    move p1, v3

    goto :goto_1

    :cond_1
    move p1, v0

    :goto_1
    if-eqz v1, :cond_3

    if-eqz p1, :cond_2

    const/4 v0, 0x2

    goto :goto_2

    :cond_2
    move v0, v3

    .line 144
    :cond_3
    :goto_2
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "OptiFlexMode"

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.class Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$UninstallAndDisableButtonListener;
.super Ljava/lang/Object;
.source "AppButtonsPreferenceController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UninstallAndDisableButtonListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;


# direct methods
.method private constructor <init>(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)V
    .locals 0

    .line 246
    iput-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$UninstallAndDisableButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$1;)V
    .locals 0

    .line 246
    invoke-direct {p0, p1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$UninstallAndDisableButtonListener;-><init>(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 250
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$UninstallAndDisableButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {p1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->access$000(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 251
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sessionId: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$UninstallAndDisableButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {v0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->access$100(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " uninstalling "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$UninstallAndDisableButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    iget-object v0, v0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " with uid "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$UninstallAndDisableButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    .line 252
    invoke-static {v0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->access$200(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", reached from auto revoke"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AppButtonsPrefCtl"

    .line 251
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x110

    .line 253
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$UninstallAndDisableButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {p1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->access$100(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)J

    move-result-wide v2

    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$UninstallAndDisableButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {p1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->access$200(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)I

    move-result v4

    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$UninstallAndDisableButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    iget-object v5, p1, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPackageName:Ljava/lang/String;

    const/4 v6, 0x5

    invoke-static/range {v1 .. v6}, Lcom/android/settings/core/instrumentation/AsusSettingsStatsLog;->write(IJILjava/lang/String;I)V

    .line 257
    :cond_0
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$UninstallAndDisableButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    iget-object v0, p1, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    if-eqz v0, :cond_e

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_1

    goto/16 :goto_4

    .line 259
    :cond_1
    iget-boolean v0, p1, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mEnableTwinApps:Z

    if-eqz v0, :cond_2

    iget v0, p1, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mTwinAppsId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 260
    invoke-static {p1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->access$300(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)I

    move-result p1

    if-ne v0, p1, :cond_2

    .line 261
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 262
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.asus.twinapps"

    const-string v2, "com.asus.twinapps.TwinAppsActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 264
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$UninstallAndDisableButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->access$400(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Lcom/android/settings/core/InstrumentedPreferenceFragment;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 266
    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_0
    return-void

    .line 273
    :cond_2
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$UninstallAndDisableButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    iget-object v0, p1, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 276
    iget-object v1, p1, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-nez v1, :cond_3

    return-void

    .line 277
    :cond_3
    invoke-static {p1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->access$500(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Landroid/app/admin/DevicePolicyManager;

    move-result-object p1

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$UninstallAndDisableButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    iget-object v1, v1, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 278
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$UninstallAndDisableButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {p1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->access$600(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)V

    .line 279
    new-instance p1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$UninstallAndDisableButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {v2}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->access$700(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Lcom/android/settings/SettingsActivity;

    move-result-object v2

    const-class v3, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;

    invoke-direct {p1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "android.app.extra.DEVICE_ADMIN_PACKAGE_NAME"

    .line 280
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 282
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$UninstallAndDisableButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {v0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->access$800(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$UninstallAndDisableButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {v2}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->access$700(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Lcom/android/settings/SettingsActivity;

    move-result-object v2

    const/16 v3, 0x369

    new-array v1, v1, [Landroid/util/Pair;

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 284
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$UninstallAndDisableButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {v0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->access$400(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Lcom/android/settings/core/InstrumentedPreferenceFragment;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$UninstallAndDisableButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->access$900(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)I

    move-result p0

    invoke-virtual {v0, p1, p0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    .line 287
    :cond_4
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$UninstallAndDisableButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    .line 288
    invoke-static {p1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->access$700(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Lcom/android/settings/SettingsActivity;

    move-result-object p1

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$UninstallAndDisableButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    .line 289
    invoke-static {v2}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->access$300(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)I

    move-result v2

    .line 288
    invoke-static {p1, v0, v2}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfUninstallBlocked(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p1

    .line 290
    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$UninstallAndDisableButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {v2}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->access$1000(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$UninstallAndDisableButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    .line 291
    invoke-static {v2}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->access$700(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Lcom/android/settings/SettingsActivity;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$UninstallAndDisableButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    .line 292
    invoke-static {v4}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->access$300(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)I

    move-result v4

    .line 291
    invoke-static {v2, v0, v4}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_1

    :cond_5
    move v2, v1

    goto :goto_2

    :cond_6
    :goto_1
    move v2, v3

    :goto_2
    if-eqz p1, :cond_7

    if-nez v2, :cond_7

    .line 294
    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$UninstallAndDisableButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {p0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->access$700(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Lcom/android/settings/SettingsActivity;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto/16 :goto_4

    .line 295
    :cond_7
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$UninstallAndDisableButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    iget-object v2, p1, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v4, 0x1

    if-eqz v5, :cond_c

    .line 296
    iget-boolean v2, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v2, :cond_a

    invoke-static {p1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->access$1100(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Z

    move-result p1

    if-nez p1, :cond_a

    .line 300
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$UninstallAndDisableButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {p1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->access$1200(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 302
    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$UninstallAndDisableButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {p0, v0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->access$1300(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;Ljava/lang/String;)V

    goto :goto_4

    .line 303
    :cond_8
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$UninstallAndDisableButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {p1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->access$1400(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$UninstallAndDisableButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {p1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->access$1500(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 307
    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$UninstallAndDisableButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {p0, v3}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->access$1600(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;I)V

    goto :goto_4

    .line 309
    :cond_9
    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$UninstallAndDisableButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {p0, v1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->access$1600(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;I)V

    goto :goto_4

    .line 312
    :cond_a
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$UninstallAndDisableButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {p1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->access$800(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$UninstallAndDisableButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    .line 313
    invoke-static {v0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->access$700(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Lcom/android/settings/SettingsActivity;

    move-result-object v0

    .line 314
    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$UninstallAndDisableButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    iget-object v2, v2, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v2, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v2, :cond_b

    const/16 v2, 0x36a

    goto :goto_3

    :cond_b
    const/16 v2, 0x36b

    :goto_3
    new-array v3, v1, [Landroid/util/Pair;

    .line 312
    invoke-virtual {p1, v0, v2, v3}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 317
    new-instance p1, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$DisableChangerRunnable;

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$UninstallAndDisableButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {v0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->access$1700(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$UninstallAndDisableButtonListener;->this$0:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p1, v0, v2, p0, v1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$DisableChangerRunnable;-><init>(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;Landroid/content/pm/PackageManager;Ljava/lang/String;I)V

    invoke-static {p1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    goto :goto_4

    :cond_c
    const/high16 p0, 0x800000

    and-int/2addr p0, v4

    if-nez p0, :cond_d

    .line 321
    invoke-virtual {p1, v0, v3, v1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->uninstallPkg(Ljava/lang/String;ZZ)V

    goto :goto_4

    .line 323
    :cond_d
    invoke-virtual {p1, v0, v1, v1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->uninstallPkg(Ljava/lang/String;ZZ)V

    :cond_e
    :goto_4
    return-void
.end method

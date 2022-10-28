.class public Lcom/android/settings/localbackup/LocalBackupFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "LocalBackupFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method public static isSuggestionComplete(Landroid/content/Context;)Z
    .locals 3

    .line 65
    invoke-static {p0}, Lcom/android/settings/Utils;->isSupportLocalBackup(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const-string v0, "suggestion_complete_pref"

    const/4 v2, 0x0

    .line 66
    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "open_local_backup"

    .line 67
    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-ne p0, v1, :cond_0

    return v1

    :cond_0
    return v2

    :cond_1
    return v1
.end method

.method private startLocalBackupSettings(Landroid/content/Context;)V
    .locals 4

    const-string v0, "open_local_backup"

    :try_start_0
    const-string v1, "suggestion_complete_pref"

    const/4 v2, 0x0

    .line 46
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 47
    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 48
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 50
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.futuredial.asuslocalbackup"

    const-string v3, "com.futuredial.asuslocalbackup.LauncherActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "launcher"

    const-string v2, "settings"

    .line 52
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.category.LAUNCHER"

    .line 53
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.action.MAIN"

    .line 54
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x20000000

    .line 55
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10000000

    .line 56
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 57
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 58
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "LocalBackupFragment"

    const-string p1, "Could not execute com.futuredial.asuslocalbackup"

    .line 60
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "LocalBackupFragment"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 25
    sget p0, Lcom/android/settings/R$xml;->local_backup_fragment:I

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 40
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/localbackup/LocalBackupFragment;->startLocalBackupSettings(Landroid/content/Context;)V

    return-void
.end method

.class public Lcom/android/settings/localbackup/LocalBackupPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "LocalBackupPreferenceController.java"


# static fields
.field private static final EXTRA_KEY_LAUNCHER:Ljava/lang/String; = "launcher"

.field private static final EXTRA_VALUE_LAUNCHER_SETTINGS:Ljava/lang/String; = "settings"

.field public static final KEY_LOCAL_BACKUP:Ljava/lang/String; = "toggle_local_backup"

.field private static final LOCAL_BACKUP_LAUNCHER:Ljava/lang/String; = "com.futuredial.asuslocalbackup.LauncherActivity"

.field private static final LOCAL_BACKUP_PACKAGE_NAME:Ljava/lang/String; = "com.futuredial.asuslocalbackup"

.field public static final PREF_OPEN_LOCAL_BACKUP:Ljava/lang/String; = "open_local_backup"

.field private static final TAG:Ljava/lang/String; = "LocalBackupPreferenceController"


# instance fields
.field private mLocalBackupPreferenceController:Landroidx/preference/Preference;

.field private mOnPlayToPreferenceClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "toggle_local_backup"

    .line 29
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 48
    new-instance p1, Lcom/android/settings/localbackup/LocalBackupPreferenceController$1;

    invoke-direct {p1, p0}, Lcom/android/settings/localbackup/LocalBackupPreferenceController$1;-><init>(Lcom/android/settings/localbackup/LocalBackupPreferenceController;)V

    iput-object p1, p0, Lcom/android/settings/localbackup/LocalBackupPreferenceController;->mOnPlayToPreferenceClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/localbackup/LocalBackupPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Landroid/content/Context;)V
    .locals 0

    .line 14
    invoke-static {p0}, Lcom/android/settings/localbackup/LocalBackupPreferenceController;->startLocalBackupSettings(Landroid/content/Context;)V

    return-void
.end method

.method private static startLocalBackupSettings(Landroid/content/Context;)V
    .locals 4

    const-string v0, "open_local_backup"

    :try_start_0
    const-string v1, "suggestion_complete_pref"

    const/4 v2, 0x0

    .line 58
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 59
    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 60
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 62
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.futuredial.asuslocalbackup"

    const-string v3, "com.futuredial.asuslocalbackup.LauncherActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "launcher"

    const-string v2, "settings"

    .line 64
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.category.LAUNCHER"

    .line 65
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.action.MAIN"

    .line 66
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x20000000

    .line 67
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10000000

    .line 68
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 69
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "LocalBackupPreferenceController"

    const-string v0, "Could not execute com.futuredial.asuslocalbackup"

    .line 71
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 34
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "toggle_local_backup"

    .line 35
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/localbackup/LocalBackupPreferenceController;->mLocalBackupPreferenceController:Landroidx/preference/Preference;

    if-eqz p1, :cond_0

    .line 37
    iget-object p0, p0, Lcom/android/settings/localbackup/LocalBackupPreferenceController;->mOnPlayToPreferenceClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 43
    invoke-static {}, Lcom/android/settings/Utils;->isPicaso()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/Utils;->isSupportLocalBackup(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

    :goto_0
    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/settings/slices/SliceBackgroundWorker;",
            ">;"
        }
    .end annotation

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isCopyableSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isCopyableSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method

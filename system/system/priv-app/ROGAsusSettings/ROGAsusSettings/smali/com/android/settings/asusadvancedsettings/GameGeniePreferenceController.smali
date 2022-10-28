.class public Lcom/android/settings/asusadvancedsettings/GameGeniePreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "GameGeniePreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final ACTION_START_GAMEGENIE_SETTINGS:Ljava/lang/String; = "com.asus.gamewidget.action.SETTINGS"

.field private static final EXTRA_KEY_GAMEGENIE_SETTINGS_CALLFROM:Ljava/lang/String; = "callfrom"

.field private static final EXTRA_VALUE_GAMEGENIE_SETTINGS_CALLFROM_ASUSSETTINGS:Ljava/lang/String; = "AsusSettings"

.field private static final GAMEGENIE_PACKAGE_NAME:Ljava/lang/String; = "com.asus.gamewidget"

.field public static final KEY_GAME_GENIE_SETTINGS:Ljava/lang/String; = "game_toolbar_app_settings"

.field private static final TAG:Ljava/lang/String; = "GameGeniePreferenceController"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGameGeniePreference:Landroidx/preference/Preference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 49
    iput-object p1, p0, Lcom/android/settings/asusadvancedsettings/GameGeniePreferenceController;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static isGameGenieExist(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    .line 79
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "com.asus.gamewidget"

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 80
    iget-boolean v1, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/2addr p0, v2

    if-eqz p0, :cond_0

    move v0, v2

    :cond_0
    return v0

    :catch_0
    move-exception p0

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Game genie apk not found exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "GameGeniePreferenceController"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private static startGameGenieSettings(Landroid/content/Context;)V
    .locals 3

    .line 89
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.asus.gamewidget.action.SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "callfrom"

    const-string v2, "AsusSettings"

    .line 91
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.asus.gamewidget"

    .line 92
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 94
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Game genie activity not found exception : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "GameGeniePreferenceController"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

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

    .line 64
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "game_toolbar_app_settings"

    .line 65
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/asusadvancedsettings/GameGeniePreferenceController;->mGameGeniePreference:Landroidx/preference/Preference;

    if-eqz p1, :cond_0

    .line 67
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 54
    invoke-static {}, Lcom/android/settings/Utils;->isPicaso()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/asusadvancedsettings/GameGeniePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/asusadvancedsettings/GameGeniePreferenceController;->isGameGenieExist(Landroid/content/Context;)Z

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

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "game_toolbar_app_settings"

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

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/settings/asusadvancedsettings/GameGeniePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/asusadvancedsettings/GameGeniePreferenceController;->startGameGenieSettings(Landroid/content/Context;)V

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method

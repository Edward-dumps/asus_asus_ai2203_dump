.class public Lcom/android/settings/asusadvancedsettings/TwinAppsPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "TwinAppsPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# static fields
.field static final DEBUG:Z = false

.field public static final KEY_TWINAPPS_PREF:Ljava/lang/String; = "twinapps_settings"

.field private static final TAG:Ljava/lang/String; = "TwinAppsPreferenceController"

.field private static final TWINAPPS_PACKAGE_NAME:Ljava/lang/String; = "com.asus.twinapps"

.field private static final TWIN_APP:Landroid/content/ComponentName;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mTwinAppsPreference:Landroidx/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 39
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.asus.twinapps"

    const-string v2, "com.asus.twinapps.TwinAppsActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/asusadvancedsettings/TwinAppsPreferenceController;->TWIN_APP:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 50
    iput-object p1, p0, Lcom/android/settings/asusadvancedsettings/TwinAppsPreferenceController;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static isTwinAppsEnabled(Landroid/content/Context;)Z
    .locals 4

    .line 92
    invoke-static {p0}, Lcom/android/settings/asusadvancedsettings/TwinAppsPreferenceController;->isTwinAppsSupport(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 94
    invoke-static {}, Landroid/os/Process;->getTotalMemory()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide/high16 v2, 0x41e4000000000000L    # 2.68435456E9

    cmpl-double p0, v0, v2

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isTwinAppsSupport(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    .line 106
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "com.asus.twinapps"

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 107
    iget-boolean p0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mobile manager apk not found exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "TwinAppsPreferenceController"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private static startTwinApp(Landroid/content/Context;)V
    .locals 2

    .line 80
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 81
    sget-object v1, Lcom/android/settings/asusadvancedsettings/TwinAppsPreferenceController;->TWIN_APP:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 84
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 86
    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

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

    .line 66
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "twinapps_settings"

    .line 67
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/asusadvancedsettings/TwinAppsPreferenceController;->mTwinAppsPreference:Landroidx/preference/Preference;

    if-eqz p1, :cond_0

    .line 69
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 56
    invoke-static {}, Lcom/android/settings/Utils;->isPicaso()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/asusadvancedsettings/TwinAppsPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/asusadvancedsettings/TwinAppsPreferenceController;->isTwinAppsSupport(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/asusadvancedsettings/TwinAppsPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/asusadvancedsettings/TwinAppsPreferenceController;->isTwinAppsEnabled(Landroid/content/Context;)Z

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

    const-string p0, "twinapps_settings"

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

    .line 75
    iget-object p0, p0, Lcom/android/settings/asusadvancedsettings/TwinAppsPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/asusadvancedsettings/TwinAppsPreferenceController;->startTwinApp(Landroid/content/Context;)V

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method

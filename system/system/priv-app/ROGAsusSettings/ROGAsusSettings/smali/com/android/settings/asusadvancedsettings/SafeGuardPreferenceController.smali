.class public Lcom/android/settings/asusadvancedsettings/SafeGuardPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "SafeGuardPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# static fields
.field public static final KEY_SAFEGUARD_PREF:Ljava/lang/String; = "toggle_safeguard"

.field private static final SAFE_GUARD_CLASS_NAME_VER_2:Ljava/lang/String; = "com.asus.emergencyhelp.PersonalSecurityListActivity"

.field private static final SAFE_GUARD_CLASS_NAME_VER_3:Ljava/lang/String; = "com.asus.emergencyhelp.sos.CallActivity"

.field private static final SAFE_GUARD_PACKAGE_NAME:Ljava/lang/String; = "com.asus.emergencyhelp"

.field private static final TAG:Ljava/lang/String; = "SafeGuardPreferenceController"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSaveGuardPreference:Landroidx/preference/Preference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 53
    iput-object p1, p0, Lcom/android/settings/asusadvancedsettings/SafeGuardPreferenceController;->mContext:Landroid/content/Context;

    return-void
.end method

.method private static getSafeGuardClassName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 121
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.asus.emergencyhelp"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 122
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "2"

    .line 129
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "com.asus.emergencyhelp.sos.CallActivity"

    goto :goto_1

    :cond_1
    :goto_0
    const-string p0, "com.asus.emergencyhelp.PersonalSecurityListActivity"

    :goto_1
    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "SafeGuardPreferenceController"

    const-string v1, "getSafeGuardVersionName: "

    .line 124
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static hasEmergencyHelp(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    .line 85
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "com.asus.emergencyhelp"

    .line 86
    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 89
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean p0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x1

    return p0

    :catch_0
    return v0
.end method

.method private static startSafeGuard(Landroid/content/Context;)V
    .locals 3

    const-string v0, "com.asus.emergencyhelp"

    .line 100
    :try_start_0
    invoke-static {p0}, Lcom/android/settings/asusadvancedsettings/SafeGuardPreferenceController;->getSafeGuardClassName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v0, "SafeGuard fail to start"

    const/4 v1, 0x0

    .line 102
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    .line 106
    :cond_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 108
    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 109
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 111
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "SafeGuardPreferenceController"

    const-string v1, "startSafeGuard: "

    .line 113
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

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

    .line 69
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "toggle_safeguard"

    .line 70
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/asusadvancedsettings/SafeGuardPreferenceController;->mSaveGuardPreference:Landroidx/preference/Preference;

    if-eqz p1, :cond_0

    .line 72
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    const/4 p0, 0x3

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

    const-string p0, "toggle_safeguard"

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

    .line 78
    iget-object p0, p0, Lcom/android/settings/asusadvancedsettings/SafeGuardPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/asusadvancedsettings/SafeGuardPreferenceController;->startSafeGuard(Landroid/content/Context;)V

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method

.class public abstract Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "DefaultAppPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field protected final mPackageManager:Landroid/content/pm/PackageManager;

.field protected mUserId:I

.field protected final mUserManager:Landroid/os/UserManager;


# direct methods
.method public static synthetic $r8$lambda$cVcZr407j6FGUYUMllpMiSbOHgo(Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;Landroid/content/Intent;Lcom/android/settings/widget/GearPreference;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;->lambda$mayUpdateGearIcon$0(Landroid/content/Intent;Lcom/android/settings/widget/GearPreference;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 51
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v0, "user"

    .line 53
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;->mUserManager:Landroid/os/UserManager;

    .line 54
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    iput p1, p0, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;->mUserId:I

    return-void
.end method

.method private synthetic lambda$mayUpdateGearIcon$0(Landroid/content/Intent;Lcom/android/settings/widget/GearPreference;)V
    .locals 0

    .line 93
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private mayUpdateGearIcon(Lcom/android/settingslib/applications/DefaultAppInfo;Landroidx/preference/Preference;)V
    .locals 1

    .line 87
    instance-of v0, p2, Lcom/android/settings/widget/GearPreference;

    if-nez v0, :cond_0

    return-void

    .line 90
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;->getSettingIntent(Lcom/android/settingslib/applications/DefaultAppInfo;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 92
    check-cast p2, Lcom/android/settings/widget/GearPreference;

    new-instance v0, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;Landroid/content/Intent;)V

    invoke-virtual {p2, v0}, Lcom/android/settings/widget/GearPreference;->setOnGearClickListener(Lcom/android/settings/widget/GearPreference$OnGearClickListener;)V

    goto :goto_0

    .line 95
    :cond_1
    check-cast p2, Lcom/android/settings/widget/GearPreference;

    const/4 p0, 0x0

    invoke-virtual {p2, p0}, Lcom/android/settings/widget/GearPreference;->setOnGearClickListener(Lcom/android/settings/widget/GearPreference$OnGearClickListener;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getDefaultAppIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 121
    invoke-virtual {p0}, Lcom/android/settingslib/core/AbstractPreferenceController;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 124
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;->getDefaultAppInfo()Lcom/android/settingslib/applications/DefaultAppInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 126
    invoke-virtual {p0}, Lcom/android/settingslib/applications/DefaultAppInfo;->loadIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v1
.end method

.method protected abstract getDefaultAppInfo()Lcom/android/settingslib/applications/DefaultAppInfo;
.end method

.method public getDefaultAppLabel()Ljava/lang/CharSequence;
    .locals 2

    .line 132
    invoke-virtual {p0}, Lcom/android/settingslib/core/AbstractPreferenceController;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 135
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;->getDefaultAppInfo()Lcom/android/settingslib/applications/DefaultAppInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 137
    invoke-virtual {p0}, Lcom/android/settingslib/applications/DefaultAppInfo;->loadLabel()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v1
.end method

.method protected abstract getSettingIntent(Lcom/android/settingslib/applications/DefaultAppInfo;)Landroid/content/Intent;
.end method

.method protected showLabelAsTitle()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected startActivity(Landroid/content/Intent;)V
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 4

    .line 59
    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;->getDefaultAppInfo()Lcom/android/settingslib/applications/DefaultAppInfo;

    move-result-object v0

    .line 60
    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;->getDefaultAppLabel()Ljava/lang/CharSequence;

    move-result-object v1

    .line 61
    instance-of v2, p1, Lcom/android/settingslib/widget/TwoTargetPreference;

    if-eqz v2, :cond_0

    .line 65
    move-object v2, p1

    check-cast v2, Lcom/android/settingslib/widget/TwoTargetPreference;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/settingslib/widget/TwoTargetPreference;->setIconSize(I)V

    .line 67
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;->showLabelAsTitle()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 69
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 71
    :cond_1
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 73
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;->getDefaultAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->getSafeIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_2
    const-string v1, "DefaultAppPrefControl"

    const-string v2, "No default app"

    .line 75
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;->showLabelAsTitle()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 77
    sget v1, Lcom/android/settings/R$string;->app_list_preference_none:I

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setTitle(I)V

    goto :goto_1

    .line 79
    :cond_3
    sget v1, Lcom/android/settings/R$string;->app_list_preference_none:I

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setSummary(I)V

    :goto_1
    const/4 v1, 0x0

    .line 81
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 83
    :goto_2
    invoke-direct {p0, v0, p1}, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;->mayUpdateGearIcon(Lcom/android/settingslib/applications/DefaultAppInfo;Landroidx/preference/Preference;)V

    return-void
.end method

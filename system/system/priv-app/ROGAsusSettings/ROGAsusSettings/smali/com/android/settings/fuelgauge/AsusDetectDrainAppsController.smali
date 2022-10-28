.class public Lcom/android/settings/fuelgauge/AsusDetectDrainAppsController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "AsusDetectDrainAppsController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 72
    iput-object p1, p0, Lcom/android/settings/fuelgauge/AsusDetectDrainAppsController;->mContext:Landroid/content/Context;

    return-void
.end method

.method private createExplicitFromImplicitIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 p1, 0x0

    .line 48
    invoke-virtual {p0, p2, p1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 51
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 56
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    .line 57
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p1, p0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 58
    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 59
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 65
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "detect_drain_apps"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 95
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 96
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AsusDetectDrainAppsController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "detect_drain_apps"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 99
    new-instance p2, Landroid/content/Intent;

    const-string v0, "com.asus.powersaver.detectdrainapps"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AsusDetectDrainAppsController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p2}, Lcom/android/settings/fuelgauge/AsusDetectDrainAppsController;->createExplicitFromImplicitIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p2

    .line 101
    check-cast p1, Lcom/android/settings/widget/PrimarySwitchPreference;

    invoke-virtual {p1}, Lcom/android/settings/widget/PrimarySwitchPreference;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 102
    iget-object p0, p0, Lcom/android/settings/fuelgauge/AsusDetectDrainAppsController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 104
    :cond_0
    iget-object p0, p0, Lcom/android/settings/fuelgauge/AsusDetectDrainAppsController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    .line 87
    iget-object p0, p0, Lcom/android/settings/fuelgauge/AsusDetectDrainAppsController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "detect_drain_apps"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    .line 90
    check-cast p1, Lcom/android/settings/widget/PrimarySwitchPreference;

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1, v1}, Lcom/android/settings/widget/PrimarySwitchPreference;->setChecked(Z)V

    return-void
.end method

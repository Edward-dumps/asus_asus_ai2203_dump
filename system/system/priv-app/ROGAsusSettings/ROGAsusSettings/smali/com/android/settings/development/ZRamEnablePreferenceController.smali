.class public Lcom/android/settings/development/ZRamEnablePreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "ZRamEnablePreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private mPreference:Landroidx/preference/SwitchPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private getDefaultValue()Ljava/lang/String;
    .locals 1

    .line 126
    invoke-direct {p0}, Lcom/android/settings/development/ZRamEnablePreferenceController;->getMemorySizeInGB()I

    move-result p0

    const/16 v0, 0x10

    if-lt p0, v0, :cond_0

    const-string p0, "0"

    return-object p0

    :cond_0
    const-string p0, "1"

    return-object p0
.end method

.method private getMemorySizeInGB()I
    .locals 3

    const-string p0, "ZRamEnablePreferenceController"

    :try_start_0
    const-string v0, "ro.vendor.memsize"

    .line 113
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "GB"

    const-string v2, ""

    .line 114
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 115
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NumberFormatException"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 119
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "memory Size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 64
    invoke-super {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 65
    invoke-virtual {p0}, Lcom/android/settings/development/ZRamEnablePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreference;

    iput-object p1, p0, Lcom/android/settings/development/ZRamEnablePreferenceController;->mPreference:Landroidx/preference/SwitchPreference;

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "enable_zram"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 1

    .line 101
    invoke-direct {p0}, Lcom/android/settings/development/ZRamEnablePreferenceController;->getMemorySizeInGB()I

    move-result p0

    const/16 v0, 0xc

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected onDeveloperOptionsSwitchDisabled()V
    .locals 2

    .line 88
    invoke-super {p0}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsSwitchDisabled()V

    :try_start_0
    const-string v0, "persist.vendor.zram.enable"

    const-string v1, "0"

    .line 91
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 93
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZRamEnablePreferenceController"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :goto_0
    iget-object p0, p0, Lcom/android/settings/development/ZRamEnablePreferenceController;->mPreference:Landroidx/preference/SwitchPreference;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 70
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    :try_start_0
    const-string p1, "persist.vendor.zram.enable"

    if-eqz p0, :cond_0

    const-string p0, "1"

    goto :goto_0

    :cond_0
    const-string p0, "0"

    .line 72
    :goto_0
    invoke-static {p1, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 74
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ZRamEnablePreferenceController"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 82
    invoke-direct {p0}, Lcom/android/settings/development/ZRamEnablePreferenceController;->getDefaultValue()Ljava/lang/String;

    move-result-object p1

    const-string v0, "persist.vendor.zram.enable"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 83
    iget-object p0, p0, Lcom/android/settings/development/ZRamEnablePreferenceController;->mPreference:Landroidx/preference/SwitchPreference;

    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

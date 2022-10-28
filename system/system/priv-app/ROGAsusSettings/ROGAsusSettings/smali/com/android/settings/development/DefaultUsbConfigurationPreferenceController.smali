.class public Lcom/android/settings/development/DefaultUsbConfigurationPreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "DefaultUsbConfigurationPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private mPreference:Lcom/android/settingslib/RestrictedPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 50
    invoke-super {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 51
    invoke-virtual {p0}, Lcom/android/settings/development/DefaultUsbConfigurationPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/RestrictedPreference;

    iput-object p1, p0, Lcom/android/settings/development/DefaultUsbConfigurationPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "default_usb_configuration"

    return-object p0
.end method

.method protected onDeveloperOptionsSwitchEnabled()V
    .locals 2

    .line 62
    invoke-super {p0}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsSwitchEnabled()V

    .line 63
    iget-object v0, p0, Lcom/android/settings/development/DefaultUsbConfigurationPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 64
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {p0, v1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfUsbDataSignalingIsDisabled(Landroid/content/Context;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p0

    .line 63
    invoke-virtual {v0, p0}, Lcom/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 56
    iget-object p1, p0, Lcom/android/settings/development/DefaultUsbConfigurationPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 57
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfUsbDataSignalingIsDisabled(Landroid/content/Context;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p0

    .line 56
    invoke-virtual {p1, p0}, Lcom/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    return-void
.end method

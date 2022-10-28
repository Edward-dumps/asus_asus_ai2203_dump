.class public Lcom/android/settings/biometrics/fingerprint/AsusUnlockSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AsusUnlockSettings.java"

# interfaces
.implements Lcom/asus/commonresx/widget/OnMainSwitchChangeListener;


# instance fields
.field private WAKEUP_ENABLE_DEFAULT:Z

.field private mSwitch:Landroid/widget/Switch;

.field private mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

.field private mWakeupDevice:Landroidx/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 23
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const-string v0, "ro.hardware.fp_position"

    .line 32
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "back"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusUnlockSettings;->WAKEUP_ENABLE_DEFAULT:Z

    return-void
.end method

.method private handleMainSwitchStateChanged()V
    .locals 3

    .line 90
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "unlock_device_with_fingerprint"

    const/4 v2, 0x1

    .line 89
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 91
    :goto_0
    invoke-direct {p0, v2}, Lcom/android/settings/biometrics/fingerprint/AsusUnlockSettings;->setMainSwitchChecked(Z)V

    .line 92
    invoke-direct {p0, v2}, Lcom/android/settings/biometrics/fingerprint/AsusUnlockSettings;->updateSubPreferenceState(Z)V

    return-void
.end method

.method private setMainSwitchChecked(Z)V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusUnlockSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setCheckedOnOff(Z)V

    .line 97
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusUnlockSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 98
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/AsusUnlockSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method private updateSubPreferenceState(Z)V
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusUnlockSettings;->mWakeupDevice:Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 120
    iget-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusUnlockSettings;->WAKEUP_ENABLE_DEFAULT:Z

    const-string v1, "persist.asus.fp.wakeup"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 121
    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint/AsusUnlockSettings;->mWakeupDevice:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v1, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 122
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/AsusUnlockSettings;->mWakeupDevice:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method private writeDB(Ljava/lang/String;Z)V
    .locals 0

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x31

    return p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 41
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 42
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    invoke-virtual {p1}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusUnlockSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    .line 43
    invoke-virtual {p1}, Lcom/asus/commonresx/widget/MainSwitchBar;->getSwitch()Landroid/widget/Switch;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusUnlockSettings;->mSwitch:Landroid/widget/Switch;

    .line 44
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/AsusUnlockSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0}, Lcom/asus/commonresx/widget/MainSwitchBar;->show()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 49
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 50
    sget p1, Lcom/android/settings/R$xml;->asus_fingerprint_unlock_settings:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    const-string/jumbo p1, "wakeup_with_fingerprint"

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusUnlockSettings;->mWakeupDevice:Landroidx/preference/CheckBoxPreference;

    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .line 71
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onDestroyView()V

    .line 72
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/AsusUnlockSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0}, Lcom/asus/commonresx/widget/MainSwitchBar;->hide()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 84
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    .line 85
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusUnlockSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0, p0}, Lcom/asus/commonresx/widget/MainSwitchBar;->removeOnSwitchChangeListener(Lcom/asus/commonresx/widget/OnMainSwitchChangeListener;)V

    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 1

    .line 58
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "wakeup_with_fingerprint"

    .line 59
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 60
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusUnlockSettings;->mWakeupDevice:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1}, Landroidx/preference/Preference;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 61
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/AsusUnlockSettings;->mWakeupDevice:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    const-string p1, "persist.asus.fp.wakeup"

    invoke-static {p1, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onResume()V
    .locals 1

    .line 77
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 78
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/AsusUnlockSettings;->handleMainSwitchStateChanged()V

    .line 79
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusUnlockSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0, p0}, Lcom/asus/commonresx/widget/MainSwitchBar;->addOnSwitchChangeListener(Lcom/asus/commonresx/widget/OnMainSwitchChangeListener;)V

    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 0

    const-string p1, "unlock_device_with_fingerprint"

    .line 109
    invoke-direct {p0, p1, p2}, Lcom/android/settings/biometrics/fingerprint/AsusUnlockSettings;->writeDB(Ljava/lang/String;Z)V

    .line 110
    invoke-direct {p0, p2}, Lcom/android/settings/biometrics/fingerprint/AsusUnlockSettings;->updateSubPreferenceState(Z)V

    .line 111
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/AsusUnlockSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0, p2}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setCheckedOnOff(Z)V

    return-void
.end method

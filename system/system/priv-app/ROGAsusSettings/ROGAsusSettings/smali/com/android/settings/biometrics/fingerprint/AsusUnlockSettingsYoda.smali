.class public Lcom/android/settings/biometrics/fingerprint/AsusUnlockSettingsYoda;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AsusUnlockSettingsYoda.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;
.implements Lcom/asus/commonresx/widget/OnMainSwitchChangeListener;


# instance fields
.field private WAKEUP_ENABLE_DEFAULT:Z

.field private mHideButton:Landroid/widget/RadioButton;

.field private mHideContainer:Landroid/widget/LinearLayout;

.field private mLayoutPref:Lcom/android/settingslib/widget/LayoutPreference;

.field private mRadioGroup:Landroid/widget/RadioGroup;

.field private mShowButton:Landroid/widget/RadioButton;

.field private mShowContainer:Landroid/widget/LinearLayout;

.field private mSwitch:Landroid/widget/Switch;

.field private mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

.field private mWakeupCategory:Landroidx/preference/PreferenceGroup;

.field private mWakeupDevice:Landroidx/preference/SwitchPreference;

.field private mWakeupLiftPhone:Landroidx/preference/CheckBoxPreference;

.field private mWakeupTapScreen:Landroidx/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x1

    .line 57
    iput-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusUnlockSettingsYoda;->WAKEUP_ENABLE_DEFAULT:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/biometrics/fingerprint/AsusUnlockSettingsYoda;)Landroid/widget/RadioButton;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/AsusUnlockSettingsYoda;->mShowButton:Landroid/widget/RadioButton;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/biometrics/fingerprint/AsusUnlockSettingsYoda;)Landroid/widget/RadioButton;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/AsusUnlockSettingsYoda;->mHideButton:Landroid/widget/RadioButton;

    return-object p0
.end method

.method public static disableWakeUp(Landroid/content/Context;)V
    .locals 1

    const/4 p0, 0x0

    .line 230
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    const-string v0, "persist.vendor.asus.fp.wakeup"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "AsusUnlockSettingsYoda"

    const-string v0, "persist.vendor.asus.fp.wakeup disableWakeUp "

    .line 231
    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private handleMainSwitchStateChanged()V
    .locals 3

    .line 174
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "unlock_device_with_fingerprint"

    const/4 v2, 0x1

    .line 173
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 175
    :goto_0
    invoke-direct {p0, v2}, Lcom/android/settings/biometrics/fingerprint/AsusUnlockSettingsYoda;->setMainSwitchChecked(Z)V

    .line 176
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/AsusUnlockSettingsYoda;->updateSubPreferenceState()V

    return-void
.end method

.method private setMainSwitchChecked(Z)V
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusUnlockSettingsYoda;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setCheckedOnOff(Z)V

    .line 181
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusUnlockSettingsYoda;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 182
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/AsusUnlockSettingsYoda;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method private updateRadioGroup(Z)V
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusUnlockSettingsYoda;->mShowButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 284
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusUnlockSettingsYoda;->mHideButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 285
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusUnlockSettingsYoda;->mShowContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 286
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/AsusUnlockSettingsYoda;->mHideContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    return-void
.end method

.method private updateSubPreferenceState()V
    .locals 7

    .line 243
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusUnlockSettingsYoda;->mWakeupDevice:Landroidx/preference/SwitchPreference;

    if-eqz v0, :cond_c

    .line 245
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "unlock_device_with_fingerprint"

    const/4 v2, 0x1

    .line 244
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 246
    :goto_0
    iget-object v3, p0, Lcom/android/settings/biometrics/fingerprint/AsusUnlockSettingsYoda;->mWakeupCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v3, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 250
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "unlock_device_wakeup_with_fingerprint"

    .line 249
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    .line 252
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "fod_indicator_enable"

    .line 251
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_2

    move v4, v2

    goto :goto_2

    :cond_2
    move v4, v1

    .line 253
    :goto_2
    iget-object v5, p0, Lcom/android/settings/biometrics/fingerprint/AsusUnlockSettingsYoda;->mWakeupDevice:Landroidx/preference/SwitchPreference;

    invoke-virtual {v5, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    if-eqz v4, :cond_3

    .line 255
    iget-object v5, p0, Lcom/android/settings/biometrics/fingerprint/AsusUnlockSettingsYoda;->mRadioGroup:Landroid/widget/RadioGroup;

    sget v6, Lcom/android/settings/R$id;->radiobtn_inicator_show:I

    invoke-virtual {v5, v6}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_3

    .line 256
    :cond_3
    iget-object v5, p0, Lcom/android/settings/biometrics/fingerprint/AsusUnlockSettingsYoda;->mRadioGroup:Landroid/widget/RadioGroup;

    sget v6, Lcom/android/settings/R$id;->radiobtn_inicator_hide:I

    invoke-virtual {v5, v6}, Landroid/widget/RadioGroup;->check(I)V

    :goto_3
    if-eqz v0, :cond_4

    if-eqz v3, :cond_4

    move v0, v2

    goto :goto_4

    :cond_4
    move v0, v1

    .line 258
    :goto_4
    invoke-direct {p0, v0}, Lcom/android/settings/biometrics/fingerprint/AsusUnlockSettingsYoda;->updateRadioGroup(Z)V

    .line 260
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusUnlockSettingsYoda;->mWakeupLiftPhone:Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_6

    if-eqz v3, :cond_5

    if-eqz v4, :cond_5

    move v5, v2

    goto :goto_5

    :cond_5
    move v5, v1

    :goto_5
    invoke-virtual {v0, v5}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 261
    :cond_6
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusUnlockSettingsYoda;->mWakeupTapScreen:Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_8

    if-eqz v3, :cond_7

    if-eqz v4, :cond_7

    move v3, v2

    goto :goto_6

    :cond_7
    move v3, v1

    :goto_6
    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 263
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "wakeup_lift_phone"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_9

    move v0, v2

    goto :goto_7

    :cond_9
    move v0, v1

    .line 265
    :goto_7
    iget-object v3, p0, Lcom/android/settings/biometrics/fingerprint/AsusUnlockSettingsYoda;->mWakeupLiftPhone:Landroidx/preference/CheckBoxPreference;

    if-eqz v3, :cond_a

    invoke-virtual {v3, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 267
    :cond_a
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "wakeup_tap_screen"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_8

    :cond_b
    move v2, v1

    .line 269
    :goto_8
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/AsusUnlockSettingsYoda;->mWakeupTapScreen:Landroidx/preference/CheckBoxPreference;

    if-eqz p0, :cond_c

    invoke-virtual {p0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_c
    return-void
.end method

.method public static updateWakeUpSystemProperty(Landroid/content/Context;)V
    .locals 6

    .line 215
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "unlock_device_with_fingerprint"

    const/4 v2, 0x1

    .line 214
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 217
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v3, "unlock_device_wakeup_with_fingerprint"

    .line 216
    invoke-static {p0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_1

    move p0, v2

    goto :goto_1

    :cond_1
    move p0, v1

    .line 218
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unlock_device_with_fingerprint is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AsusUnlockSettingsYoda"

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unlock_device_wakeup_with_fingerprint is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "persist.vendor.asus.fp.wakeup set to "

    const-string v5, "persist.vendor.asus.fp.wakeup"

    if-eqz v0, :cond_2

    if-eqz p0, :cond_2

    .line 221
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 224
    :cond_2
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method public static updateWakeUpSystemProperty(Landroid/content/Context;I)V
    .locals 1

    .line 204
    invoke-static {p0}, Lcom/android/settings/Utils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v0

    .line 205
    invoke-virtual {v0, p1}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    if-eqz p1, :cond_1

    .line 206
    invoke-static {p0}, Lcom/android/settings/biometrics/fingerprint/AsusUnlockSettingsYoda;->updateWakeUpSystemProperty(Landroid/content/Context;)V

    goto :goto_1

    .line 208
    :cond_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    const-string p1, "persist.vendor.asus.fp.wakeup"

    invoke-static {p1, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "persist.vendor.asus.fp.wakeup set to "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AsusUnlockSettingsYoda"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private writeDB(Ljava/lang/String;Z)V
    .locals 0

    .line 200
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

    .line 74
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 75
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    invoke-virtual {p1}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusUnlockSettingsYoda;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    .line 76
    invoke-virtual {p1}, Lcom/asus/commonresx/widget/MainSwitchBar;->getSwitch()Landroid/widget/Switch;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusUnlockSettingsYoda;->mSwitch:Landroid/widget/Switch;

    .line 77
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/AsusUnlockSettingsYoda;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0}, Lcom/asus/commonresx/widget/MainSwitchBar;->show()V

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 1

    .line 236
    sget p1, Lcom/android/settings/R$id;->radiobtn_inicator_show:I

    const/4 v0, 0x1

    if-ne p2, p1, :cond_0

    goto :goto_0

    .line 237
    :cond_0
    sget p1, Lcom/android/settings/R$id;->radiobtn_inicator_hide:I

    if-ne p2, p1, :cond_1

    const/4 v0, 0x0

    .line 238
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "fod_indicator_enable"

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 239
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/AsusUnlockSettingsYoda;->updateSubPreferenceState()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 82
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 83
    sget p1, Lcom/android/settings/R$xml;->asus_fingerprint_unlock_settings_yoda:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 84
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "category_wakeup"

    .line 85
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceGroup;

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusUnlockSettingsYoda;->mWakeupCategory:Landroidx/preference/PreferenceGroup;

    const-string/jumbo v0, "wakeup_with_fingerprint"

    .line 88
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreference;

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusUnlockSettingsYoda;->mWakeupDevice:Landroidx/preference/SwitchPreference;

    .line 90
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusUnlockSettingsYoda;->mWakeupCategory:Landroidx/preference/PreferenceGroup;

    const-string/jumbo v0, "wakeup_lift_phone"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusUnlockSettingsYoda;->mWakeupLiftPhone:Landroidx/preference/CheckBoxPreference;

    .line 92
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusUnlockSettingsYoda;->mWakeupCategory:Landroidx/preference/PreferenceGroup;

    const-string/jumbo v0, "wakeup_tap_screen"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusUnlockSettingsYoda;->mWakeupTapScreen:Landroidx/preference/CheckBoxPreference;

    .line 96
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusUnlockSettingsYoda;->mWakeupCategory:Landroidx/preference/PreferenceGroup;

    const-string v0, "fod_indicator_enable"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusUnlockSettingsYoda;->mLayoutPref:Lcom/android/settingslib/widget/LayoutPreference;

    .line 97
    sget v0, Lcom/android/settings/R$id;->radiobtn_group:I

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioGroup;

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusUnlockSettingsYoda;->mRadioGroup:Landroid/widget/RadioGroup;

    .line 98
    invoke-virtual {p1, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 99
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusUnlockSettingsYoda;->mLayoutPref:Lcom/android/settingslib/widget/LayoutPreference;

    sget v0, Lcom/android/settings/R$id;->radiobtn_inicator_show:I

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusUnlockSettingsYoda;->mShowButton:Landroid/widget/RadioButton;

    .line 100
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusUnlockSettingsYoda;->mLayoutPref:Lcom/android/settingslib/widget/LayoutPreference;

    sget v0, Lcom/android/settings/R$id;->radiobtn_inicator_hide:I

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusUnlockSettingsYoda;->mHideButton:Landroid/widget/RadioButton;

    .line 101
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusUnlockSettingsYoda;->mLayoutPref:Lcom/android/settingslib/widget/LayoutPreference;

    sget v0, Lcom/android/settings/R$id;->linear_inicator_show:I

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusUnlockSettingsYoda;->mShowContainer:Landroid/widget/LinearLayout;

    .line 102
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusUnlockSettingsYoda;->mLayoutPref:Lcom/android/settingslib/widget/LayoutPreference;

    sget v0, Lcom/android/settings/R$id;->linear_inicator_hide:I

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusUnlockSettingsYoda;->mHideContainer:Landroid/widget/LinearLayout;

    .line 103
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusUnlockSettingsYoda;->mShowContainer:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/android/settings/biometrics/fingerprint/AsusUnlockSettingsYoda$1;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/fingerprint/AsusUnlockSettingsYoda$1;-><init>(Lcom/android/settings/biometrics/fingerprint/AsusUnlockSettingsYoda;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusUnlockSettingsYoda;->mHideContainer:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/android/settings/biometrics/fingerprint/AsusUnlockSettingsYoda$2;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/fingerprint/AsusUnlockSettingsYoda$2;-><init>(Lcom/android/settings/biometrics/fingerprint/AsusUnlockSettingsYoda;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .line 155
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onDestroyView()V

    .line 156
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/AsusUnlockSettingsYoda;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0}, Lcom/asus/commonresx/widget/MainSwitchBar;->hide()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 168
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    .line 169
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusUnlockSettingsYoda;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0, p0}, Lcom/asus/commonresx/widget/MainSwitchBar;->removeOnSwitchChangeListener(Lcom/asus/commonresx/widget/OnMainSwitchChangeListener;)V

    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 120
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "wakeup_with_fingerprint"

    .line 121
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 122
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusUnlockSettingsYoda;->mWakeupDevice:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1}, Landroidx/preference/Preference;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusUnlockSettingsYoda;->mWakeupDevice:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    const-string v2, "unlock_device_wakeup_with_fingerprint"

    invoke-static {p1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 125
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/AsusUnlockSettingsYoda;->updateSubPreferenceState()V

    .line 126
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/biometrics/fingerprint/AsusUnlockSettingsYoda;->updateWakeUpSystemProperty(Landroid/content/Context;)V

    :cond_0
    return v1

    :cond_1
    const-string/jumbo v0, "wakeup_lift_phone"

    .line 131
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 132
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusUnlockSettingsYoda;->mWakeupLiftPhone:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1}, Landroidx/preference/Preference;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 133
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 134
    iget-object v2, p0, Lcom/android/settings/biometrics/fingerprint/AsusUnlockSettingsYoda;->mWakeupLiftPhone:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    .line 133
    invoke-static {p1, v0, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 135
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/AsusUnlockSettingsYoda;->updateSubPreferenceState()V

    .line 136
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/biometrics/fingerprint/AsusUnlockSettingsYoda;->updateWakeUpSystemProperty(Landroid/content/Context;)V

    :cond_2
    return v1

    :cond_3
    const-string/jumbo v0, "wakeup_tap_screen"

    .line 141
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 142
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusUnlockSettingsYoda;->mWakeupTapScreen:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1}, Landroidx/preference/Preference;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 143
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 144
    iget-object v2, p0, Lcom/android/settings/biometrics/fingerprint/AsusUnlockSettingsYoda;->mWakeupTapScreen:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    .line 143
    invoke-static {p1, v0, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 145
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/AsusUnlockSettingsYoda;->updateSubPreferenceState()V

    .line 146
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/biometrics/fingerprint/AsusUnlockSettingsYoda;->updateWakeUpSystemProperty(Landroid/content/Context;)V

    :cond_4
    return v1

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method public onResume()V
    .locals 1

    .line 161
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 162
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/AsusUnlockSettingsYoda;->handleMainSwitchStateChanged()V

    .line 163
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusUnlockSettingsYoda;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0, p0}, Lcom/asus/commonresx/widget/MainSwitchBar;->addOnSwitchChangeListener(Lcom/asus/commonresx/widget/OnMainSwitchChangeListener;)V

    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 0

    const-string p1, "unlock_device_with_fingerprint"

    .line 193
    invoke-direct {p0, p1, p2}, Lcom/android/settings/biometrics/fingerprint/AsusUnlockSettingsYoda;->writeDB(Ljava/lang/String;Z)V

    .line 194
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/AsusUnlockSettingsYoda;->updateSubPreferenceState()V

    .line 195
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/biometrics/fingerprint/AsusUnlockSettingsYoda;->updateWakeUpSystemProperty(Landroid/content/Context;)V

    .line 196
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/AsusUnlockSettingsYoda;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0, p2}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setCheckedOnOff(Z)V

    return-void
.end method

.class public Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizard;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AccessibilitySettingsForSetupWizard.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mDisplayMagnificationPreference:Landroidx/preference/Preference;

.field private mScreenReaderPreference:Lcom/android/settingslib/RestrictedPreference;

.field private mSelectToSpeakPreference:Lcom/android/settingslib/RestrictedPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private static configureMagnificationPreferenceIfNeeded(Landroidx/preference/Preference;)V
    .locals 2

    .line 206
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 207
    const-class v1, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragmentForSetupWizard;

    .line 208
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 207
    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p0}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    .line 211
    invoke-static {p0, v0}, Lcom/android/settings/accessibility/MagnificationGesturesPreferenceController;->populateMagnificationGesturesPreferenceExtras(Landroid/os/Bundle;Landroid/content/Context;)V

    return-void
.end method

.method private findService(Ljava/lang/String;Ljava/lang/String;)Landroid/accessibilityservice/AccessibilityServiceInfo;
    .locals 3

    .line 153
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const-class v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/accessibility/AccessibilityManager;

    .line 155
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object p0

    .line 156
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 157
    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 158
    iget-object v2, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 159
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private updateAccessibilityServicePreference(Lcom/android/settingslib/RestrictedPreference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 169
    invoke-direct {p0, p2, p3}, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizard;->findService(Ljava/lang/String;Ljava/lang/String;)Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object p2

    if-nez p2, :cond_0

    .line 171
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    return-void

    .line 175
    :cond_0
    invoke-virtual {p2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object p3

    iget-object p3, p3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 179
    invoke-virtual {p2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 180
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 181
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object p3, p3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, p3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 184
    invoke-static {p2}, Lcom/android/settings/accessibility/AccessibilityUtil;->getAccessibilityServiceFragmentType(Landroid/accessibilityservice/AccessibilityServiceInfo;)I

    move-result p3

    if-nez p3, :cond_1

    .line 185
    invoke-virtual {p1, p4}, Landroidx/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 189
    :cond_1
    invoke-virtual {p1}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object p3

    const-string p4, "component_name"

    .line 190
    invoke-virtual {p3, p4, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 193
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string p4, "preference_key"

    .line 192
    invoke-virtual {p3, p4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "title"

    .line 194
    invoke-virtual {p3, p1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object p1

    const-string p4, "summary"

    .line 197
    invoke-virtual {p3, p4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-virtual {p2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getAnimatedImageRes()I

    move-result p1

    const-string p4, "animated_image_res"

    invoke-virtual {p3, p4, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 201
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->loadHtmlDescription(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "html_description"

    .line 202
    invoke-virtual {p3, p1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x16f

    return p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 132
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 133
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 108
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 109
    sget p1, Lcom/android/settings/R$xml;->accessibility_settings_for_setup_wizard:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    const-string p1, "screen_magnification_preference"

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizard;->mDisplayMagnificationPreference:Landroidx/preference/Preference;

    const-string p1, "screen_reader_preference"

    .line 112
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/RestrictedPreference;

    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizard;->mScreenReaderPreference:Lcom/android/settingslib/RestrictedPreference;

    const-string p1, "select_to_speak_preference"

    .line 113
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/RestrictedPreference;

    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizard;->mSelectToSpeakPreference:Lcom/android/settingslib/RestrictedPreference;

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 143
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizard;->mDisplayMagnificationPreference:Landroidx/preference/Preference;

    if-ne v0, p1, :cond_0

    .line 144
    invoke-virtual {v0}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "from_suw"

    .line 145
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 148
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .locals 4

    .line 118
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 119
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizard;->mScreenReaderPreference:Lcom/android/settingslib/RestrictedPreference;

    const-class v1, Lcom/android/settings/accessibility/VolumeShortcutToggleScreenReaderPreferenceFragmentForSetupWizard;

    .line 121
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google.android.marvin.talkback"

    const-string v3, "com.google.android.marvin.talkback.TalkBackService"

    .line 119
    invoke-direct {p0, v0, v2, v3, v1}, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizard;->updateAccessibilityServicePreference(Lcom/android/settingslib/RestrictedPreference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizard;->mSelectToSpeakPreference:Lcom/android/settingslib/RestrictedPreference;

    const-class v1, Lcom/android/settings/accessibility/VolumeShortcutToggleSelectToSpeakPreferenceFragmentForSetupWizard;

    .line 124
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "com.google.android.accessibility.selecttospeak.SelectToSpeakService"

    .line 122
    invoke-direct {p0, v0, v2, v3, v1}, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizard;->updateAccessibilityServicePreference(Lcom/android/settingslib/RestrictedPreference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizard;->mDisplayMagnificationPreference:Landroidx/preference/Preference;

    invoke-static {v0}, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizard;->configureMagnificationPreferenceIfNeeded(Landroidx/preference/Preference;)V

    .line 127
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/asus/commonresx/AsusResxUtils;->setStatusBar(Landroid/app/Activity;)V

    return-void
.end method

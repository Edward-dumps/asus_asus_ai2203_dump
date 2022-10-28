.class public Lcom/android/settings/accessibility/TurnScreenDarkerFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "TurnScreenDarkerFragment.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mReduceBrightColorsPreference:Landroidx/preference/Preference;

.field private mToggleInversionPreference:Landroidx/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 108
    new-instance v0, Lcom/android/settings/search/BaseSearchIndexProvider;

    sget v1, Lcom/android/settings/R$xml;->accessibility_turn_screen_darker:I

    invoke-direct {v0, v1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    sput-object v0, Lcom/android/settings/accessibility/TurnScreenDarkerFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method private initializeAllPreferences()V
    .locals 1

    const-string v0, "toggle_inversion_preference"

    .line 81
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/TurnScreenDarkerFragment;->mToggleInversionPreference:Landroidx/preference/Preference;

    const-string v0, "reduce_bright_colors_preference"

    .line 85
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/TurnScreenDarkerFragment;->mReduceBrightColorsPreference:Landroidx/preference/Preference;

    return-void
.end method

.method private updateSystemPreferences()V
    .locals 4

    .line 92
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "experimental_category"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    .line 94
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/display/ColorDisplayManager;->isColorTransformAccelerated(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/android/settings/accessibility/TurnScreenDarkerFragment;->mToggleInversionPreference:Landroidx/preference/Preference;

    .line 96
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "accessibility_display_inversion_enabled"

    .line 95
    invoke-static {v2, v3}, Lcom/android/settings/accessibility/AccessibilityUtil;->getSummary(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 97
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 101
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accessibility/TurnScreenDarkerFragment;->mToggleInversionPreference:Landroidx/preference/Preference;

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 102
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accessibility/TurnScreenDarkerFragment;->mReduceBrightColorsPreference:Landroidx/preference/Preference;

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 103
    iget-object v1, p0, Lcom/android/settings/accessibility/TurnScreenDarkerFragment;->mToggleInversionPreference:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 104
    iget-object p0, p0, Lcom/android/settings/accessibility/TurnScreenDarkerFragment;->mReduceBrightColorsPreference:Landroidx/preference/Preference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :goto_0
    return-void
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "TurnDarkerFragment"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x74a

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 71
    sget p0, Lcom/android/settings/R$xml;->accessibility_turn_screen_darker:I

    return p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 65
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 66
    const-class p1, Lcom/android/settings/display/DarkUIPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/display/DarkUIPreferenceController;

    invoke-virtual {p1, p0}, Lcom/android/settings/display/DarkUIPreferenceController;->setParentFragment(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 58
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-direct {p0}, Lcom/android/settings/accessibility/TurnScreenDarkerFragment;->initializeAllPreferences()V

    .line 60
    invoke-direct {p0}, Lcom/android/settings/accessibility/TurnScreenDarkerFragment;->updateSystemPreferences()V

    return-void
.end method

.class public Lcom/android/settings/accessibility/TextAndDisplayFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "TextAndDisplayFragment.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mDisplayDaltonizerPreferenceScreen:Landroidx/preference/Preference;

.field private mToggleDisableAnimationsPreference:Landroidx/preference/SwitchPreference;

.field private mToggleLargePointerIconPreference:Landroidx/preference/SwitchPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 106
    new-instance v0, Lcom/android/settings/search/BaseSearchIndexProvider;

    sget v1, Lcom/android/settings/R$xml;->accessibility_text_and_display:I

    invoke-direct {v0, v1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    sput-object v0, Lcom/android/settings/accessibility/TextAndDisplayFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method private initializeAllPreferences()V
    .locals 1

    const-string v0, "daltonizer_preference"

    .line 75
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/TextAndDisplayFragment;->mDisplayDaltonizerPreferenceScreen:Landroidx/preference/Preference;

    const-string v0, "toggle_disable_animations"

    .line 78
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/TextAndDisplayFragment;->mToggleDisableAnimationsPreference:Landroidx/preference/SwitchPreference;

    const-string v0, "toggle_large_pointer_icon"

    .line 81
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/TextAndDisplayFragment;->mToggleLargePointerIconPreference:Landroidx/preference/SwitchPreference;

    return-void
.end method

.method private updateSystemPreferences()V
    .locals 4

    .line 88
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "experimental_category"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    .line 90
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/display/ColorDisplayManager;->isColorTransformAccelerated(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    iget-object v1, p0, Lcom/android/settings/accessibility/TextAndDisplayFragment;->mDisplayDaltonizerPreferenceScreen:Landroidx/preference/Preference;

    .line 92
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "accessibility_display_daltonizer_enabled"

    .line 91
    invoke-static {v2, v3}, Lcom/android/settings/accessibility/AccessibilityUtil;->getSummary(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 93
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 97
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accessibility/TextAndDisplayFragment;->mDisplayDaltonizerPreferenceScreen:Landroidx/preference/Preference;

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 98
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accessibility/TextAndDisplayFragment;->mToggleDisableAnimationsPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 99
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accessibility/TextAndDisplayFragment;->mToggleLargePointerIconPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 100
    iget-object v1, p0, Lcom/android/settings/accessibility/TextAndDisplayFragment;->mDisplayDaltonizerPreferenceScreen:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 101
    iget-object v1, p0, Lcom/android/settings/accessibility/TextAndDisplayFragment;->mToggleDisableAnimationsPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 102
    iget-object p0, p0, Lcom/android/settings/accessibility/TextAndDisplayFragment;->mToggleLargePointerIconPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :goto_0
    return-void
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "TextAndDisplayFragment"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x742

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 65
    sget p0, Lcom/android/settings/R$xml;->accessibility_text_and_display:I

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 58
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-direct {p0}, Lcom/android/settings/accessibility/TextAndDisplayFragment;->initializeAllPreferences()V

    .line 60
    invoke-direct {p0}, Lcom/android/settings/accessibility/TextAndDisplayFragment;->updateSystemPreferences()V

    return-void
.end method

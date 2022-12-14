.class public Lcom/android/settings/accessibility/ToggleReduceBrightColorsPreferenceFragment;
.super Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;
.source "ToggleReduceBrightColorsPreferenceFragment.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

.field private final mHandler:Landroid/os/Handler;

.field private mRbcIntensityPreferenceController:Lcom/android/settings/accessibility/ReduceBrightColorsIntensityPreferenceController;

.field private mRbcPersistencePreferenceController:Lcom/android/settings/accessibility/ReduceBrightColorsPersistencePreferenceController;

.field private mSettingsContentObserver:Lcom/android/settings/accessibility/SettingsContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 181
    new-instance v0, Lcom/android/settings/accessibility/ToggleReduceBrightColorsPreferenceFragment$2;

    sget v1, Lcom/android/settings/R$xml;->reduce_bright_colors_settings:I

    invoke-direct {v0, v1}, Lcom/android/settings/accessibility/ToggleReduceBrightColorsPreferenceFragment$2;-><init>(I)V

    sput-object v0, Lcom/android/settings/accessibility/ToggleReduceBrightColorsPreferenceFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;-><init>()V

    .line 53
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleReduceBrightColorsPreferenceFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private updateFooterPreference()V
    .locals 2

    .line 106
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->reduce_bright_colors_about_title:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 107
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mFooterPreferenceController:Lcom/android/settings/accessibility/AccessibilityFooterPreferenceController;

    invoke-virtual {v1, v0}, Lcom/android/settings/accessibility/AccessibilityFooterPreferenceController;->setIntroductionTitle(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mFooterPreferenceController:Lcom/android/settings/accessibility/AccessibilityFooterPreferenceController;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settings/accessibility/AccessibilityFooterPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method private updateGeneralCategoryOrder()V
    .locals 3

    const-string v0, "general_categories"

    .line 94
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    const-string v1, "rbc_intensity"

    .line 95
    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/widget/SeekBarPreference;

    .line 96
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 97
    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mShortcutPreference:Lcom/android/settings/accessibility/ShortcutPreference;

    invoke-virtual {v2}, Landroidx/preference/Preference;->getOrder()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setOrder(I)V

    .line 98
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    const-string v1, "rbc_persist"

    .line 99
    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/SwitchPreference;

    .line 100
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 101
    iget-object p0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mShortcutPreference:Lcom/android/settings/accessibility/ShortcutPreference;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getOrder()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOrder(I)V

    .line 102
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method


# virtual methods
.method public getHelpResource()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x73d

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 142
    sget p0, Lcom/android/settings/R$xml;->reduce_bright_colors_settings:I

    return p0
.end method

.method getUserShortcutTypes()I
    .locals 1

    .line 165
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mComponentName:Landroid/content/ComponentName;

    invoke-static {v0, p0}, Lcom/android/settings/accessibility/AccessibilityUtil;->getUserShortcutTypesFromSettings(Landroid/content/Context;Landroid/content/ComponentName;)I

    move-result p0

    return p0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .line 63
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "android.resource"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$raw;->extra_dim_banner:I

    .line 65
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mImageUri:Landroid/net/Uri;

    .line 67
    sget-object v0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->REDUCE_BRIGHT_COLORS_COMPONENT_NAME:Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mComponentName:Landroid/content/ComponentName;

    .line 68
    sget v0, Lcom/android/settings/R$string;->reduce_bright_colors_preference_title:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mPackageName:Ljava/lang/CharSequence;

    .line 69
    sget v0, Lcom/android/settings/R$string;->reduce_bright_colors_preference_subtitle:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mHtmlDescription:Ljava/lang/CharSequence;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const-string v1, "reduce_bright_colors_activated"

    .line 71
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    new-instance v1, Lcom/android/settings/accessibility/ReduceBrightColorsIntensityPreferenceController;

    .line 73
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "rbc_intensity"

    invoke-direct {v1, v2, v3}, Lcom/android/settings/accessibility/ReduceBrightColorsIntensityPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/accessibility/ToggleReduceBrightColorsPreferenceFragment;->mRbcIntensityPreferenceController:Lcom/android/settings/accessibility/ReduceBrightColorsIntensityPreferenceController;

    .line 74
    new-instance v1, Lcom/android/settings/accessibility/ReduceBrightColorsPersistencePreferenceController;

    .line 75
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "rbc_persist"

    invoke-direct {v1, v2, v3}, Lcom/android/settings/accessibility/ReduceBrightColorsPersistencePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/accessibility/ToggleReduceBrightColorsPreferenceFragment;->mRbcPersistencePreferenceController:Lcom/android/settings/accessibility/ReduceBrightColorsPersistencePreferenceController;

    .line 76
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleReduceBrightColorsPreferenceFragment;->mRbcIntensityPreferenceController:Lcom/android/settings/accessibility/ReduceBrightColorsIntensityPreferenceController;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/accessibility/ReduceBrightColorsIntensityPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 77
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleReduceBrightColorsPreferenceFragment;->mRbcPersistencePreferenceController:Lcom/android/settings/accessibility/ReduceBrightColorsPersistencePreferenceController;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 78
    new-instance v1, Lcom/android/settings/accessibility/ToggleReduceBrightColorsPreferenceFragment$1;

    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleReduceBrightColorsPreferenceFragment;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2, v0}, Lcom/android/settings/accessibility/ToggleReduceBrightColorsPreferenceFragment$1;-><init>(Lcom/android/settings/accessibility/ToggleReduceBrightColorsPreferenceFragment;Landroid/os/Handler;Ljava/util/List;)V

    iput-object v1, p0, Lcom/android/settings/accessibility/ToggleReduceBrightColorsPreferenceFragment;->mSettingsContentObserver:Lcom/android/settings/accessibility/SettingsContentObserver;

    .line 84
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/ColorDisplayManager;

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleReduceBrightColorsPreferenceFragment;->mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

    .line 85
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 87
    iget-object p2, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mToggleServiceSwitchPreference:Lcom/android/settings/widget/SettingsMainSwitchPreference;

    sget p3, Lcom/android/settings/R$string;->reduce_bright_colors_switch_title:I

    invoke-virtual {p2, p3}, Landroidx/preference/Preference;->setTitle(I)V

    .line 88
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleReduceBrightColorsPreferenceFragment;->updateGeneralCategoryOrder()V

    .line 89
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleReduceBrightColorsPreferenceFragment;->updateFooterPreference()V

    return-object p1
.end method

.method public onPause()V
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleReduceBrightColorsPreferenceFragment;->mSettingsContentObserver:Lcom/android/settings/accessibility/SettingsContentObserver;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/SettingsContentObserver;->unregister(Landroid/content/ContentResolver;)V

    .line 126
    invoke-super {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onPause()V

    return-void
.end method

.method protected onPreferenceToggled(Ljava/lang/String;Z)V
    .locals 0

    .line 147
    iget-object p1, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mComponentName:Landroid/content/ComponentName;

    invoke-static {p1, p2}, Lcom/android/settings/accessibility/AccessibilityStatsLogUtils;->logAccessibilityServiceEnabled(Landroid/content/ComponentName;Z)V

    .line 148
    iget-object p0, p0, Lcom/android/settings/accessibility/ToggleReduceBrightColorsPreferenceFragment;->mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {p0, p2}, Landroid/hardware/display/ColorDisplayManager;->setReduceBrightColorsActivated(Z)Z

    return-void
.end method

.method protected onRemoveSwitchPreferenceToggleSwitch()V
    .locals 1

    .line 153
    invoke-super {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onRemoveSwitchPreferenceToggleSwitch()V

    .line 154
    iget-object p0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mToggleServiceSwitchPreference:Lcom/android/settings/widget/SettingsMainSwitchPreference;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 118
    invoke-super {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onResume()V

    .line 119
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleReduceBrightColorsPreferenceFragment;->updateSwitchBarToggleSwitch()V

    .line 120
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleReduceBrightColorsPreferenceFragment;->mSettingsContentObserver:Lcom/android/settings/accessibility/SettingsContentObserver;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settings/accessibility/SettingsContentObserver;->register(Landroid/content/ContentResolver;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 113
    invoke-super {p0, p1, p2}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method protected updateSwitchBarToggleSwitch()V
    .locals 4

    .line 171
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleReduceBrightColorsPreferenceFragment;->mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/ColorDisplayManager;->isReduceBrightColorsActivated()Z

    move-result v0

    .line 172
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleReduceBrightColorsPreferenceFragment;->mRbcIntensityPreferenceController:Lcom/android/settings/accessibility/ReduceBrightColorsIntensityPreferenceController;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    const-string v3, "rbc_intensity"

    .line 173
    invoke-virtual {v2, v3}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    .line 172
    invoke-virtual {v1, v2}, Lcom/android/settings/accessibility/ReduceBrightColorsIntensityPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 174
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleReduceBrightColorsPreferenceFragment;->mRbcPersistencePreferenceController:Lcom/android/settings/accessibility/ReduceBrightColorsPersistencePreferenceController;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    const-string v3, "rbc_persist"

    .line 175
    invoke-virtual {v2, v3}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    .line 174
    invoke-virtual {v1, v2}, Lcom/android/settings/accessibility/ReduceBrightColorsPersistencePreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 176
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mToggleServiceSwitchPreference:Lcom/android/settings/widget/SettingsMainSwitchPreference;

    invoke-virtual {v1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    if-eq v1, v0, :cond_0

    .line 177
    iget-object p0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mToggleServiceSwitchPreference:Lcom/android/settings/widget/SettingsMainSwitchPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/SettingsMainSwitchPreference;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method protected updateToggleServiceTitle(Lcom/android/settings/widget/SettingsMainSwitchPreference;)V
    .locals 0

    .line 160
    sget p0, Lcom/android/settings/R$string;->reduce_bright_colors_preference_title:I

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setTitle(I)V

    return-void
.end method

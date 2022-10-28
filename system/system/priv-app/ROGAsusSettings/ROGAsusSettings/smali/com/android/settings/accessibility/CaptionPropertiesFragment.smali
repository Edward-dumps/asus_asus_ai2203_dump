.class public Lcom/android/settings/accessibility/CaptionPropertiesFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "CaptionPropertiesFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/asus/commonresx/widget/OnMainSwitchChangeListener;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

.field private mFontSizeValuesArray:[F

.field private mMoreOptions:Landroidx/preference/Preference;

.field private final mPreferenceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mSwitch:Lcom/android/settings/widget/SettingsMainSwitchPreference;

.field private mTextAppearance:Landroidx/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 149
    new-instance v0, Lcom/android/settings/search/BaseSearchIndexProvider;

    sget v1, Lcom/android/settings/R$xml;->captioning_settings:I

    invoke-direct {v0, v1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    sput-object v0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreferenceList:Ljava/util/List;

    return-void
.end method

.method private geTextAppearanceSummary(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1

    .line 140
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$array;->captioning_font_size_selector_summaries:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    .line 143
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->getFontScale()F

    move-result v0

    .line 144
    iget-object p0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mFontSizeValuesArray:[F

    invoke-static {p0, v0}, Lcom/google/common/primitives/Floats;->indexOf([FF)I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    .line 146
    :cond_0
    aget-object p0, p1, p0

    return-object p0
.end method

.method private initFontSizeValuesArray()V
    .locals 5

    .line 109
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$array;->captioning_font_size_selector_values:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 111
    array-length v1, v0

    .line 112
    new-array v2, v1, [F

    iput-object v2, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mFontSizeValuesArray:[F

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 114
    iget-object v3, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mFontSizeValuesArray:[F

    aget-object v4, v0, v2

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private initializeAllPreferences()V
    .locals 2

    const-string v0, "captioning_preference_switch"

    .line 94
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/SettingsMainSwitchPreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mSwitch:Lcom/android/settings/widget/SettingsMainSwitchPreference;

    const-string v0, "captioning_caption_appearance"

    .line 95
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mTextAppearance:Landroidx/preference/Preference;

    const-string v0, "captioning_more_options"

    .line 96
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mMoreOptions:Landroidx/preference/Preference;

    .line 98
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreferenceList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mTextAppearance:Landroidx/preference/Preference;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreferenceList:Ljava/util/List;

    iget-object p0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mMoreOptions:Landroidx/preference/Preference;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private installUpdateListeners()V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mSwitch:Lcom/android/settings/widget/SettingsMainSwitchPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 104
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mSwitch:Lcom/android/settings/widget/SettingsMainSwitchPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SettingsMainSwitchPreference;->addOnSwitchChangeListener(Lcom/asus/commonresx/widget/OnMainSwitchChangeListener;)V

    return-void
.end method

.method private updateAllPreferences()V
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mSwitch:Lcom/android/settings/widget/SettingsMainSwitchPreference;

    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v1}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SettingsMainSwitchPreference;->setChecked(Z)V

    .line 120
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mTextAppearance:Landroidx/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->geTextAppearanceSummary(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getHelpResource()I
    .locals 0

    .line 136
    sget p0, Lcom/android/settings/R$string;->help_url_caption:I

    return p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "CaptionPropertiesFragment"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 85
    sget p0, Lcom/android/settings/R$xml;->captioning_settings:I

    return p0
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    .line 68
    invoke-super {p0, p1, p2}, Lcom/android/settings/dashboard/DashboardFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V

    const-string p1, "captioning"

    .line 70
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/CaptioningManager;

    iput-object p1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    .line 72
    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->initializeAllPreferences()V

    .line 73
    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->installUpdateListeners()V

    .line 74
    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->initFontSizeValuesArray()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 125
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 126
    iget-object p0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mSwitch:Lcom/android/settings/widget/SettingsMainSwitchPreference;

    if-ne p0, p1, :cond_0

    .line 128
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    const-string p1, "accessibility_captioning_enabled"

    .line 127
    invoke-static {v0, p1, p0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public onResume()V
    .locals 0

    .line 79
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 80
    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->updateAllPreferences()V

    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 0

    .line 154
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "accessibility_captioning_enabled"

    .line 155
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

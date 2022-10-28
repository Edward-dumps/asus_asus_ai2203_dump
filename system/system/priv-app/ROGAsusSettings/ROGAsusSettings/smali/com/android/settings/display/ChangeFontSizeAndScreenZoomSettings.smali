.class public Lcom/android/settings/display/ChangeFontSizeAndScreenZoomSettings;
.super Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;
.source "ChangeFontSizeAndScreenZoomSettings.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mDefaultDensity:I

.field private mValues_display:[I

.field private mValues_font:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 196
    new-instance v0, Lcom/android/settings/display/ChangeFontSizeAndScreenZoomSettings$1;

    invoke-direct {v0}, Lcom/android/settings/display/ChangeFontSizeAndScreenZoomSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/display/ChangeFontSizeAndScreenZoomSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;-><init>()V

    return-void
.end method

.method public static isSuggestionComplete(Landroid/content/Context;)Z
    .locals 2

    .line 205
    invoke-static {}, Lcom/android/settings/Utils;->isZenfone9()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isRog6()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string v0, "suggestion_complete_pref"

    const/4 v1, 0x0

    .line 207
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "toggle_font_size"

    .line 208
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method


# virtual methods
.method protected apply()V
    .locals 3

    .line 167
    iget-object v0, p0, Lcom/android/settings/display/ChangeFontSizeAndScreenZoomSettings;->mValues_display:[I

    iget v1, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;->mCurrentIndex_display:I

    aget v0, v0, v1

    .line 168
    iget v1, p0, Lcom/android/settings/display/ChangeFontSizeAndScreenZoomSettings;->mDefaultDensity:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 169
    invoke-static {v2}, Lcom/android/settingslib/display/DisplayDensityConfiguration;->clearForcedDisplayDensity(I)V

    goto :goto_0

    .line 171
    :cond_0
    invoke-static {v2, v0}, Lcom/android/settingslib/display/DisplayDensityConfiguration;->setForcedDisplayDensity(II)V

    .line 175
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 176
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "suggestion_complete_pref"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "toggle_font_size"

    .line 177
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_2

    .line 178
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 181
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 182
    iget-object v1, p0, Lcom/android/settings/display/ChangeFontSizeAndScreenZoomSettings;->mValues_font:[F

    iget p0, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;->mCurrentIndex_font:I

    aget p0, v1, p0

    const-string v1, "font_scale"

    invoke-static {v0, v1, p0}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    return-void
.end method

.method protected commit()V
    .locals 0

    return-void
.end method

.method protected createConfigForDisplay(Landroid/content/res/Configuration;I)Landroid/content/res/Configuration;
    .locals 1

    .line 142
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 143
    iget-object p0, p0, Lcom/android/settings/display/ChangeFontSizeAndScreenZoomSettings;->mValues_display:[I

    aget p0, p0, p2

    iput p0, v0, Landroid/content/res/Configuration;->densityDpi:I

    return-object v0
.end method

.method protected createConfigForFont(Landroid/content/res/Configuration;I)Landroid/content/res/Configuration;
    .locals 1

    .line 151
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 152
    iget-object p0, p0, Lcom/android/settings/display/ChangeFontSizeAndScreenZoomSettings;->mValues_font:[F

    aget p0, p0, p2

    iput p0, v0, Landroid/content/res/Configuration;->fontScale:F

    return-object v0
.end method

.method protected getActivityLayoutResId()I
    .locals 0

    .line 59
    sget p0, Lcom/android/settings/R$layout;->font_and_screen_zoom_activity:I

    return p0
.end method

.method public getHelpResource()I
    .locals 0

    .line 187
    sget p0, Lcom/android/settings/R$string;->help_url_display_size:I

    return p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x153

    return p0
.end method

.method protected getPreviewSampleResIds()[I
    .locals 3

    .line 64
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$bool;->config_enable_extra_screen_zoom_preview:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    new-array p0, p0, [I

    .line 66
    sget v2, Lcom/android/settings/R$layout;->screen_zoom_preview_post:I

    aput v2, p0, v0

    sget v0, Lcom/android/settings/R$layout;->screen_zoom_preview_2:I

    aput v0, p0, v1

    const/4 v0, 0x2

    sget v1, Lcom/android/settings/R$layout;->screen_zoom_preview_settings:I

    aput v1, p0, v0

    const/4 v0, 0x3

    sget v1, Lcom/android/settings/R$layout;->font_size_preview:I

    aput v1, p0, v0

    goto :goto_0

    :cond_0
    new-array p0, v1, [I

    .line 71
    sget v1, Lcom/android/settings/R$layout;->screen_zoom_preview_1:I

    aput v1, p0, v0

    :goto_0
    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 76
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 78
    new-instance p1, Lcom/android/settingslib/display/DisplayDensityUtils;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/settingslib/display/DisplayDensityUtils;-><init>(Landroid/content/Context;)V

    .line 79
    invoke-virtual {p1}, Lcom/android/settingslib/display/DisplayDensityUtils;->getCurrentIndex()I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    .line 84
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    const/4 v0, 0x1

    new-array v2, v0, [I

    aput p1, v2, v1

    .line 85
    iput-object v2, p0, Lcom/android/settings/display/ChangeFontSizeAndScreenZoomSettings;->mValues_display:[I

    new-array v0, v0, [Ljava/lang/String;

    .line 86
    sget v2, Lcom/android/settingslib/display/DisplayDensityUtils;->SUMMARY_DEFAULT:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;->mEntries_display:[Ljava/lang/String;

    .line 87
    iput v1, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;->mInitialDisplayIndex:I

    .line 88
    iput p1, p0, Lcom/android/settings/display/ChangeFontSizeAndScreenZoomSettings;->mDefaultDensity:I

    goto :goto_0

    .line 90
    :cond_0
    invoke-virtual {p1}, Lcom/android/settingslib/display/DisplayDensityUtils;->getValues()[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/display/ChangeFontSizeAndScreenZoomSettings;->mValues_display:[I

    .line 91
    invoke-virtual {p1}, Lcom/android/settingslib/display/DisplayDensityUtils;->getEntries()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;->mEntries_display:[Ljava/lang/String;

    .line 92
    iput v0, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;->mInitialDisplayIndex:I

    .line 93
    invoke-virtual {p1}, Lcom/android/settingslib/display/DisplayDensityUtils;->getDefaultDensity()I

    move-result p1

    iput p1, p0, Lcom/android/settings/display/ChangeFontSizeAndScreenZoomSettings;->mDefaultDensity:I

    .line 97
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 98
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 100
    sget v2, Lcom/android/settings/R$array;->asus_entries_font_size:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;->mEntries_font:[Ljava/lang/String;

    .line 101
    sget v2, Lcom/android/settings/R$array;->asus_entryvalues_font_size:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    const/high16 v2, 0x3f800000    # 1.0f

    const-string v3, "font_scale"

    .line 103
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    .line 104
    invoke-static {v0, p1}, Lcom/android/settings/display/ToggleFontSizePreferenceFragment;->fontSizeValueToIndex(F[Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;->mInitialFontIndex:I

    .line 105
    array-length v0, p1

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/settings/display/ChangeFontSizeAndScreenZoomSettings;->mValues_font:[F

    .line 106
    :goto_1
    array-length v0, p1

    if-ge v1, v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/android/settings/display/ChangeFontSizeAndScreenZoomSettings;->mValues_font:[F

    aget-object v2, p1, v1

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 123
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->asus_font_and_screen_title:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 128
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 129
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 131
    sget p2, Lcom/android/settings/R$id;->app_bar:I

    invoke-virtual {p0, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/asus/commonresx/widget/AsusResxAppBarLayout;

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 132
    invoke-virtual {p2, v0, p1, v1}, Lcom/asus/commonresx/widget/AsusResxAppBarLayout;->setPersistCollapsed(ZLandroid/view/View;Z)V

    .line 134
    check-cast p0, Lcom/android/settings/core/SettingsBaseActivity;

    invoke-virtual {p0}, Lcom/android/settings/core/SettingsBaseActivity;->removeFrameContentScrollingBehaviod()V

    :cond_0
    return-void
.end method

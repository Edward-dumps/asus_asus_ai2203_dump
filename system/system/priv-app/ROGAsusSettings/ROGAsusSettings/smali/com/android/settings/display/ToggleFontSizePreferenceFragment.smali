.class public Lcom/android/settings/display/ToggleFontSizePreferenceFragment;
.super Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;
.source "ToggleFontSizePreferenceFragment.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field private static sRecommendElder:I


# instance fields
.field private mValues:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 186
    new-instance v0, Lcom/android/settings/display/ToggleFontSizePreferenceFragment$1;

    invoke-direct {v0}, Lcom/android/settings/display/ToggleFontSizePreferenceFragment$1;-><init>()V

    sput-object v0, Lcom/android/settings/display/ToggleFontSizePreferenceFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;-><init>()V

    return-void
.end method

.method public static fontSizeValueToIndex(F[Ljava/lang/String;)I
    .locals 6

    const/4 v0, 0x0

    .line 146
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const/4 v1, 0x1

    move v2, v1

    .line 147
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 148
    aget-object v3, p1, v2

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    sub-float v4, v3, v0

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v4, v5

    add-float/2addr v0, v4

    cmpg-float v0, p0, v0

    if-gez v0, :cond_0

    sub-int/2addr v2, v1

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    move v0, v3

    goto :goto_0

    .line 154
    :cond_1
    array-length p0, p1

    sub-int/2addr p0, v1

    return p0
.end method

.method public static isSuggestionClosed(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "suggestion_complete_pref"

    const/4 v1, 0x0

    .line 182
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "font_size_suggestion_card_complete"

    .line 183
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static isSuggestionComplete(Landroid/content/Context;)Z
    .locals 3

    .line 162
    invoke-static {}, Lcom/android/settings/Utils;->isZenfone9()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isRog6()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "suggestion_complete_pref"

    const/4 v2, 0x0

    .line 164
    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "toggle_font_size"

    .line 165
    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_1

    .line 166
    sget p0, Lcom/android/settings/display/ToggleFontSizePreferenceFragment;->sRecommendElder:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    return v2

    :cond_1
    :goto_0
    return v1
.end method

.method public static setElder(I)V
    .locals 0

    .line 158
    sput p0, Lcom/android/settings/display/ToggleFontSizePreferenceFragment;->sRecommendElder:I

    return-void
.end method

.method public static setSuggestionClosed(Landroid/content/Context;Z)V
    .locals 2

    const-string v0, "suggestion_complete_pref"

    const/4 v1, 0x0

    .line 177
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 178
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "font_size_suggestion_card_complete"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method protected commit()V
    .locals 3

    .line 121
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 122
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "suggestion_complete_pref"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "toggle_font_size"

    .line 123
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    .line 124
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 127
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 128
    iget-object v1, p0, Lcom/android/settings/display/ToggleFontSizePreferenceFragment;->mValues:[F

    iget p0, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mCurrentIndex:I

    aget p0, v1, p0

    const-string v1, "font_scale"

    invoke-static {v0, v1, p0}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    return-void
.end method

.method protected createConfig(Landroid/content/res/Configuration;I)Landroid/content/res/Configuration;
    .locals 1

    .line 111
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 112
    iget-object p0, p0, Lcom/android/settings/display/ToggleFontSizePreferenceFragment;->mValues:[F

    aget p0, p0, p2

    iput p0, v0, Landroid/content/res/Configuration;->fontScale:F

    return-object v0
.end method

.method protected getActivityLayoutResId()I
    .locals 0

    .line 55
    sget p0, Lcom/android/settings/R$layout;->font_size_activity:I

    return p0
.end method

.method public getHelpResource()I
    .locals 0

    .line 133
    sget p0, Lcom/android/settings/R$string;->help_url_font_size:I

    return p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x154

    return p0
.end method

.method protected getPreviewSampleResIds()[I
    .locals 2

    const/4 p0, 0x1

    new-array p0, p0, [I

    .line 60
    sget v0, Lcom/android/settings/R$layout;->font_size_preview:I

    const/4 v1, 0x0

    aput v0, p0, v1

    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 65
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 67
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 68
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 70
    sget v1, Lcom/android/settings/R$array;->entries_font_size:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mEntries:[Ljava/lang/String;

    .line 71
    sget v1, Lcom/android/settings/R$array;->entryvalues_font_size:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    const-string v1, "font_scale"

    const/high16 v2, 0x3f800000    # 1.0f

    .line 73
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    .line 74
    invoke-static {v0, p1}, Lcom/android/settings/display/ToggleFontSizePreferenceFragment;->fontSizeValueToIndex(F[Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mInitialIndex:I

    .line 75
    array-length v0, p1

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/settings/display/ToggleFontSizePreferenceFragment;->mValues:[F

    const/4 v0, 0x0

    move v1, v0

    .line 76
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 77
    iget-object v2, p0, Lcom/android/settings/display/ToggleFontSizePreferenceFragment;->mValues:[F

    aget-object v3, p1, v1

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget v1, Lcom/android/settings/R$string;->title_font_size:I

    invoke-virtual {p1, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 81
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 83
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v1, ":settings:show_fragment_args"

    .line 84
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    const-string v1, "intent"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 86
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "suggestion_complete_pref"

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string p1, "toggle_font_size"

    .line 87
    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 88
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 96
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 97
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 99
    sget p2, Lcom/android/settings/R$id;->app_bar:I

    invoke-virtual {p0, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/asus/commonresx/widget/AsusResxAppBarLayout;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 102
    invoke-virtual {p2, v0, p1, v1}, Lcom/asus/commonresx/widget/AsusResxAppBarLayout;->setPersistCollapsed(ZLandroid/view/View;Z)V

    .line 103
    check-cast p0, Lcom/android/settings/core/SettingsBaseActivity;

    invoke-virtual {p0}, Lcom/android/settings/core/SettingsBaseActivity;->removeFrameContentScrollingBehaviod()V

    :cond_0
    return-void
.end method

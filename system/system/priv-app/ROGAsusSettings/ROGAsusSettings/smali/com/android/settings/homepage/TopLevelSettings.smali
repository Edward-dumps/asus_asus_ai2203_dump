.class public Lcom/android/settings/homepage/TopLevelSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "TopLevelSettings.java"

# interfaces
.implements Landroidx/preference/PreferenceFragmentCompat$OnPreferenceStartFragmentCallback;


# static fields
.field private static final ICON_HOMEPAGE_ZENUI:[I

.field private static final KEY_HOMEPAGE_ITEM:[Ljava/lang/String;

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "dashboard_tile_pref_com.google.android.apps.wellbeing.settings.TopLevelSettingsActivity"

    const-string v1, "dashboard_tile_pref_com.google.android.gms.app.settings.GoogleSettingsIALink"

    .line 47
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/homepage/TopLevelSettings;->KEY_HOMEPAGE_ITEM:[Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 53
    sget v1, Lcom/android/settings/R$drawable;->asus_ic_homepage_digital_wellbeing_zenui:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/android/settings/R$drawable;->asus_ic_homepage_google_zenui:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sput-object v0, Lcom/android/settings/homepage/TopLevelSettings;->ICON_HOMEPAGE_ZENUI:[I

    .line 175
    new-instance v0, Lcom/android/settings/homepage/TopLevelSettings$1;

    sget v1, Lcom/android/settings/R$xml;->top_level_settings:I

    invoke-direct {v0, v1}, Lcom/android/settings/homepage/TopLevelSettings$1;-><init>(I)V

    sput-object v0, Lcom/android/settings/homepage/TopLevelSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 58
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    .line 59
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "need_search_icon_in_action_bar"

    const/4 v2, 0x0

    .line 61
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 62
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-void
.end method

.method private updateHomepageIcon()V
    .locals 9

    .line 117
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 118
    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    .line 121
    invoke-virtual {v0, v3}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 124
    invoke-virtual {v4}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    move v6, v2

    .line 125
    :goto_1
    sget-object v7, Lcom/android/settings/homepage/TopLevelSettings;->KEY_HOMEPAGE_ITEM:[Ljava/lang/String;

    array-length v8, v7

    if-ge v6, v8, :cond_2

    .line 126
    aget-object v7, v7, v6

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 127
    invoke-virtual {p0, v6}, Lcom/android/settings/homepage/TopLevelSettings;->getHomepageIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 129
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->getHomepageIconColor(Landroid/content/Context;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 131
    :cond_0
    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public getCallbackFragment()Landroidx/fragment/app/Fragment;
    .locals 0

    return-object p0
.end method

.method public getHelpResource()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected getHomepageIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 140
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 141
    sget-object v0, Lcom/android/settings/homepage/TopLevelSettings;->ICON_HOMEPAGE_ZENUI:[I

    aget p1, v0, p1

    .line 142
    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "TopLevelSettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x23

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 67
    sget p0, Lcom/android/settings/R$xml;->top_level_settings:I

    return p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 82
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 83
    const-class p1, Lcom/android/settings/support/SupportPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/support/SupportPreferenceController;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/support/SupportPreferenceController;->setActivity(Landroid/app/Activity;)V

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 2

    .line 149
    invoke-super {p0, p1, p2}, Lcom/android/settings/dashboard/DashboardFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 155
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/Utils;->getHomepageIconColor(Landroid/content/Context;)I

    move-result p0

    .line 156
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_3

    .line 158
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 162
    :cond_1
    invoke-virtual {v1}, Landroidx/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 164
    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public onPreferenceStartFragment(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/Preference;)Z
    .locals 1

    .line 99
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    .line 100
    invoke-virtual {p2}, Landroidx/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 101
    invoke-virtual {p2}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 102
    instance-of p2, p1, Lcom/android/settingslib/core/instrumentation/Instrumentable;

    if-eqz p2, :cond_0

    .line 103
    check-cast p1, Lcom/android/settingslib/core/instrumentation/Instrumentable;

    invoke-interface {p1}, Lcom/android/settingslib/core/instrumentation/Instrumentable;->getMetricsCategory()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 102
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const/4 p1, -0x1

    .line 105
    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 106
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    const/4 p0, 0x1

    return p0
.end method

.method protected shouldForceRoundedIcon()Z
    .locals 1

    .line 171
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$bool;->config_force_rounded_icon_TopLevelSettings:I

    .line 172
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method protected updatePreferenceStates()V
    .locals 0

    .line 112
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->updatePreferenceStates()V

    .line 113
    invoke-direct {p0}, Lcom/android/settings/homepage/TopLevelSettings;->updateHomepageIcon()V

    return-void
.end method

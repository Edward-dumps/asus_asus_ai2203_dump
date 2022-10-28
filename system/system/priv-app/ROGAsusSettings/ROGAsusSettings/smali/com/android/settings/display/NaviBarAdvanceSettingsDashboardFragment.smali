.class public Lcom/android/settings/display/NaviBarAdvanceSettingsDashboardFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "NaviBarAdvanceSettingsDashboardFragment.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;


# instance fields
.field public final RECENT_APPS_KEY_PREF_KEY:Ljava/lang/String;

.field private mRecentApps:Landroidx/preference/ListPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 96
    new-instance v0, Lcom/android/settings/display/NaviBarAdvanceSettingsDashboardFragment$1;

    invoke-direct {v0}, Lcom/android/settings/display/NaviBarAdvanceSettingsDashboardFragment$1;-><init>()V

    sput-object v0, Lcom/android/settings/display/NaviBarAdvanceSettingsDashboardFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    const-string v0, "recent_apps_key_pref_key"

    .line 41
    iput-object v0, p0, Lcom/android/settings/display/NaviBarAdvanceSettingsDashboardFragment;->RECENT_APPS_KEY_PREF_KEY:Ljava/lang/String;

    return-void
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Lcom/android/settings/display/NaviBarAdvanceSettingsDashboardFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settings/display/NaviBarAdvanceSettingsDashboardFragment;",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 81
    new-instance v1, Lcom/android/settings/display/NaviBarLayoutPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/display/NaviBarLayoutPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    new-instance v1, Lcom/android/settings/screenshot/RecentKeyController;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/settings/screenshot/RecentKeyController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 74
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    invoke-static {p1, p0, v0}, Lcom/android/settings/display/NaviBarAdvanceSettingsDashboardFragment;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settings/display/NaviBarAdvanceSettingsDashboardFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getHelpResource()I
    .locals 0

    .line 69
    sget p0, Lcom/android/settings/R$string;->help_uri_display:I

    return p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "NaviBarAdvanceSettingsDashboardFragment"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x2e

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 59
    sget p0, Lcom/android/settings/R$xml;->navigation_bar_advance_settings:I

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 47
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "recent_apps_key_pref_key"

    .line 49
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/ListPreference;

    iput-object p1, p0, Lcom/android/settings/display/NaviBarAdvanceSettingsDashboardFragment;->mRecentApps:Landroidx/preference/ListPreference;

    return-void
.end method

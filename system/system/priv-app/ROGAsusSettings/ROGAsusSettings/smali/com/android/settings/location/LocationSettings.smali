.class public Lcom/android/settings/location/LocationSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "LocationSettings.java"

# interfaces
.implements Lcom/android/settings/location/LocationEnabler$LocationModeChangeListener;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mLocationEnabler:Lcom/android/settings/location/LocationEnabler;

.field private mSwitchBarController:Lcom/android/settings/location/LocationSwitchBarController;


# direct methods
.method public static synthetic $r8$lambda$g4KVkxqE8C9kFZKF4bO1d06SKYA(Landroidx/preference/Preference;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/android/settings/location/LocationSettings;->lambda$addPreferencesSorted$0(Landroidx/preference/Preference;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 129
    new-instance v0, Lcom/android/settings/search/BaseSearchIndexProvider;

    sget v1, Lcom/android/settings/R$xml;->location_settings:I

    invoke-direct {v0, v1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    sput-object v0, Lcom/android/settings/location/LocationSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method static addPreferencesSorted(Ljava/util/List;Landroidx/preference/PreferenceGroup;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/preference/Preference;",
            ">;",
            "Landroidx/preference/PreferenceGroup;",
            ")V"
        }
    .end annotation

    .line 114
    sget-object v0, Lcom/android/settings/location/LocationSettings$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/settings/location/LocationSettings$$ExternalSyntheticLambda0;

    .line 115
    invoke-static {v0}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v0

    .line 114
    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 116
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/preference/Preference;

    .line 117
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static synthetic lambda$addPreferencesSorted$0(Landroidx/preference/Preference;)Ljava/lang/String;
    .locals 0

    .line 115
    invoke-virtual {p0}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getHelpResource()I
    .locals 0

    .line 123
    sget p0, Lcom/android/settings/R$string;->help_url_location_access:I

    return p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "LocationSettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x3f

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 97
    sget p0, Lcom/android/settings/R$xml;->location_settings:I

    return p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .line 74
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 75
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    .line 76
    invoke-virtual {p1}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object v0

    .line 77
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->location_settings_primary_switch_title:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/asus/commonresx/widget/MainSwitchBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 78
    invoke-virtual {v0}, Lcom/asus/commonresx/widget/MainSwitchBar;->show()V

    .line 79
    new-instance v1, Lcom/android/settings/location/LocationSwitchBarController;

    .line 80
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    invoke-direct {v1, p1, v0, v2}, Lcom/android/settings/location/LocationSwitchBarController;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SettingsMainSwitchBar;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iput-object v1, p0, Lcom/android/settings/location/LocationSettings;->mSwitchBarController:Lcom/android/settings/location/LocationSwitchBarController;

    .line 81
    new-instance p1, Lcom/android/settings/location/LocationEnabler;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    invoke-direct {p1, v0, p0, v1}, Lcom/android/settings/location/LocationEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/location/LocationEnabler$LocationModeChangeListener;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iput-object p1, p0, Lcom/android/settings/location/LocationSettings;->mLocationEnabler:Lcom/android/settings/location/LocationEnabler;

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 86
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 88
    const-class p1, Lcom/android/settings/location/AppLocationPermissionPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/location/AppLocationPermissionPreferenceController;

    invoke-virtual {p1, p0}, Lcom/android/settings/location/LocationBasePreferenceController;->init(Lcom/android/settings/dashboard/DashboardFragment;)V

    .line 89
    const-class p1, Lcom/android/settings/location/RecentLocationAccessPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/location/RecentLocationAccessPreferenceController;

    invoke-virtual {p1, p0}, Lcom/android/settings/location/LocationBasePreferenceController;->init(Lcom/android/settings/dashboard/DashboardFragment;)V

    .line 90
    const-class p1, Lcom/android/settings/location/RecentLocationAccessSeeAllButtonPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/location/RecentLocationAccessSeeAllButtonPreferenceController;

    invoke-virtual {p1, p0}, Lcom/android/settings/location/LocationBasePreferenceController;->init(Lcom/android/settings/dashboard/DashboardFragment;)V

    .line 91
    const-class p1, Lcom/android/settings/location/LocationForWorkPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/location/LocationForWorkPreferenceController;

    invoke-virtual {p1, p0}, Lcom/android/settings/location/LocationBasePreferenceController;->init(Lcom/android/settings/dashboard/DashboardFragment;)V

    .line 92
    const-class p1, Lcom/android/settings/location/LocationSettingsFooterPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/location/LocationSettingsFooterPreferenceController;

    invoke-virtual {p1, p0}, Lcom/android/settings/location/LocationBasePreferenceController;->init(Lcom/android/settings/dashboard/DashboardFragment;)V

    return-void
.end method

.method public onLocationModeChanged(IZ)V
    .locals 0

    .line 107
    iget-object p2, p0, Lcom/android/settings/location/LocationSettings;->mLocationEnabler:Lcom/android/settings/location/LocationEnabler;

    invoke-virtual {p2, p1}, Lcom/android/settings/location/LocationEnabler;->isEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "recent_location_access"

    .line 108
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->scrollToPreference(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

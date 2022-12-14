.class public Lcom/android/settings/location/RecentLocationAccessSeeAllFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "RecentLocationAccessSeeAllFragment.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mController:Lcom/android/settings/location/RecentLocationAccessSeeAllPreferenceController;

.field private mHideSystemMenu:Landroid/view/MenuItem;

.field private mShowSystem:Z

.field private mShowSystemMenu:Landroid/view/MenuItem;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 125
    new-instance v0, Lcom/android/settings/search/BaseSearchIndexProvider;

    sget v1, Lcom/android/settings/R$xml;->location_recent_access_see_all:I

    invoke-direct {v0, v1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    sput-object v0, Lcom/android/settings/location/RecentLocationAccessSeeAllFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/android/settings/location/RecentLocationAccessSeeAllFragment;->mShowSystem:Z

    return-void
.end method

.method private updateMenu()V
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/android/settings/location/RecentLocationAccessSeeAllFragment;->mShowSystemMenu:Landroid/view/MenuItem;

    iget-boolean v1, p0, Lcom/android/settings/location/RecentLocationAccessSeeAllFragment;->mShowSystem:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 109
    iget-object v0, p0, Lcom/android/settings/location/RecentLocationAccessSeeAllFragment;->mHideSystemMenu:Landroid/view/MenuItem;

    iget-boolean p0, p0, Lcom/android/settings/location/RecentLocationAccessSeeAllFragment;->mShowSystem:Z

    invoke-interface {v0, p0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "RecentLocAccessSeeAll"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x52d

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 83
    sget p0, Lcom/android/settings/R$xml;->location_recent_access_see_all:I

    return p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 54
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 55
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "profile"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 57
    const-class v0, Lcom/android/settings/location/RecentLocationAccessSeeAllPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/location/RecentLocationAccessSeeAllPreferenceController;

    iput-object v0, p0, Lcom/android/settings/location/RecentLocationAccessSeeAllFragment;->mController:Lcom/android/settings/location/RecentLocationAccessSeeAllPreferenceController;

    .line 58
    invoke-virtual {v0, p0}, Lcom/android/settings/location/LocationBasePreferenceController;->init(Lcom/android/settings/dashboard/DashboardFragment;)V

    if-eqz p1, :cond_0

    .line 60
    iget-object p0, p0, Lcom/android/settings/location/RecentLocationAccessSeeAllFragment;->mController:Lcom/android/settings/location/RecentLocationAccessSeeAllPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/location/RecentLocationAccessSeeAllPreferenceController;->setProfileType(I)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 66
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    .line 68
    iget-boolean v0, p0, Lcom/android/settings/location/RecentLocationAccessSeeAllFragment;->mShowSystem:Z

    const-string v1, "show_system"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/location/RecentLocationAccessSeeAllFragment;->mShowSystem:Z

    .line 70
    :cond_0
    iget-object p1, p0, Lcom/android/settings/location/RecentLocationAccessSeeAllFragment;->mController:Lcom/android/settings/location/RecentLocationAccessSeeAllPreferenceController;

    if-eqz p1, :cond_1

    .line 71
    iget-boolean p0, p0, Lcom/android/settings/location/RecentLocationAccessSeeAllFragment;->mShowSystem:Z

    invoke-virtual {p1, p0}, Lcom/android/settings/location/RecentLocationAccessSeeAllPreferenceController;->setShowSystem(Z)V

    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 114
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 115
    sget p2, Lcom/android/settings/R$string;->menu_show_system:I

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1, v0, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/location/RecentLocationAccessSeeAllFragment;->mShowSystemMenu:Landroid/view/MenuItem;

    .line 117
    sget p2, Lcom/android/settings/R$string;->menu_hide_system:I

    const/4 v1, 0x3

    invoke-interface {p1, v0, v1, v0, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/location/RecentLocationAccessSeeAllFragment;->mHideSystemMenu:Landroid/view/MenuItem;

    .line 119
    invoke-direct {p0}, Lcom/android/settings/location/RecentLocationAccessSeeAllFragment;->updateMenu()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 93
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    .line 103
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    .line 96
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v1, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/settings/location/RecentLocationAccessSeeAllFragment;->mShowSystem:Z

    .line 97
    invoke-direct {p0}, Lcom/android/settings/location/RecentLocationAccessSeeAllFragment;->updateMenu()V

    .line 98
    iget-object p1, p0, Lcom/android/settings/location/RecentLocationAccessSeeAllFragment;->mController:Lcom/android/settings/location/RecentLocationAccessSeeAllPreferenceController;

    if-eqz p1, :cond_2

    .line 99
    iget-boolean p0, p0, Lcom/android/settings/location/RecentLocationAccessSeeAllFragment;->mShowSystem:Z

    invoke-virtual {p1, p0}, Lcom/android/settings/location/RecentLocationAccessSeeAllPreferenceController;->setShowSystem(Z)V

    :cond_2
    return v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 77
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 78
    iget-boolean p0, p0, Lcom/android/settings/location/RecentLocationAccessSeeAllFragment;->mShowSystem:Z

    const-string v0, "show_system"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

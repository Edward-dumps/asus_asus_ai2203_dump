.class public Lcom/android/settings/accounts/AccountDashboardFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "AccountDashboardFragment.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 109
    new-instance v0, Lcom/android/settings/accounts/AccountDashboardFragment$1;

    sget v1, Lcom/android/settings/R$xml;->accounts_dashboard_settings:I

    invoke-direct {v0, v1}, Lcom/android/settings/accounts/AccountDashboardFragment$1;-><init>(I)V

    sput-object v0, Lcom/android/settings/accounts/AccountDashboardFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;[Ljava/lang/String;Ljava/util/List;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0

    .line 48
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/settings/accounts/AccountDashboardFragment;->buildAccountPreferenceControllers(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;[Ljava/lang/String;Ljava/util/List;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    return-void
.end method

.method private static buildAccountPreferenceControllers(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;[Ljava/lang/String;Ljava/util/List;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settings/SettingsPreferenceFragment;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            ")V"
        }
    .end annotation

    .line 97
    new-instance v0, Lcom/android/settings/accounts/AccountPreferenceController;

    const/4 v1, 0x3

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/settings/accounts/AccountPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;[Ljava/lang/String;I)V

    if-eqz p1, :cond_0

    .line 101
    invoke-virtual {p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 103
    :cond_0
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    new-instance p2, Lcom/android/settings/users/AutoSyncDataPreferenceController;

    invoke-direct {p2, p0, p1, p4}, Lcom/android/settings/users/AutoSyncDataPreferenceController;-><init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle;)V

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    new-instance p2, Lcom/android/settings/users/AutoSyncPersonalDataPreferenceController;

    invoke-direct {p2, p0, p1}, Lcom/android/settings/users/AutoSyncPersonalDataPreferenceController;-><init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;)V

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    new-instance p2, Lcom/android/settings/users/AutoSyncWorkDataPreferenceController;

    invoke-direct {p2, p0, p1}, Lcom/android/settings/users/AutoSyncWorkDataPreferenceController;-><init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;)V

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static buildAutofillPreferenceControllers(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;)V"
        }
    .end annotation

    .line 90
    new-instance v0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPreferenceController;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    new-instance v0, Lcom/android/settings/applications/defaultapps/DefaultWorkAutofillPreferenceController;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/defaultapps/DefaultWorkAutofillPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 3
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

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 82
    invoke-static {p1, v0}, Lcom/android/settings/accounts/AccountDashboardFragment;->buildAutofillPreferenceControllers(Landroid/content/Context;Ljava/util/List;)V

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "authorities"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 84
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    invoke-static {p1, p0, v1, v0, v2}, Lcom/android/settings/accounts/AccountDashboardFragment;->buildAccountPreferenceControllers(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;[Ljava/lang/String;Ljava/util/List;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    return-object v0
.end method

.method public getHelpResource()I
    .locals 0

    .line 70
    sget p0, Lcom/android/settings/R$string;->help_url_user_and_account_dashboard:I

    return p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "AccountDashboardFrag"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 65
    sget p0, Lcom/android/settings/R$xml;->accounts_dashboard_settings:I

    return p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 75
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 76
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p1

    const-class v0, Lcom/android/settings/applications/autofill/PasswordsPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/LifecycleObserver;

    invoke-virtual {p1, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

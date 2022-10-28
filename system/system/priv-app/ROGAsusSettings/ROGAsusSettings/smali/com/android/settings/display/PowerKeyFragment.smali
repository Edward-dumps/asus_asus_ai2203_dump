.class public Lcom/android/settings/display/PowerKeyFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "PowerKeyFragment.java"

# interfaces
.implements Lcom/android/settings/display/PowerKeyItemController$OnChangeListener;
.implements Lcom/android/settings/display/PowerKeyHeaderController$OnChangeListener;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

.field private static final TAG:Ljava/lang/String;

.field private static final sControllers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const-class v0, Lcom/android/settings/display/PowerKeyFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/display/PowerKeyFragment;->TAG:Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/display/PowerKeyFragment;->sControllers:Ljava/util/List;

    .line 114
    new-instance v0, Lcom/android/settings/display/PowerKeyFragment$1;

    invoke-direct {v0}, Lcom/android/settings/display/PowerKeyFragment$1;-><init>()V

    sput-object v0, Lcom/android/settings/display/PowerKeyFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 0

    .line 40
    invoke-static {p0, p1}, Lcom/android/settings/display/PowerKeyFragment;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 101
    sget-object v0, Lcom/android/settings/display/PowerKeyFragment;->sControllers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 102
    new-instance v1, Lcom/android/settings/display/PowerKeyItemController;

    const-string v2, "power_key_selection_classic"

    invoke-direct {v1, p0, p1, v2}, Lcom/android/settings/display/PowerKeyItemController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    new-instance v1, Lcom/android/settings/display/PowerKeyItemController;

    const-string v2, "power_key_selection_full_screen_1"

    invoke-direct {v1, p0, p1, v2}, Lcom/android/settings/display/PowerKeyItemController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    new-instance v1, Lcom/android/settings/display/PowerKeyItemController;

    const-string v2, "power_key_selection_full_screen_2"

    invoke-direct {v1, p0, p1, v2}, Lcom/android/settings/display/PowerKeyItemController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    new-instance v1, Lcom/android/settings/display/PowerKeyItemController;

    const-string v2, "power_key_selection_full_screen_3"

    invoke-direct {v1, p0, p1, v2}, Lcom/android/settings/display/PowerKeyItemController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    new-instance v1, Lcom/android/settings/display/PowerKeyHeaderController;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/display/PowerKeyHeaderController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 0
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

    .line 96
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/settings/display/PowerKeyFragment;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    .line 86
    sget-object p0, Lcom/android/settings/display/PowerKeyFragment;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x2e

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 91
    sget p0, Lcom/android/settings/R$xml;->power_key_fragment:I

    return p0
.end method

.method public onCheckedChanged(Landroidx/preference/Preference;)V
    .locals 1

    .line 52
    sget-object p0, Lcom/android/settings/display/PowerKeyFragment;->sControllers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 53
    invoke-virtual {v0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 3

    .line 70
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/settings/display/PowerKeyFragment;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 74
    instance-of v1, v0, Lcom/android/settings/display/PowerKeyItemController;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/settings/display/PowerKeyItemController;

    invoke-virtual {v0, v2}, Lcom/android/settings/display/PowerKeyItemController;->setOnChangeListener(Lcom/android/settings/display/PowerKeyItemController$OnChangeListener;)V

    goto :goto_0

    .line 75
    :cond_1
    instance-of v1, v0, Lcom/android/settings/display/PowerKeyHeaderController;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/settings/display/PowerKeyHeaderController;

    invoke-virtual {v0, v2}, Lcom/android/settings/display/PowerKeyHeaderController;->setOnChangeListener(Lcom/android/settings/display/PowerKeyHeaderController$OnChangeListener;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 59
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 62
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/display/PowerKeyFragment;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 63
    instance-of v2, v1, Lcom/android/settings/display/PowerKeyItemController;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/android/settings/display/PowerKeyItemController;

    invoke-virtual {v1, p0}, Lcom/android/settings/display/PowerKeyItemController;->setOnChangeListener(Lcom/android/settings/display/PowerKeyItemController$OnChangeListener;)V

    goto :goto_0

    .line 64
    :cond_1
    instance-of v2, v1, Lcom/android/settings/display/PowerKeyHeaderController;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/android/settings/display/PowerKeyHeaderController;

    invoke-virtual {v1, p0}, Lcom/android/settings/display/PowerKeyHeaderController;->setOnChangeListener(Lcom/android/settings/display/PowerKeyHeaderController$OnChangeListener;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.class public abstract Lcom/android/settings/dashboard/DashboardFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DashboardFragment.java"

# interfaces
.implements Lcom/android/settings/core/CategoryMixin$CategoryListener;
.implements Landroidx/preference/PreferenceGroup$OnExpandButtonClickListener;
.implements Lcom/android/settings/core/BasePreferenceController$UiBlockListener;


# instance fields
.field mBlockerController:Lcom/android/settings/dashboard/UiBlockerController;

.field private final mControllers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation
.end field

.field private mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

.field final mDashboardTilePrefKeys:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/settings/dashboard/DynamicDataObserver;",
            ">;>;"
        }
    .end annotation
.end field

.field private mListeningToCategoryChange:Z

.field private mPlaceholderPreferenceController:Lcom/android/settings/dashboard/DashboardTilePlaceholderPreferenceController;

.field private final mPreferenceControllers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mRegisteredObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/dashboard/DynamicDataObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mSuppressInjectedTileKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$-eV8Nc0LVdFr9s5Szw9xTEgZrPc(Lcom/android/settings/dashboard/DashboardFragment;Landroid/content/ContentResolver;Lcom/android/settings/dashboard/DynamicDataObserver;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/dashboard/DashboardFragment;->lambda$onStart$6(Landroid/content/ContentResolver;Lcom/android/settings/dashboard/DynamicDataObserver;)V

    return-void
.end method

.method public static synthetic $r8$lambda$56UZ8GQDFVN5JzSoKbrAtRGNJ_8(Lcom/android/settings/dashboard/DashboardFragment;Landroidx/preference/Preference;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->lambda$onCreatePreferences$5(Landroidx/preference/Preference;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7KgqziyHu5rnhM8JHZ4buqOlhzM(Landroidx/preference/PreferenceScreen;Lcom/android/settingslib/core/AbstractPreferenceController;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->lambda$displayResourceTilesToScreen$7(Landroidx/preference/PreferenceScreen;Lcom/android/settingslib/core/AbstractPreferenceController;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FR83hAz4q389jzBUl-CPy7UkL8k(Lcom/android/settings/dashboard/DashboardFragment;Landroid/content/ContentResolver;Lcom/android/settings/dashboard/DynamicDataObserver;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/dashboard/DashboardFragment;->lambda$unregisterDynamicDataObservers$9(Landroid/content/ContentResolver;Lcom/android/settings/dashboard/DynamicDataObserver;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HCTW-jG-PpZI4H9f82wHD959M1I(ILcom/android/settingslib/core/AbstractPreferenceController;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->lambda$onAttach$1(ILcom/android/settingslib/core/AbstractPreferenceController;)V

    return-void
.end method

.method public static synthetic $r8$lambda$L5K1SCwxd0D3gThxPZOuk68ui7Q(Lcom/android/settings/dashboard/DashboardFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;->lambda$checkUiBlocker$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$NzA_THdDKh73ORaB6I1a-y5r8xU(Lcom/android/settings/dashboard/DashboardFragment;Landroid/content/ContentResolver;Lcom/android/settings/dashboard/DynamicDataObserver;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/dashboard/DashboardFragment;->lambda$registerDynamicDataObservers$8(Landroid/content/ContentResolver;Lcom/android/settings/dashboard/DynamicDataObserver;)V

    return-void
.end method

.method public static synthetic $r8$lambda$j0zdNtoN2XTJnd0Gg6zbsmXG7Yk(Lcom/android/settings/dashboard/DashboardFragment;Lcom/android/settingslib/core/AbstractPreferenceController;)Landroidx/preference/Preference;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->lambda$onCreatePreferences$4(Lcom/android/settingslib/core/AbstractPreferenceController;)Landroidx/preference/Preference;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$vYhL_jhPHspBxQfaf36yscrbiyU(Lcom/android/settings/dashboard/DashboardFragment;Ljava/util/List;Lcom/android/settingslib/core/AbstractPreferenceController;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/dashboard/DashboardFragment;->lambda$checkUiBlocker$2(Ljava/util/List;Lcom/android/settingslib/core/AbstractPreferenceController;)V

    return-void
.end method

.method public static synthetic $r8$lambda$z5W-tTJycmiXTT_YKDnfn6P3984(Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/core/BasePreferenceController;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->lambda$onAttach$0(Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/core/BasePreferenceController;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 64
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 70
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardFragment;->mDashboardTilePrefKeys:Landroid/util/ArrayMap;

    .line 72
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardFragment;->mPreferenceControllers:Ljava/util/Map;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardFragment;->mRegisteredObservers:Ljava/util/List;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardFragment;->mControllers:Ljava/util/List;

    return-void
.end method

.method private displayResourceTiles()V
    .locals 1

    .line 323
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getPreferenceScreenResId()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 327
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 328
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 329
    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->setOnExpandButtonClickListener(Landroidx/preference/PreferenceGroup$OnExpandButtonClickListener;)V

    .line 330
    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->displayResourceTilesToScreen(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method private synthetic lambda$checkUiBlocker$2(Ljava/util/List;Lcom/android/settingslib/core/AbstractPreferenceController;)V
    .locals 1

    .line 135
    instance-of v0, p2, Lcom/android/settings/core/BasePreferenceController$UiBlocker;

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {p2}, Lcom/android/settingslib/core/AbstractPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    move-object v0, p2

    check-cast v0, Lcom/android/settings/core/BasePreferenceController;

    invoke-virtual {v0, p0}, Lcom/android/settings/core/BasePreferenceController;->setUiBlockListener(Lcom/android/settings/core/BasePreferenceController$UiBlockListener;)V

    .line 138
    invoke-virtual {p2}, Lcom/android/settingslib/core/AbstractPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private synthetic lambda$checkUiBlocker$3()V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFragment;->mPreferenceControllers:Ljava/util/Map;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->updatePreferenceVisibility(Ljava/util/Map;)V

    return-void
.end method

.method private static synthetic lambda$displayResourceTilesToScreen$7(Landroidx/preference/PreferenceScreen;Lcom/android/settingslib/core/AbstractPreferenceController;)V
    .locals 0

    .line 339
    invoke-virtual {p1, p0}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method private static synthetic lambda$onAttach$0(Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/core/BasePreferenceController;)V
    .locals 1

    .line 110
    instance-of v0, p1, Lcom/android/settingslib/core/lifecycle/LifecycleObserver;

    if-eqz v0, :cond_0

    .line 111
    check-cast p1, Lcom/android/settingslib/core/lifecycle/LifecycleObserver;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$onAttach$1(ILcom/android/settingslib/core/AbstractPreferenceController;)V
    .locals 1

    .line 118
    instance-of v0, p1, Lcom/android/settings/core/BasePreferenceController;

    if-eqz v0, :cond_0

    .line 119
    check-cast p1, Lcom/android/settings/core/BasePreferenceController;

    invoke-virtual {p1, p0}, Lcom/android/settings/core/BasePreferenceController;->setMetricsCategory(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onCreatePreferences$4(Lcom/android/settingslib/core/AbstractPreferenceController;)Landroidx/preference/Preference;
    .locals 0

    .line 184
    invoke-virtual {p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$onCreatePreferences$5(Landroidx/preference/Preference;)V
    .locals 1

    .line 188
    invoke-virtual {p1}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-interface {p0}, Lcom/android/settingslib/core/instrumentation/Instrumentable;->getMetricsCategory()I

    move-result p0

    const-string v0, "category"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method private synthetic lambda$onStart$6(Landroid/content/ContentResolver;Lcom/android/settings/dashboard/DynamicDataObserver;)V
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFragment;->mRegisteredObservers:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 211
    invoke-direct {p0, p1, p2}, Lcom/android/settings/dashboard/DashboardFragment;->registerDynamicDataObserver(Landroid/content/ContentResolver;Lcom/android/settings/dashboard/DynamicDataObserver;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$registerDynamicDataObservers$8(Landroid/content/ContentResolver;Lcom/android/settings/dashboard/DynamicDataObserver;)V
    .locals 0

    .line 548
    invoke-direct {p0, p1, p2}, Lcom/android/settings/dashboard/DashboardFragment;->registerDynamicDataObserver(Landroid/content/ContentResolver;Lcom/android/settings/dashboard/DynamicDataObserver;)V

    return-void
.end method

.method private synthetic lambda$unregisterDynamicDataObservers$9(Landroid/content/ContentResolver;Lcom/android/settings/dashboard/DynamicDataObserver;)V
    .locals 2

    .line 565
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregister observer: @"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", uri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    invoke-virtual {p2}, Lcom/android/settings/dashboard/DynamicDataObserver;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DashboardFragment"

    .line 565
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    iget-object p0, p0, Lcom/android/settings/dashboard/DashboardFragment;->mRegisteredObservers:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 568
    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method private refreshDashboardTiles(Ljava/lang/String;)V
    .locals 14

    .line 470
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 472
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardFragment;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    .line 473
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getCategoryKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/settings/dashboard/DashboardFeatureProvider;->getTilesForCategory(Ljava/lang/String;)Lcom/android/settingslib/drawer/DashboardCategory;

    move-result-object v1

    if-nez v1, :cond_0

    .line 475
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "NO dashboard tiles for "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 478
    :cond_0
    invoke-virtual {v1}, Lcom/android/settingslib/drawer/DashboardCategory;->getTiles()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_1

    .line 480
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "tile list is empty, skipping category "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/android/settingslib/drawer/DashboardCategory;->key:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 484
    :cond_1
    new-instance v1, Landroid/util/ArrayMap;

    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardFragment;->mDashboardTilePrefKeys:Landroid/util/ArrayMap;

    invoke-direct {v1, v3}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 487
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->shouldForceRoundedIcon()Z

    move-result v3

    .line 488
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Lcom/android/settingslib/drawer/Tile;

    .line 489
    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardFragment;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    invoke-interface {v4, v9}, Lcom/android/settings/dashboard/DashboardFeatureProvider;->getDashboardKeyForTile(Lcom/android/settingslib/drawer/Tile;)Ljava/lang/String;

    move-result-object v12

    .line 490
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 491
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tile does not contain a key, skipping "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 494
    :cond_2
    invoke-virtual {p0, v9}, Lcom/android/settings/dashboard/DashboardFragment;->displayTile(Lcom/android/settingslib/drawer/Tile;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    .line 497
    :cond_3
    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardFragment;->mDashboardTilePrefKeys:Landroid/util/ArrayMap;

    invoke-virtual {v4, v12}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 499
    invoke-virtual {v0, v12}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v8

    .line 500
    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardFragment;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    .line 501
    invoke-interface {p0}, Lcom/android/settingslib/core/instrumentation/Instrumentable;->getMetricsCategory()I

    move-result v7

    iget-object v6, p0, Lcom/android/settings/dashboard/DashboardFragment;->mPlaceholderPreferenceController:Lcom/android/settings/dashboard/DashboardTilePlaceholderPreferenceController;

    .line 502
    invoke-virtual {v6}, Lcom/android/settings/dashboard/DashboardTilePlaceholderPreferenceController;->getOrder()I

    move-result v11

    move v6, v3

    move-object v10, v12

    .line 500
    invoke-interface/range {v4 .. v11}, Lcom/android/settings/dashboard/DashboardFeatureProvider;->bindPreferenceToTileAndGetObservers(Landroidx/fragment/app/FragmentActivity;ZILandroidx/preference/Preference;Lcom/android/settingslib/drawer/Tile;Ljava/lang/String;I)Ljava/util/List;

    goto :goto_1

    .line 505
    :cond_4
    invoke-virtual {p0, v9}, Lcom/android/settings/dashboard/DashboardFragment;->createPreference(Lcom/android/settingslib/drawer/Tile;)Landroidx/preference/Preference;

    move-result-object v13

    .line 506
    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardFragment;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    .line 507
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    .line 508
    invoke-interface {p0}, Lcom/android/settingslib/core/instrumentation/Instrumentable;->getMetricsCategory()I

    move-result v7

    iget-object v6, p0, Lcom/android/settings/dashboard/DashboardFragment;->mPlaceholderPreferenceController:Lcom/android/settings/dashboard/DashboardTilePlaceholderPreferenceController;

    .line 509
    invoke-virtual {v6}, Lcom/android/settings/dashboard/DashboardTilePlaceholderPreferenceController;->getOrder()I

    move-result v11

    move v6, v3

    move-object v8, v13

    move-object v10, v12

    .line 507
    invoke-interface/range {v4 .. v11}, Lcom/android/settings/dashboard/DashboardFeatureProvider;->bindPreferenceToTileAndGetObservers(Landroidx/fragment/app/FragmentActivity;ZILandroidx/preference/Preference;Lcom/android/settingslib/drawer/Tile;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v4

    .line 510
    invoke-virtual {v0, v13}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 511
    invoke-virtual {p0, v4}, Lcom/android/settings/dashboard/DashboardFragment;->registerDynamicDataObservers(Ljava/util/List;)V

    .line 512
    iget-object v5, p0, Lcom/android/settings/dashboard/DashboardFragment;->mDashboardTilePrefKeys:Landroid/util/ArrayMap;

    invoke-virtual {v5, v12, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    :goto_1
    invoke-interface {v1, v12}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 517
    :cond_5
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 518
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 519
    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardFragment;->mDashboardTilePrefKeys:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 522
    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 524
    :cond_6
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/android/settings/dashboard/DashboardFragment;->unregisterDynamicDataObservers(Ljava/util/List;)V

    goto :goto_2

    :cond_7
    return-void
.end method

.method private registerDynamicDataObserver(Landroid/content/ContentResolver;Lcom/android/settings/dashboard/DynamicDataObserver;)V
    .locals 2

    .line 553
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "register observer: @"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", uri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    invoke-virtual {p2}, Lcom/android/settings/dashboard/DynamicDataObserver;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DashboardFragment"

    .line 553
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    invoke-virtual {p2}, Lcom/android/settings/dashboard/DynamicDataObserver;->getUri()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 556
    iget-object p0, p0, Lcom/android/settings/dashboard/DashboardFragment;->mRegisteredObservers:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private unregisterDynamicDataObservers(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/dashboard/DynamicDataObserver;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 560
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 563
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 564
    new-instance v1, Lcom/android/settings/dashboard/DashboardFragment$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/dashboard/DashboardFragment$$ExternalSyntheticLambda5;-><init>(Lcom/android/settings/dashboard/DashboardFragment;Landroid/content/ContentResolver;)V

    invoke-interface {p1, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected addPreferenceController(Lcom/android/settingslib/core/AbstractPreferenceController;)V
    .locals 3

    .line 281
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFragment;->mPreferenceControllers:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFragment;->mPreferenceControllers:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    :cond_0
    iget-object p0, p0, Lcom/android/settings/dashboard/DashboardFragment;->mPreferenceControllers:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method checkUiBlocker(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;)V"
        }
    .end annotation

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 134
    new-instance v1, Lcom/android/settings/dashboard/DashboardFragment$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/dashboard/DashboardFragment$$ExternalSyntheticLambda7;-><init>(Lcom/android/settings/dashboard/DashboardFragment;Ljava/util/List;)V

    invoke-interface {p1, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 142
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 143
    new-instance p1, Lcom/android/settings/dashboard/UiBlockerController;

    invoke-direct {p1, v0}, Lcom/android/settings/dashboard/UiBlockerController;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardFragment;->mBlockerController:Lcom/android/settings/dashboard/UiBlockerController;

    .line 144
    new-instance v0, Lcom/android/settings/dashboard/DashboardFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/dashboard/DashboardFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/dashboard/DashboardFragment;)V

    invoke-virtual {p1, v0}, Lcom/android/settings/dashboard/UiBlockerController;->start(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method createPreference(Lcom/android/settingslib/drawer/Tile;)Landroidx/preference/Preference;
    .locals 1

    .line 535
    instance-of v0, p1, Lcom/android/settingslib/drawer/ProviderTile;

    if-eqz v0, :cond_0

    .line 536
    new-instance p1, Landroidx/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {p1, p0}, Landroidx/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 537
    :cond_0
    invoke-virtual {p1}, Lcom/android/settingslib/drawer/Tile;->hasSwitch()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 538
    new-instance p1, Lcom/android/settings/widget/PrimarySwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/android/settings/widget/PrimarySwitchPreference;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 539
    :cond_1
    new-instance p1, Landroidx/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {p1, p0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    :goto_0
    return-object p1
.end method

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

    const/4 p0, 0x0

    return-object p0
.end method

.method protected displayResourceTilesToScreen(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 338
    iget-object p0, p0, Lcom/android/settings/dashboard/DashboardFragment;->mPreferenceControllers:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/android/settings/dashboard/DashboardFragment$$ExternalSyntheticLambda10;->INSTANCE:Lcom/android/settings/dashboard/DashboardFragment$$ExternalSyntheticLambda10;

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/settings/dashboard/DashboardFragment$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcom/android/settings/dashboard/DashboardFragment$$ExternalSyntheticLambda2;-><init>(Landroidx/preference/PreferenceScreen;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method protected displayTile(Lcom/android/settingslib/drawer/Tile;)Z
    .locals 2

    .line 312
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFragment;->mSuppressInjectedTileKeys:Ljava/util/List;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/settingslib/drawer/Tile;->hasKey()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFragment;->mSuppressInjectedTileKeys:Ljava/util/List;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settingslib/drawer/Tile;->getKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v1

    return p0

    :cond_0
    return v1
.end method

.method public getCategoryKey()Ljava/lang/String;
    .locals 1

    .line 292
    sget-object v0, Lcom/android/settings/dashboard/DashboardFragmentRegistry;->PARENT_TO_CATEGORY_KEY_MAP:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method protected abstract getLogTag()Ljava/lang/String;
.end method

.method protected getPreferenceControllers()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;>;"
        }
    .end annotation

    .line 354
    iget-object p0, p0, Lcom/android/settings/dashboard/DashboardFragment;->mPreferenceControllers:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method protected abstract getPreferenceScreenResId()I
.end method

.method protected isParalleledControllers()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 3

    .line 85
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onAttach(Landroid/content/Context;)V

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$array;->config_suppress_injected_tile_keys:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardFragment;->mSuppressInjectedTileKeys:Ljava/util/List;

    .line 88
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 89
    invoke-virtual {v0, p1}, Lcom/android/settings/overlay/FeatureFactory;->getDashboardFeatureProvider(Landroid/content/Context;)Lcom/android/settings/dashboard/DashboardFeatureProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardFragment;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    .line 92
    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getPreferenceScreenResId()I

    move-result v1

    invoke-static {p1, v1}, Lcom/android/settings/core/PreferenceControllerListHelper;->getPreferenceControllersFromXml(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v1

    .line 98
    invoke-static {v1, v0}, Lcom/android/settings/core/PreferenceControllerListHelper;->filterControllers(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 103
    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardFragment;->mControllers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFragment;->mControllers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 108
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    .line 109
    new-instance v2, Lcom/android/settings/dashboard/DashboardFragment$$ExternalSyntheticLambda8;

    invoke-direct {v2, v0}, Lcom/android/settings/dashboard/DashboardFragment$$ExternalSyntheticLambda8;-><init>(Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 116
    invoke-interface {p0}, Lcom/android/settingslib/core/instrumentation/Instrumentable;->getMetricsCategory()I

    move-result v0

    .line 117
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardFragment;->mControllers:Ljava/util/List;

    new-instance v2, Lcom/android/settings/dashboard/DashboardFragment$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lcom/android/settings/dashboard/DashboardFragment$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 123
    new-instance v0, Lcom/android/settings/dashboard/DashboardTilePlaceholderPreferenceController;

    invoke-direct {v0, p1}, Lcom/android/settings/dashboard/DashboardTilePlaceholderPreferenceController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardFragment;->mPlaceholderPreferenceController:Lcom/android/settings/dashboard/DashboardTilePlaceholderPreferenceController;

    .line 125
    iget-object p1, p0, Lcom/android/settings/dashboard/DashboardFragment;->mControllers:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    iget-object p1, p0, Lcom/android/settings/dashboard/DashboardFragment;->mControllers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 127
    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->addPreferenceController(Lcom/android/settingslib/core/AbstractPreferenceController;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onBlockerWorkFinished(Lcom/android/settings/core/BasePreferenceController;)V
    .locals 0

    .line 530
    iget-object p0, p0, Lcom/android/settings/dashboard/DashboardFragment;->mBlockerController:Lcom/android/settings/dashboard/UiBlockerController;

    invoke-virtual {p1}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/UiBlockerController;->countDown(Ljava/lang/String;)Z

    return-void
.end method

.method public onCategoriesChanged(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 163
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getCategoryKey()Ljava/lang/String;

    move-result-object v0

    .line 164
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardFragment;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    .line 165
    invoke-interface {v1, v0}, Lcom/android/settings/dashboard/DashboardFeatureProvider;->getTilesForCategory(Ljava/lang/String;)Lcom/android/settingslib/drawer/DashboardCategory;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 172
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getLogTag()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->refreshDashboardTiles(Ljava/lang/String;)V

    goto :goto_0

    .line 173
    :cond_1
    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 174
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "refresh tiles for "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DashboardFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getLogTag()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->refreshDashboardTiles(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 150
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 152
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v0

    new-instance v1, Landroidx/preference/PreferenceManager$SimplePreferenceComparisonCallback;

    invoke-direct {v1}, Landroidx/preference/PreferenceManager$SimplePreferenceComparisonCallback;-><init>()V

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceManager;->setPreferenceComparisonCallback(Landroidx/preference/PreferenceManager$PreferenceComparisonCallback;)V

    if-eqz p1, :cond_0

    .line 157
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->updatePreferenceStates()V

    :cond_0
    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    .line 181
    iget-object p1, p0, Lcom/android/settings/dashboard/DashboardFragment;->mControllers:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->checkUiBlocker(Ljava/util/List;)V

    .line 182
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getLogTag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->refreshAllPreferences(Ljava/lang/String;)V

    .line 183
    iget-object p1, p0, Lcom/android/settings/dashboard/DashboardFragment;->mControllers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/android/settings/dashboard/DashboardFragment$$ExternalSyntheticLambda9;

    invoke-direct {p2, p0}, Lcom/android/settings/dashboard/DashboardFragment$$ExternalSyntheticLambda9;-><init>(Lcom/android/settings/dashboard/DashboardFragment;)V

    .line 184
    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    sget-object p2, Lcom/android/settings/dashboard/DashboardFragment$$ExternalSyntheticLambda11;->INSTANCE:Lcom/android/settings/dashboard/DashboardFragment$$ExternalSyntheticLambda11;

    .line 185
    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/android/settings/dashboard/DashboardFragment$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0}, Lcom/android/settings/dashboard/DashboardFragment$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/dashboard/DashboardFragment;)V

    .line 186
    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onExpandButtonClick()V
    .locals 6

    .line 258
    iget-object v0, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    .line 260
    invoke-interface {p0}, Lcom/android/settingslib/core/instrumentation/Instrumentable;->getMetricsCategory()I

    move-result v3

    const/4 v1, 0x0

    const/16 v2, 0x342

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 258
    invoke-virtual/range {v0 .. v5}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(IIILjava/lang/String;I)V

    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 226
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFragment;->mPreferenceControllers:Ljava/util/Map;

    .line 227
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 228
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 229
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 230
    invoke-virtual {v2, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->handlePreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 232
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->writePreferenceClickMetric(Landroidx/preference/Preference;)V

    const/4 p0, 0x1

    return p0

    .line 237
    :cond_2
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .locals 2

    .line 218
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 219
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->updatePreferenceStates()V

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isParalleledControllers:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->isParalleledControllers()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x6c1

    .line 220
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->writeElapsedTimeMetric(ILjava/lang/String;)V

    return-void
.end method

.method public onStart()V
    .locals 3

    .line 194
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onStart()V

    .line 195
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFragment;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    .line 196
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getCategoryKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/settings/dashboard/DashboardFeatureProvider;->getTilesForCategory(Ljava/lang/String;)Lcom/android/settingslib/drawer/DashboardCategory;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 200
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 201
    instance-of v1, v0, Lcom/android/settings/core/CategoryMixin$CategoryHandler;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 202
    iput-boolean v1, p0, Lcom/android/settings/dashboard/DashboardFragment;->mListeningToCategoryChange:Z

    .line 203
    check-cast v0, Lcom/android/settings/core/CategoryMixin$CategoryHandler;

    invoke-interface {v0}, Lcom/android/settings/core/CategoryMixin$CategoryHandler;->getCategoryMixin()Lcom/android/settings/core/CategoryMixin;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settings/core/CategoryMixin;->addCategoryListener(Lcom/android/settings/core/CategoryMixin$CategoryListener;)V

    .line 205
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 206
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardFragment;->mDashboardTilePrefKeys:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/android/settings/dashboard/DashboardFragment$$ExternalSyntheticLambda12;->INSTANCE:Lcom/android/settings/dashboard/DashboardFragment$$ExternalSyntheticLambda12;

    .line 207
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/android/settings/dashboard/DashboardFragment$$ExternalSyntheticLambda10;->INSTANCE:Lcom/android/settings/dashboard/DashboardFragment$$ExternalSyntheticLambda10;

    .line 208
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/settings/dashboard/DashboardFragment$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/dashboard/DashboardFragment$$ExternalSyntheticLambda4;-><init>(Lcom/android/settings/dashboard/DashboardFragment;Landroid/content/ContentResolver;)V

    .line 209
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 242
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onStop()V

    .line 243
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardFragment;->mRegisteredObservers:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->unregisterDynamicDataObservers(Ljava/util/List;)V

    .line 244
    iget-boolean v0, p0, Lcom/android/settings/dashboard/DashboardFragment;->mListeningToCategoryChange:Z

    if-eqz v0, :cond_1

    .line 245
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 246
    instance-of v1, v0, Lcom/android/settings/core/CategoryMixin$CategoryHandler;

    if-eqz v1, :cond_0

    .line 247
    check-cast v0, Lcom/android/settings/core/CategoryMixin$CategoryHandler;

    invoke-interface {v0}, Lcom/android/settings/core/CategoryMixin$CategoryHandler;->getCategoryMixin()Lcom/android/settings/core/CategoryMixin;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settings/core/CategoryMixin;->removeCategoryListener(Lcom/android/settings/core/CategoryMixin$CategoryListener;)V

    :cond_0
    const/4 v0, 0x0

    .line 249
    iput-boolean v0, p0, Lcom/android/settings/dashboard/DashboardFragment;->mListeningToCategoryChange:Z

    :cond_1
    return-void
.end method

.method protected refreshAllPreferences(Ljava/lang/String;)V
    .locals 2

    .line 424
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 428
    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 432
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;->displayResourceTiles()V

    .line 434
    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->refreshDashboardTiles(Ljava/lang/String;)V

    .line 436
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "All preferences added, reporting fully drawn"

    .line 438
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    invoke-virtual {v0}, Landroid/app/Activity;->reportFullyDrawn()V

    .line 442
    :cond_1
    iget-object p1, p0, Lcom/android/settings/dashboard/DashboardFragment;->mPreferenceControllers:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->updatePreferenceVisibility(Ljava/util/Map;)V

    return-void
.end method

.method registerDynamicDataObservers(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/dashboard/DynamicDataObserver;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 544
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 547
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 548
    new-instance v1, Lcom/android/settings/dashboard/DashboardFragment$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/dashboard/DashboardFragment$$ExternalSyntheticLambda6;-><init>(Lcom/android/settings/dashboard/DashboardFragment;Landroid/content/ContentResolver;)V

    invoke-interface {p1, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected shouldForceRoundedIcon()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected updatePreferenceStates()V
    .locals 9

    .line 361
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 363
    :cond_0
    iget-object p0, p0, Lcom/android/settings/dashboard/DashboardFragment;->mPreferenceControllers:Ljava/util/Map;

    .line 364
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    .line 365
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 366
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 367
    invoke-virtual {v2}, Lcom/android/settingslib/core/AbstractPreferenceController;->isAvailable()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 371
    :cond_2
    invoke-virtual {v2}, Lcom/android/settingslib/core/AbstractPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v3

    .line 372
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x2

    const-string v8, "DashboardFragment"

    if-eqz v4, :cond_3

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v3, v4, v6

    .line 374
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    const-string v2, "Preference key is %s in Controller %s"

    .line 373
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 378
    :cond_3
    invoke-virtual {v0, v3}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    if-nez v4, :cond_4

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v3, v4, v6

    .line 381
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    const-string v2, "Cannot find preference with key %s in Controller %s"

    .line 380
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 384
    :cond_4
    invoke-virtual {v2, v4}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    goto :goto_0

    :cond_5
    return-void
.end method

.method updatePreferenceStatesInParallel()V
    .locals 9

    .line 396
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 397
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardFragment;->mPreferenceControllers:Ljava/util/Map;

    .line 398
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    .line 399
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 400
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 401
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 402
    new-instance v5, Lcom/android/settings/dashboard/ControllerFutureTask;

    new-instance v6, Lcom/android/settings/dashboard/ControllerTask;

    iget-object v7, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    .line 404
    invoke-interface {p0}, Lcom/android/settingslib/core/instrumentation/Instrumentable;->getMetricsCategory()I

    move-result v8

    invoke-direct {v6, v4, v0, v7, v8}, Lcom/android/settings/dashboard/ControllerTask;-><init>(Lcom/android/settingslib/core/AbstractPreferenceController;Landroidx/preference/PreferenceScreen;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;I)V

    const/4 v4, 0x0

    invoke-direct {v5, v6, v4}, Lcom/android/settings/dashboard/ControllerFutureTask;-><init>(Lcom/android/settings/dashboard/ControllerTask;Ljava/lang/Void;)V

    .line 405
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 406
    invoke-static {v5}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0

    .line 410
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/dashboard/ControllerFutureTask;

    .line 412
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 414
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/settings/dashboard/ControllerFutureTask;->getController()Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/core/AbstractPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DashboardFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    return-void
.end method

.method updatePreferenceVisibility(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;>;)V"
        }
    .end annotation

    .line 448
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    .line 449
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFragment;->mBlockerController:Lcom/android/settings/dashboard/UiBlockerController;

    if-nez v0, :cond_0

    goto :goto_2

    .line 453
    :cond_0
    invoke-virtual {v0}, Lcom/android/settings/dashboard/UiBlockerController;->isBlockerFinished()Z

    move-result v0

    .line 455
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 456
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 457
    invoke-virtual {v2}, Lcom/android/settingslib/core/AbstractPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v3

    .line 458
    invoke-virtual {p0, v3}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_2

    if-eqz v0, :cond_3

    .line 460
    invoke-virtual {v2}, Lcom/android/settingslib/core/AbstractPreferenceController;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v3, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    :cond_4
    :goto_2
    return-void
.end method

.method protected use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 268
    iget-object p0, p0, Lcom/android/settings/dashboard/DashboardFragment;->mPreferenceControllers:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_1

    .line 270
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Multiple controllers of Class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " found, returning first one."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DashboardFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x0

    .line 274
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settingslib/core/AbstractPreferenceController;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

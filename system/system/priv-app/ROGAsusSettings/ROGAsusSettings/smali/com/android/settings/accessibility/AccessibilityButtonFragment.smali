.class public Lcom/android/settings/accessibility/AccessibilityButtonFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "AccessibilityButtonFragment.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

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
    .locals 2

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/accessibility/AccessibilityButtonFragment;->sControllers:Ljava/util/List;

    .line 69
    new-instance v0, Lcom/android/settings/search/BaseSearchIndexProvider;

    sget v1, Lcom/android/settings/R$xml;->accessibility_button_settings:I

    invoke-direct {v0, v1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    sput-object v0, Lcom/android/settings/accessibility/AccessibilityButtonFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 2
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

    .line 58
    sget-object v0, Lcom/android/settings/accessibility/AccessibilityButtonFragment;->sControllers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 59
    new-instance v1, Lcom/android/settings/accessibility/AccessibilityButtonPreviewPreferenceController;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/accessibility/AccessibilityButtonPreviewPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

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

    .line 53
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/settings/accessibility/AccessibilityButtonFragment;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "AccessibilityButtonFragment"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x74e

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 43
    sget p0, Lcom/android/settings/R$xml;->accessibility_button_settings:I

    return p0
.end method

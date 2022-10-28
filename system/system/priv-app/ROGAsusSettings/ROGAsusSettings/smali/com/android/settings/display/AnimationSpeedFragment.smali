.class public Lcom/android/settings/display/AnimationSpeedFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "AnimationSpeedFragment.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mHasInit:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 65
    new-instance v0, Lcom/android/settings/display/AnimationSpeedFragment$1;

    invoke-direct {v0}, Lcom/android/settings/display/AnimationSpeedFragment$1;-><init>()V

    sput-object v0, Lcom/android/settings/display/AnimationSpeedFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    .line 31
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/android/settings/display/AnimationSpeedFragment;->mHasInit:Ljava/lang/Boolean;

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

    .line 42
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 44
    new-instance v0, Lcom/android/settings/display/AnimationListController;

    const-string/jumbo v1, "window_animation_scale"

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/android/settings/display/AnimationListController;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    new-instance v0, Lcom/android/settings/display/AnimationListController;

    const-string v1, "transition_animation_scale"

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2}, Lcom/android/settings/display/AnimationListController;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    new-instance v0, Lcom/android/settings/display/AnimationListController;

    const-string v1, "animator_duration_scale"

    const/4 v2, 0x2

    invoke-direct {v0, p1, v1, v2}, Lcom/android/settings/display/AnimationListController;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "AnimationSpeedFragment"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 52
    sget p0, Lcom/android/settings/R$xml;->animation_fragment:I

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 36
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

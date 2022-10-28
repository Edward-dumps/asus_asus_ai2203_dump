.class public Lcom/android/settings/display/AnimationListWindowFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "AnimationListWindowFragment.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    new-instance v0, Lcom/android/settings/display/AnimationListWindowFragment$1;

    invoke-direct {v0}, Lcom/android/settings/display/AnimationListWindowFragment$1;-><init>()V

    sput-object v0, Lcom/android/settings/display/AnimationListWindowFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "AnimationListWindowFragment"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 33
    sget p0, Lcom/android/settings/R$xml;->animation_list_window:I

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 22
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 27
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 28
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void
.end method

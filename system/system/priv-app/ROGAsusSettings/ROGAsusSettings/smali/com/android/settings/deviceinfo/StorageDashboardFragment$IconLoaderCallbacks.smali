.class public final Lcom/android/settings/deviceinfo/StorageDashboardFragment$IconLoaderCallbacks;
.super Ljava/lang/Object;
.source "StorageDashboardFragment.java"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/StorageDashboardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "IconLoaderCallbacks"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
        "Landroid/util/SparseArray<",
        "Landroid/graphics/drawable/Drawable;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/StorageDashboardFragment;


# direct methods
.method public static synthetic $r8$lambda$YkRcRPiBfWhhWLEIfeaYfJFnbuE(Landroid/util/SparseArray;Lcom/android/settingslib/core/AbstractPreferenceController;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/deviceinfo/StorageDashboardFragment$IconLoaderCallbacks;->lambda$onLoadFinished$2(Landroid/util/SparseArray;Lcom/android/settingslib/core/AbstractPreferenceController;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kRgLVNFVTs28t5P2MoQSMP4tevc(Lcom/android/settingslib/core/AbstractPreferenceController;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/settings/deviceinfo/StorageDashboardFragment$IconLoaderCallbacks;->lambda$onLoadFinished$1(Lcom/android/settingslib/core/AbstractPreferenceController;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$xlKNEW22l3f7A1N2Mpw8flLViAY(Lcom/android/settings/deviceinfo/StorageDashboardFragment$IconLoaderCallbacks;)Landroid/util/SparseArray;
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageDashboardFragment$IconLoaderCallbacks;->lambda$onCreateLoader$0()Landroid/util/SparseArray;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/android/settings/deviceinfo/StorageDashboardFragment;)V
    .locals 0

    .line 548
    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment$IconLoaderCallbacks;->this$0:Lcom/android/settings/deviceinfo/StorageDashboardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onCreateLoader$0()Landroid/util/SparseArray;
    .locals 0

    .line 554
    iget-object p0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment$IconLoaderCallbacks;->this$0:Lcom/android/settings/deviceinfo/StorageDashboardFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/deviceinfo/storage/UserIconLoader;->loadUserIconsWithContext(Landroid/content/Context;)Landroid/util/SparseArray;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$onLoadFinished$1(Lcom/android/settingslib/core/AbstractPreferenceController;)Z
    .locals 0

    .line 562
    instance-of p0, p0, Lcom/android/settings/deviceinfo/storage/UserIconLoader$UserIconHandler;

    return p0
.end method

.method private static synthetic lambda$onLoadFinished$2(Landroid/util/SparseArray;Lcom/android/settingslib/core/AbstractPreferenceController;)V
    .locals 0

    .line 565
    check-cast p1, Lcom/android/settings/deviceinfo/storage/UserIconLoader$UserIconHandler;

    .line 566
    invoke-interface {p1, p0}, Lcom/android/settings/deviceinfo/storage/UserIconLoader$UserIconHandler;->handleUserIcons(Landroid/util/SparseArray;)V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/loader/content/Loader<",
            "Landroid/util/SparseArray<",
            "Landroid/graphics/drawable/Drawable;",
            ">;>;"
        }
    .end annotation

    .line 552
    new-instance p1, Lcom/android/settings/deviceinfo/storage/UserIconLoader;

    iget-object p2, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment$IconLoaderCallbacks;->this$0:Lcom/android/settings/deviceinfo/StorageDashboardFragment;

    .line 553
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    new-instance v0, Lcom/android/settings/deviceinfo/StorageDashboardFragment$IconLoaderCallbacks$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/StorageDashboardFragment$IconLoaderCallbacks$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/deviceinfo/StorageDashboardFragment$IconLoaderCallbacks;)V

    invoke-direct {p1, p2, v0}, Lcom/android/settings/deviceinfo/storage/UserIconLoader;-><init>(Landroid/content/Context;Lcom/android/settings/deviceinfo/storage/UserIconLoader$FetchUserIconTask;)V

    return-object p1
.end method

.method public onLoadFinished(Landroidx/loader/content/Loader;Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Landroid/util/SparseArray<",
            "Landroid/graphics/drawable/Drawable;",
            ">;>;",
            "Landroid/util/SparseArray<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .line 560
    iget-object p0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment$IconLoaderCallbacks;->this$0:Lcom/android/settings/deviceinfo/StorageDashboardFragment;

    invoke-static {p0}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->access$400(Lcom/android/settings/deviceinfo/StorageDashboardFragment;)Ljava/util/List;

    move-result-object p0

    .line 561
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object p1, Lcom/android/settings/deviceinfo/StorageDashboardFragment$IconLoaderCallbacks$$ExternalSyntheticLambda2;->INSTANCE:Lcom/android/settings/deviceinfo/StorageDashboardFragment$IconLoaderCallbacks$$ExternalSyntheticLambda2;

    .line 562
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/settings/deviceinfo/StorageDashboardFragment$IconLoaderCallbacks$$ExternalSyntheticLambda1;

    invoke-direct {p1, p2}, Lcom/android/settings/deviceinfo/StorageDashboardFragment$IconLoaderCallbacks$$ExternalSyntheticLambda1;-><init>(Landroid/util/SparseArray;)V

    .line 563
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 548
    check-cast p2, Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/deviceinfo/StorageDashboardFragment$IconLoaderCallbacks;->onLoadFinished(Landroidx/loader/content/Loader;Landroid/util/SparseArray;)V

    return-void
.end method

.method public onLoaderReset(Landroidx/loader/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Landroid/util/SparseArray<",
            "Landroid/graphics/drawable/Drawable;",
            ">;>;)V"
        }
    .end annotation

    return-void
.end method

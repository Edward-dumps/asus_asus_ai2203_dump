.class public Lcom/android/settings/display/StyleIconShapePreferenceFragment;
.super Lcom/android/settings/display/PreviewLayoutPreferenceFragment;
.source "StyleIconShapePreferenceFragment.java"


# static fields
.field private static final OVERLAY_INFO_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/content/om/OverlayInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private adapter:Lcom/android/settings/display/StyleIconShapeRecyclerViewAdapter;

.field private labels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOverlayManager:Landroid/content/om/IOverlayManager;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private pkgs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private selectedPkg:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$MpukXbQvuCeG1i9fctRhKgfyBUw(Landroid/content/om/OverlayInfo;)I
    .locals 0

    invoke-static {p0}, Lcom/android/settings/display/StyleIconShapePreferenceFragment;->lambda$static$0(Landroid/content/om/OverlayInfo;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$gSB3S1rfzDA6418rXBBgy-SLgwo(Landroid/content/om/OverlayInfo;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/android/settings/display/StyleIconShapePreferenceFragment;->lambda$setOverlay$2(Landroid/content/om/OverlayInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$yFVNUeaH0yoTtDUe1P6nZDWWYCY(Landroid/content/om/OverlayInfo;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/settings/display/StyleIconShapePreferenceFragment;->lambda$setOverlay$1(Landroid/content/om/OverlayInfo;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 72
    const-class v0, Lcom/android/settings/display/StyleIconShapePreferenceFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/display/StyleIconShapePreferenceFragment;->TAG:Ljava/lang/String;

    .line 77
    sget-object v0, Lcom/android/settings/display/StyleIconShapePreferenceFragment$$ExternalSyntheticLambda2;->INSTANCE:Lcom/android/settings/display/StyleIconShapePreferenceFragment$$ExternalSyntheticLambda2;

    .line 78
    invoke-static {v0}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v0

    sput-object v0, Lcom/android/settings/display/StyleIconShapePreferenceFragment;->OVERLAY_INFO_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 71
    invoke-direct {p0}, Lcom/android/settings/display/PreviewLayoutPreferenceFragment;-><init>()V

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/display/StyleIconShapePreferenceFragment;->pkgs:Ljava/util/List;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/display/StyleIconShapePreferenceFragment;->labels:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/display/StyleIconShapePreferenceFragment;)Landroid/content/om/IOverlayManager;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/android/settings/display/StyleIconShapePreferenceFragment;->mOverlayManager:Landroid/content/om/IOverlayManager;

    return-object p0
.end method

.method private getOverlayInfos()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/om/OverlayInfo;",
            ">;"
        }
    .end annotation

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 163
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/display/StyleIconShapePreferenceFragment;->mOverlayManager:Landroid/content/om/IOverlayManager;

    const-string v1, "android"

    const/4 v2, 0x0

    .line 164
    invoke-interface {p0, v1, v2}, Landroid/content/om/IOverlayManager;->getOverlayInfosForTarget(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    .line 165
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/om/OverlayInfo;

    const-string v2, "android.theme.customization.adaptive_icon_shape"

    .line 166
    iget-object v3, v1, Landroid/content/om/OverlayInfo;->category:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 167
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 173
    :cond_1
    sget-object p0, Lcom/android/settings/display/StyleIconShapePreferenceFragment;->OVERLAY_INFO_COMPARATOR:Ljava/util/Comparator;

    invoke-interface {v0, p0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    return-object v0

    :catch_0
    move-exception p0

    .line 171
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private getShapeValueList()V
    .locals 6

    const-string v0, "package_device_default"

    .line 218
    iput-object v0, p0, Lcom/android/settings/display/StyleIconShapePreferenceFragment;->selectedPkg:Ljava/lang/String;

    .line 219
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->overlay_option_device_default:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 222
    iget-object v1, p0, Lcom/android/settings/display/StyleIconShapePreferenceFragment;->pkgs:Ljava/util/List;

    iget-object v2, p0, Lcom/android/settings/display/StyleIconShapePreferenceFragment;->selectedPkg:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    iget-object v1, p0, Lcom/android/settings/display/StyleIconShapePreferenceFragment;->labels:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    invoke-direct {p0}, Lcom/android/settings/display/StyleIconShapePreferenceFragment;->getOverlayInfos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/om/OverlayInfo;

    .line 226
    iget-object v2, p0, Lcom/android/settings/display/StyleIconShapePreferenceFragment;->pkgs:Ljava/util/List;

    iget-object v3, v1, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/display/StyleIconShapePreferenceFragment;->labels:Ljava/util/List;

    iget-object v3, p0, Lcom/android/settings/display/StyleIconShapePreferenceFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v4, v1, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/display/StyleIconShapePreferenceFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 229
    invoke-virtual {v3, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 228
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 231
    :catch_0
    iget-object v2, p0, Lcom/android/settings/display/StyleIconShapePreferenceFragment;->labels:Ljava/util/List;

    iget-object v3, v1, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    :goto_1
    invoke-virtual {v1}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 235
    iget-object v1, p0, Lcom/android/settings/display/StyleIconShapePreferenceFragment;->pkgs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings/display/StyleIconShapePreferenceFragment;->selectedPkg:Ljava/lang/String;

    .line 236
    iget-object v1, p0, Lcom/android/settings/display/StyleIconShapePreferenceFragment;->labels:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static synthetic lambda$setOverlay$1(Landroid/content/om/OverlayInfo;)Z
    .locals 0

    .line 179
    invoke-virtual {p0}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$setOverlay$2(Landroid/content/om/OverlayInfo;)Ljava/lang/String;
    .locals 0

    .line 180
    iget-object p0, p0, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method private static synthetic lambda$static$0(Landroid/content/om/OverlayInfo;)I
    .locals 0

    .line 78
    iget p0, p0, Landroid/content/om/OverlayInfo;->priority:I

    return p0
.end method

.method private setOverlay(Ljava/lang/String;)Z
    .locals 3

    .line 178
    invoke-direct {p0}, Lcom/android/settings/display/StyleIconShapePreferenceFragment;->getOverlayInfos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/settings/display/StyleIconShapePreferenceFragment$$ExternalSyntheticLambda1;->INSTANCE:Lcom/android/settings/display/StyleIconShapePreferenceFragment$$ExternalSyntheticLambda1;

    .line 179
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/settings/display/StyleIconShapePreferenceFragment$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/settings/display/StyleIconShapePreferenceFragment$$ExternalSyntheticLambda0;

    .line 180
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 181
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    .line 182
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "package_device_default"

    .line 184
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 185
    :cond_0
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    return v2

    .line 190
    :cond_2
    new-instance v1, Lcom/android/settings/display/StyleIconShapePreferenceFragment$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/settings/display/StyleIconShapePreferenceFragment$1;-><init>(Lcom/android/settings/display/StyleIconShapePreferenceFragment;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    .line 211
    invoke-virtual {v1, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return v2
.end method


# virtual methods
.method protected commit()V
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/android/settings/display/StyleIconShapePreferenceFragment;->adapter:Lcom/android/settings/display/StyleIconShapeRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/android/settings/display/StyleIconShapeRecyclerViewAdapter;->getChoosedItemPkg()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/display/StyleIconShapePreferenceFragment;->setOverlay(Ljava/lang/String;)Z

    return-void
.end method

.method public getHelpResource()I
    .locals 0

    .line 152
    sget p0, Lcom/android/settings/R$string;->display_style_shape:I

    return p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x154

    return p0
.end method

.method protected getPreviewItemResIds()I
    .locals 0

    .line 100
    sget p0, Lcom/android/settings/R$layout;->style_preview_item_shape:I

    return p0
.end method

.method protected getPreviewSampleResIds()I
    .locals 0

    .line 90
    sget p0, Lcom/android/settings/R$layout;->style_preview_sample_shape:I

    return p0
.end method

.method protected getPreviewTitleIds()I
    .locals 0

    .line 95
    sget p0, Lcom/android/settings/R$string;->display_style_shape_hint_title:I

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 105
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 107
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->display_style_shape:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTitle(I)V

    .line 109
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/StyleIconShapePreferenceFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 110
    iget-object p1, p0, Lcom/android/settings/display/StyleIconShapePreferenceFragment;->mOverlayManager:Landroid/content/om/IOverlayManager;

    if-nez p1, :cond_0

    const-string p1, "overlay"

    .line 112
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/content/om/IOverlayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/om/IOverlayManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/StyleIconShapePreferenceFragment;->mOverlayManager:Landroid/content/om/IOverlayManager;

    .line 115
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/display/StyleIconShapePreferenceFragment;->getShapeValueList()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 121
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/display/PreviewLayoutPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 122
    sget p2, Lcom/android/settings/R$id;->preview_sample_content:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 124
    sget p3, Lcom/android/settings/R$id;->recyclerview1:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroidx/recyclerview/widget/RecyclerView;

    .line 125
    new-instance v0, Lcom/android/settings/display/StyleIconShapeRecyclerViewAdapter;

    iget-object v1, p0, Lcom/android/settings/display/StyleIconShapePreferenceFragment;->pkgs:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/android/settings/display/StyleIconShapeRecyclerViewAdapter;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/settings/display/StyleIconShapePreferenceFragment;->adapter:Lcom/android/settings/display/StyleIconShapeRecyclerViewAdapter;

    .line 126
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 127
    invoke-virtual {p3, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 128
    iget-object v0, p0, Lcom/android/settings/display/StyleIconShapePreferenceFragment;->adapter:Lcom/android/settings/display/StyleIconShapeRecyclerViewAdapter;

    invoke-virtual {p3, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 129
    iget-object p3, p0, Lcom/android/settings/display/StyleIconShapePreferenceFragment;->adapter:Lcom/android/settings/display/StyleIconShapeRecyclerViewAdapter;

    iget-object v0, p0, Lcom/android/settings/display/StyleIconShapePreferenceFragment;->selectedPkg:Ljava/lang/String;

    invoke-virtual {p3, v0}, Lcom/android/settings/display/StyleIconShapeRecyclerViewAdapter;->setChoosedItemPkg(Ljava/lang/String;)V

    .line 130
    iget-object p0, p0, Lcom/android/settings/display/StyleIconShapePreferenceFragment;->adapter:Lcom/android/settings/display/StyleIconShapeRecyclerViewAdapter;

    invoke-virtual {p0, p2}, Lcom/android/settings/display/StyleIconShapeRecyclerViewAdapter;->setContentView(Landroid/widget/ImageView;)V

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 137
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 138
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 140
    sget p2, Lcom/android/settings/R$id;->app_bar:I

    invoke-virtual {p0, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/asus/commonresx/widget/AsusResxAppBarLayout;

    const/4 p2, 0x1

    const/4 v0, 0x0

    .line 141
    invoke-virtual {p0, p2, p1, v0}, Lcom/asus/commonresx/widget/AsusResxAppBarLayout;->setPersistCollapsed(ZLandroid/view/View;Z)V

    :cond_0
    return-void
.end method

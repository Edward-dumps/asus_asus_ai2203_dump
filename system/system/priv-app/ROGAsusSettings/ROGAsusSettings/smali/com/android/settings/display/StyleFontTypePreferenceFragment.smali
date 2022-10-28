.class public Lcom/android/settings/display/StyleFontTypePreferenceFragment;
.super Lcom/android/settings/display/PreviewLayoutPreferenceFragment;
.source "StyleFontTypePreferenceFragment.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private adapter:Lcom/android/settings/display/StyleFontTypeRecyclerViewAdapter;

.field private listData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    const-class v0, Lcom/android/settings/display/StyleFontTypePreferenceFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/display/StyleFontTypePreferenceFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/android/settings/display/PreviewLayoutPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected commit()V
    .locals 2

    .line 113
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 114
    iget-object v1, p0, Lcom/android/settings/display/StyleFontTypePreferenceFragment;->adapter:Lcom/android/settings/display/StyleFontTypeRecyclerViewAdapter;

    invoke-virtual {v1}, Lcom/android/settings/display/StyleFontTypeRecyclerViewAdapter;->getChoosedItemId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/flipfont/FontListUtils;->setFont(Landroid/content/Context;I)V

    .line 115
    iget-object p0, p0, Lcom/android/settings/display/StyleFontTypePreferenceFragment;->adapter:Lcom/android/settings/display/StyleFontTypeRecyclerViewAdapter;

    invoke-virtual {p0}, Lcom/android/settings/display/StyleFontTypeRecyclerViewAdapter;->saveValue()V

    return-void
.end method

.method public getHelpResource()I
    .locals 0

    .line 120
    sget p0, Lcom/android/settings/R$string;->monotype_preference_title:I

    return p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x154

    return p0
.end method

.method protected getPreviewItemResIds()I
    .locals 0

    .line 63
    sget p0, Lcom/android/settings/R$layout;->style_preview_item_font_type:I

    return p0
.end method

.method protected getPreviewSampleResIds()I
    .locals 0

    .line 53
    sget p0, Lcom/android/settings/R$layout;->style_preview_sample_font_type:I

    return p0
.end method

.method protected getPreviewTitleIds()I
    .locals 0

    .line 58
    sget p0, Lcom/android/settings/R$string;->display_style_font_type_hint_title:I

    return p0
.end method

.method public initRecycleViewData()V
    .locals 1

    .line 129
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/flipfont/FontListUtils;->getAllFontTypes(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/display/StyleFontTypePreferenceFragment;->listData:Ljava/util/ArrayList;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 68
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 70
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->monotype_preference_title:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTitle(I)V

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/display/StyleFontTypePreferenceFragment;->initRecycleViewData()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 79
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/display/PreviewLayoutPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 81
    sget p2, Lcom/android/settings/R$id;->preview_1:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 82
    sget p3, Lcom/android/settings/R$id;->preview_2:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 83
    sget v0, Lcom/android/settings/R$id;->preview_3:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 84
    sget v1, Lcom/android/settings/R$id;->preview_4:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 85
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 86
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    sget p2, Lcom/android/settings/R$id;->recyclerview1:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    .line 92
    new-instance p3, Lcom/android/settings/display/StyleFontTypeRecyclerViewAdapter;

    iget-object v0, p0, Lcom/android/settings/display/StyleFontTypePreferenceFragment;->listData:Ljava/util/ArrayList;

    invoke-direct {p3, v0}, Lcom/android/settings/display/StyleFontTypeRecyclerViewAdapter;-><init>(Ljava/util/List;)V

    iput-object p3, p0, Lcom/android/settings/display/StyleFontTypePreferenceFragment;->adapter:Lcom/android/settings/display/StyleFontTypeRecyclerViewAdapter;

    .line 93
    new-instance p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p3, v0, v1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 94
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 95
    iget-object p3, p0, Lcom/android/settings/display/StyleFontTypePreferenceFragment;->adapter:Lcom/android/settings/display/StyleFontTypeRecyclerViewAdapter;

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 96
    iget-object p0, p0, Lcom/android/settings/display/StyleFontTypePreferenceFragment;->adapter:Lcom/android/settings/display/StyleFontTypeRecyclerViewAdapter;

    invoke-virtual {p0, v2}, Lcom/android/settings/display/StyleFontTypeRecyclerViewAdapter;->setPreviewText(Ljava/util/List;)V

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 103
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 104
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 106
    sget p2, Lcom/android/settings/R$id;->app_bar:I

    invoke-virtual {p0, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/asus/commonresx/widget/AsusResxAppBarLayout;

    const/4 p2, 0x1

    const/4 v0, 0x0

    .line 107
    invoke-virtual {p0, p2, p1, v0}, Lcom/asus/commonresx/widget/AsusResxAppBarLayout;->setPersistCollapsed(ZLandroid/view/View;Z)V

    :cond_0
    return-void
.end method

.class public Lcom/android/settings/display/StyleFontTypeRecyclerViewAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "StyleFontTypeRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/display/StyleFontTypeRecyclerViewAdapter$FontItem;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/android/settings/display/StyleFontTypeRecyclerViewAdapter$FontItem;",
        ">;"
    }
.end annotation


# static fields
.field private static final ID_PREVIEW_HEADLINE:I


# instance fields
.field private allItem:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field private mChoosedItem:I

.field private mContext:Landroid/content/Context;

.field private previewTexts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$wUo7rY4odXlk7Mzd_ZNi_Vo7FC8(Lcom/android/settings/display/StyleFontTypeRecyclerViewAdapter;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/display/StyleFontTypeRecyclerViewAdapter;->lambda$onBindViewHolder$0(ILandroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 51
    sget v0, Lcom/android/settings/R$id;->preview_1:I

    sput v0, Lcom/android/settings/display/StyleFontTypeRecyclerViewAdapter;->ID_PREVIEW_HEADLINE:I

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Typeface;",
            ">;)V"
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/display/StyleFontTypeRecyclerViewAdapter;->allItem:Ljava/util/List;

    .line 71
    iput-object p1, p0, Lcom/android/settings/display/StyleFontTypeRecyclerViewAdapter;->list:Ljava/util/List;

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(ILandroid/view/View;)V
    .locals 3

    .line 94
    iget-object p2, p0, Lcom/android/settings/display/StyleFontTypeRecyclerViewAdapter;->previewTexts:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 95
    sget v1, Lcom/android/settings/display/StyleFontTypeRecyclerViewAdapter;->ID_PREVIEW_HEADLINE:I

    invoke-virtual {v0}, Landroid/widget/TextView;->getId()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 96
    iget-object v1, p0, Lcom/android/settings/display/StyleFontTypeRecyclerViewAdapter;->list:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Typeface;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_0

    .line 98
    :cond_0
    iget-object v1, p0, Lcom/android/settings/display/StyleFontTypeRecyclerViewAdapter;->list:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    .line 102
    :cond_1
    iput p1, p0, Lcom/android/settings/display/StyleFontTypeRecyclerViewAdapter;->mChoosedItem:I

    .line 103
    invoke-direct {p0}, Lcom/android/settings/display/StyleFontTypeRecyclerViewAdapter;->updateState()V

    return-void
.end method

.method private updateState()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 128
    :goto_0
    iget-object v2, p0, Lcom/android/settings/display/StyleFontTypeRecyclerViewAdapter;->allItem:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 129
    iget-object v2, p0, Lcom/android/settings/display/StyleFontTypeRecyclerViewAdapter;->allItem:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 131
    iget v3, p0, Lcom/android/settings/display/StyleFontTypeRecyclerViewAdapter;->mChoosedItem:I

    if-ne v1, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    move v3, v0

    :goto_1
    invoke-virtual {p0, v2, v3}, Lcom/android/settings/display/StyleFontTypeRecyclerViewAdapter;->setItemChecked(Landroid/widget/TextView;Z)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public getChoosedItemId()I
    .locals 0

    .line 124
    iget p0, p0, Lcom/android/settings/display/StyleFontTypeRecyclerViewAdapter;->mChoosedItem:I

    return p0
.end method

.method public getItemCount()I
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/android/settings/display/StyleFontTypeRecyclerViewAdapter;->list:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 45
    check-cast p1, Lcom/android/settings/display/StyleFontTypeRecyclerViewAdapter$FontItem;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/display/StyleFontTypeRecyclerViewAdapter;->onBindViewHolder(Lcom/android/settings/display/StyleFontTypeRecyclerViewAdapter$FontItem;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/settings/display/StyleFontTypeRecyclerViewAdapter$FontItem;I)V
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/android/settings/display/StyleFontTypeRecyclerViewAdapter;->allItem:Ljava/util/List;

    iget-object v1, p1, Lcom/android/settings/display/StyleFontTypeRecyclerViewAdapter$FontItem;->itemview:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object v0, p1, Lcom/android/settings/display/StyleFontTypeRecyclerViewAdapter$FontItem;->itemview:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/display/StyleFontTypeRecyclerViewAdapter;->list:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 93
    iget-object v0, p1, Lcom/android/settings/display/StyleFontTypeRecyclerViewAdapter$FontItem;->itemview:Landroid/widget/TextView;

    new-instance v1, Lcom/android/settings/display/StyleFontTypeRecyclerViewAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2}, Lcom/android/settings/display/StyleFontTypeRecyclerViewAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/display/StyleFontTypeRecyclerViewAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget v0, p0, Lcom/android/settings/display/StyleFontTypeRecyclerViewAdapter;->mChoosedItem:I

    if-ne p2, v0, :cond_0

    .line 108
    iget-object p1, p1, Lcom/android/settings/display/StyleFontTypeRecyclerViewAdapter$FontItem;->itemview:Landroid/widget/TextView;

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/display/StyleFontTypeRecyclerViewAdapter;->setItemChecked(Landroid/widget/TextView;Z)V

    goto :goto_0

    .line 110
    :cond_0
    iget-object p1, p1, Lcom/android/settings/display/StyleFontTypeRecyclerViewAdapter$FontItem;->itemview:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/display/StyleFontTypeRecyclerViewAdapter;->setItemChecked(Landroid/widget/TextView;Z)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 45
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/display/StyleFontTypeRecyclerViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/settings/display/StyleFontTypeRecyclerViewAdapter$FontItem;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/settings/display/StyleFontTypeRecyclerViewAdapter$FontItem;
    .locals 2

    .line 76
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/android/settings/R$layout;->asus_font_horizontal_item:I

    const/4 v1, 0x0

    .line 77
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 79
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/StyleFontTypeRecyclerViewAdapter;->mContext:Landroid/content/Context;

    const-string v0, "prefs"

    .line 83
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "SavedClickedItem"

    .line 84
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/display/StyleFontTypeRecyclerViewAdapter;->mChoosedItem:I

    .line 86
    new-instance p1, Lcom/android/settings/display/StyleFontTypeRecyclerViewAdapter$FontItem;

    invoke-direct {p1, p0, p2}, Lcom/android/settings/display/StyleFontTypeRecyclerViewAdapter$FontItem;-><init>(Lcom/android/settings/display/StyleFontTypeRecyclerViewAdapter;Landroid/view/View;)V

    return-object p1
.end method

.method public saveValue()V
    .locals 3

    .line 145
    iget-object v0, p0, Lcom/android/settings/display/StyleFontTypeRecyclerViewAdapter;->mContext:Landroid/content/Context;

    const-string v1, "prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 146
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 147
    iget v1, p0, Lcom/android/settings/display/StyleFontTypeRecyclerViewAdapter;->mChoosedItem:I

    const-string v2, "SavedClickedItem"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 148
    iget-object v1, p0, Lcom/android/settings/display/StyleFontTypeRecyclerViewAdapter;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/android/settings/display/StyleFontTypeRecyclerViewAdapter;->mChoosedItem:I

    invoke-static {v1, p0}, Lcom/android/settings/flipfont/FontListAdapter;->getFontPackage(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "SavedFontPackage"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 149
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setItemChecked(Landroid/widget/TextView;Z)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 141
    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setSelected(Z)V

    return-void
.end method

.method public setPreviewText(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/widget/TextView;",
            ">;)V"
        }
    .end annotation

    .line 120
    iput-object p1, p0, Lcom/android/settings/display/StyleFontTypeRecyclerViewAdapter;->previewTexts:Ljava/util/List;

    return-void
.end method

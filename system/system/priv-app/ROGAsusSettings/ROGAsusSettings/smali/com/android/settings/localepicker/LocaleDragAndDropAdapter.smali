.class Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "LocaleDragAndDropAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$CustomViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$CustomViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDragEnabled:Z

.field private final mFeedItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mItemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

.field private mLocalesSetLast:Landroid/os/LocaleList;

.field private mLocalesToSetNext:Landroid/os/LocaleList;

.field private mNumberFormatter:Ljava/text/NumberFormat;

.field private mParentView:Landroidx/recyclerview/widget/RecyclerView;

.field private mRemoveMode:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;)V"
        }
    .end annotation

    .line 88
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mParentView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    .line 59
    iput-boolean v1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mRemoveMode:Z

    const/4 v2, 0x1

    .line 60
    iput-boolean v2, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mDragEnabled:Z

    .line 61
    invoke-static {}, Ljava/text/NumberFormat;->getNumberInstance()Ljava/text/NumberFormat;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mNumberFormatter:Ljava/text/NumberFormat;

    .line 306
    iput-object v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mLocalesToSetNext:Landroid/os/LocaleList;

    .line 307
    iput-object v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mLocalesSetLast:Landroid/os/LocaleList;

    .line 89
    iput-object p2, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    .line 90
    iput-object p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mContext:Landroid/content/Context;

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/high16 p2, 0x41000000    # 8.0f

    .line 92
    invoke-static {v2, p2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    .line 95
    new-instance p2, Landroidx/recyclerview/widget/ItemTouchHelper;

    new-instance v0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$1;

    const/4 v2, 0x3

    invoke-direct {v0, p0, v2, v1, p1}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$1;-><init>(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;IIF)V

    invoke-direct {p2, v0}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    iput-object p2, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mItemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;)Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mDragEnabled:Z

    return p0
.end method

.method static synthetic access$100(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;)Landroidx/recyclerview/widget/ItemTouchHelper;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mItemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;)Landroid/os/LocaleList;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mLocalesToSetNext:Landroid/os/LocaleList;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;Landroid/os/LocaleList;)Landroid/os/LocaleList;
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mLocalesToSetNext:Landroid/os/LocaleList;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;)Landroid/os/LocaleList;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mLocalesSetLast:Landroid/os/LocaleList;

    return-object p0
.end method

.method static synthetic access$302(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;Landroid/os/LocaleList;)Landroid/os/LocaleList;
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mLocalesSetLast:Landroid/os/LocaleList;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;)Landroid/content/Context;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$502(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;Ljava/text/NumberFormat;)Ljava/text/NumberFormat;
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mNumberFormatter:Ljava/text/NumberFormat;

    return-object p1
.end method

.method private setDragEnabled(Z)V
    .locals 0

    .line 340
    iput-boolean p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mDragEnabled:Z

    return-void
.end method


# virtual methods
.method addLocale(Lcom/android/internal/app/LocaleStore$LocaleInfo;)V
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    iget-object p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    .line 290
    invoke-virtual {p0}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->doTheUpdate()V

    return-void
.end method

.method public doTheUpdate()V
    .locals 4

    .line 294
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 295
    new-array v1, v0, [Ljava/util/Locale;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 298
    iget-object v3, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 299
    invoke-virtual {v3}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 302
    :cond_0
    new-instance v0, Landroid/os/LocaleList;

    invoke-direct {v0, v1}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    .line 303
    invoke-virtual {p0, v0}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->updateLocalesWhenAnimationStops(Landroid/os/LocaleList;)V

    return-void
.end method

.method getCheckedCount()I
    .locals 2

    .line 275
    iget-object p0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 276
    invoke-virtual {v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public getFullNameNativeWithoutRegion(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    const-string p0, "\\([^)]+\\)"

    const-string v0, ""

    .line 166
    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "\\\uff08[^\uff09]+\\\uff09"

    .line 168
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public getItemCount()I
    .locals 3

    .line 210
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v2, 0x2

    if-lt v0, v2, :cond_2

    .line 211
    iget-boolean v2, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mRemoveMode:Z

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    .line 214
    invoke-direct {p0, v1}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->setDragEnabled(Z)V

    goto :goto_2

    .line 212
    :cond_2
    :goto_1
    invoke-direct {p0, v1}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->setDragEnabled(Z)V

    :goto_2
    return v0
.end method

.method isFirstLocaleChecked()Z
    .locals 1

    .line 284
    iget-object p0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-virtual {p0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getChecked()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method isRemoveMode()Z
    .locals 0

    .line 247
    iget-boolean p0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mRemoveMode:Z

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 50
    check-cast p1, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$CustomViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->onBindViewHolder(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$CustomViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$CustomViewHolder;I)V
    .locals 5

    .line 175
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 176
    invoke-virtual {p1}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$CustomViewHolder;->getLocaleDragCell()Lcom/android/settings/localepicker/LocaleDragCell;

    move-result-object p1

    const-string v1, "ro.vendor.build.asus.sku"

    const-string v2, "WW"

    .line 178
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CN"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    invoke-virtual {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getFullNameNative()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->getFullNameNativeWithoutRegion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 182
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getFullNameNative()Ljava/lang/String;

    move-result-object v1

    .line 185
    :goto_0
    invoke-virtual {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getFullNameInUiLanguage()Ljava/lang/String;

    move-result-object v2

    .line 186
    invoke-virtual {p1, v1, v2}, Lcom/android/settings/localepicker/LocaleDragCell;->setLabelAndDescription(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-virtual {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isTranslated()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/settings/localepicker/LocaleDragCell;->setLocalized(Z)V

    .line 188
    iget-object v1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mNumberFormatter:Ljava/text/NumberFormat;

    const/4 v2, 0x1

    add-int/2addr p2, v2

    int-to-long v3, p2

    invoke-virtual {v1, v3, v4}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/settings/localepicker/LocaleDragCell;->setMiniLabel(Ljava/lang/String;)V

    .line 189
    iget-boolean p2, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mRemoveMode:Z

    invoke-virtual {p1, p2}, Lcom/android/settings/localepicker/LocaleDragCell;->setShowCheckbox(Z)V

    .line 190
    iget-boolean p2, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mRemoveMode:Z

    xor-int/2addr p2, v2

    invoke-virtual {p1, p2}, Lcom/android/settings/localepicker/LocaleDragCell;->setShowMiniLabel(Z)V

    .line 191
    iget-boolean p2, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mRemoveMode:Z

    const/4 v1, 0x0

    if-nez p2, :cond_1

    iget-boolean p2, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mDragEnabled:Z

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    invoke-virtual {p1, v2}, Lcom/android/settings/localepicker/LocaleDragCell;->setShowHandle(Z)V

    .line 192
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 193
    invoke-virtual {p1}, Lcom/android/settings/localepicker/LocaleDragCell;->getCheckbox()Landroid/widget/CheckBox;

    move-result-object p2

    const/4 v2, 0x0

    .line 196
    invoke-virtual {p2, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 197
    iget-boolean v2, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mRemoveMode:Z

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getChecked()Z

    move-result v1

    :cond_2
    invoke-virtual {p2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 198
    new-instance v0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$2;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$2;-><init>(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;Lcom/android/settings/localepicker/LocaleDragCell;)V

    invoke-virtual {p2, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 50
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$CustomViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$CustomViewHolder;
    .locals 2

    .line 149
    iget-object p2, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/android/settings/R$layout;->locale_drag_cell:I

    const/4 v1, 0x0

    .line 150
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/localepicker/LocaleDragCell;

    .line 151
    invoke-static {}, Lcom/android/settingslib/widget/ThemeUtils;->isDownloadTheme()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 152
    iget-object p2, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/settingslib/widget/ThemeUtils;->getBgColorCode(Landroid/content/Context;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/settingslib/widget/ThemeUtils;->setViewBackgroundColor(Landroid/view/View;I)V

    if-eqz p1, :cond_0

    .line 153
    sget p2, Lcom/android/settings/R$id;->miniLabel:I

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 155
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/widget/ThemeUtils;->getThemeColorCode(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 158
    :cond_0
    new-instance p2, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$CustomViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$CustomViewHolder;-><init>(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;Lcom/android/settings/localepicker/LocaleDragCell;)V

    return-object p2
.end method

.method onItemMove(II)V
    .locals 4

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    .line 221
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 222
    iget-object v1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 223
    iget-object v1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v1, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 227
    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 228
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Negative position in onItemMove %d -> %d"

    .line 227
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocaleDragAndDropAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 231
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 232
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    return-void
.end method

.method removeChecked()V
    .locals 2

    .line 263
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 265
    iget-object v1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-virtual {v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 266
    iget-object v1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 269
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 270
    invoke-virtual {p0}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->doTheUpdate()V

    return-void
.end method

.method removeItem(I)V
    .locals 2

    .line 251
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_2

    if-lt p1, v0, :cond_1

    goto :goto_0

    .line 258
    :cond_1
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 259
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_2
    :goto_0
    return-void
.end method

.method public restoreState(Landroid/os/Bundle;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 366
    iget-boolean v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mRemoveMode:Z

    if-eqz v0, :cond_2

    const-string v0, "selectedLocales"

    .line 368
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 369
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 373
    invoke-virtual {v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->setChecked(Z)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 375
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    nop

    :cond_2
    :goto_1
    return-void
.end method

.method public saveState(Landroid/os/Bundle;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 350
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 351
    iget-object p0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 352
    invoke-virtual {v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 353
    invoke-virtual {v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string p0, "selectedLocales"

    .line 356
    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_2
    return-void
.end method

.method public setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mParentView:Landroidx/recyclerview/widget/RecyclerView;

    .line 144
    iget-object p0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mItemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method setRemoveMode(Z)V
    .locals 3

    .line 238
    iput-boolean p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mRemoveMode:Z

    .line 239
    iget-object p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 241
    iget-object v2, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-virtual {v2, v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->setChecked(Z)V

    .line 242
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public updateLocalesWhenAnimationStops(Landroid/os/LocaleList;)V
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mLocalesToSetNext:Landroid/os/LocaleList;

    invoke-virtual {p1, v0}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 316
    :cond_0
    invoke-static {p1}, Landroid/os/LocaleList;->setDefault(Landroid/os/LocaleList;)V

    .line 318
    iput-object p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mLocalesToSetNext:Landroid/os/LocaleList;

    .line 319
    iget-object p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->mParentView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object p1

    .line 320
    new-instance v0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$3;

    invoke-direct {v0, p0}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$3;-><init>(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->isRunning(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;)Z

    return-void
.end method

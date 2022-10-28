.class public Lcom/android/settings/display/StyleIconShapeRecyclerViewAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "StyleIconShapeRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/display/StyleIconShapeRecyclerViewAdapter$ShapeItem;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/android/settings/display/StyleIconShapeRecyclerViewAdapter$ShapeItem;",
        ">;"
    }
.end annotation


# static fields
.field public static final PREVIEW_BUTTON_DRAWABLE_DEFAULT:I

.field public static final PREVIEW_BUTTON_DRAWABLE_PEBBLE_OVERLAY:I

.field public static final PREVIEW_BUTTON_DRAWABLE_ROUNDEDRECT_OVERLAY:I

.field public static final PREVIEW_BUTTON_DRAWABLE_SQUARE_OVERLAY:I

.field public static final PREVIEW_BUTTON_DRAWABLE_SQUIRCLE_OVERLAY:I

.field public static final PREVIEW_BUTTON_DRAWABLE_TAPEREDRECT_OVERLAY:I

.field public static final PREVIEW_BUTTON_DRAWABLE_TEARDROP_OVERLAY:I

.field public static final PREVIEW_BUTTON_DRAWABLE_VESSEL_OVERLAY:I

.field public static final PREVIEW_DRAWABLE_DEFAULT:I

.field public static final PREVIEW_DRAWABLE_PEBBLE_OVERLAY:I

.field public static final PREVIEW_DRAWABLE_ROUNDEDRECT_OVERLAY:I

.field public static final PREVIEW_DRAWABLE_SQUARE_OVERLAY:I

.field public static final PREVIEW_DRAWABLE_SQUIRCLE_OVERLAY:I

.field public static final PREVIEW_DRAWABLE_TAPEREDRECT_OVERLAY:I

.field public static final PREVIEW_DRAWABLE_TEARDROP_OVERLAY:I

.field public static final PREVIEW_DRAWABLE_VESSEL_OVERLAY:I

.field private static final SHAPE_PACKAGE_NAME:[Ljava/lang/String;

.field private static final SHAPE_PREVIEW_BUTTON_DRAWABLE_ID:[I

.field private static final SHAPE_PREVIEW_DRAWABLE_ID:[I


# instance fields
.field private allItem:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/FrameLayout;",
            ">;"
        }
    .end annotation
.end field

.field private isShowAllShape:Z

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mChoosedItem:I

.field private mChoosedItemPkg:Ljava/lang/String;

.field private mSampleContent:Landroid/widget/ImageView;


# direct methods
.method public static synthetic $r8$lambda$Y96-CUY10QFl4NL8vU-8onQvTJ8(Lcom/android/settings/display/StyleIconShapeRecyclerViewAdapter;ILjava/lang/String;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/display/StyleIconShapeRecyclerViewAdapter;->lambda$onBindViewHolder$0(ILjava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 24

    .line 42
    sget v0, Lcom/android/settings/R$drawable;->preview_sample_shape_default:I

    sput v0, Lcom/android/settings/display/StyleIconShapeRecyclerViewAdapter;->PREVIEW_DRAWABLE_DEFAULT:I

    .line 43
    sget v1, Lcom/android/settings/R$drawable;->preview_sample_shape_teardrop:I

    sput v1, Lcom/android/settings/display/StyleIconShapeRecyclerViewAdapter;->PREVIEW_DRAWABLE_TEARDROP_OVERLAY:I

    .line 44
    sget v2, Lcom/android/settings/R$drawable;->preview_sample_shape_squircle:I

    sput v2, Lcom/android/settings/display/StyleIconShapeRecyclerViewAdapter;->PREVIEW_DRAWABLE_SQUIRCLE_OVERLAY:I

    .line 45
    sget v3, Lcom/android/settings/R$drawable;->preview_sample_shape_roundedrect:I

    sput v3, Lcom/android/settings/display/StyleIconShapeRecyclerViewAdapter;->PREVIEW_DRAWABLE_ROUNDEDRECT_OVERLAY:I

    .line 46
    sget v4, Lcom/android/settings/R$drawable;->preview_sample_shape_square:I

    sput v4, Lcom/android/settings/display/StyleIconShapeRecyclerViewAdapter;->PREVIEW_DRAWABLE_SQUARE_OVERLAY:I

    .line 47
    sget v5, Lcom/android/settings/R$drawable;->preview_sample_shape_pebble:I

    sput v5, Lcom/android/settings/display/StyleIconShapeRecyclerViewAdapter;->PREVIEW_DRAWABLE_PEBBLE_OVERLAY:I

    .line 48
    sget v6, Lcom/android/settings/R$drawable;->preview_sample_shape_taperedrect:I

    sput v6, Lcom/android/settings/display/StyleIconShapeRecyclerViewAdapter;->PREVIEW_DRAWABLE_TAPEREDRECT_OVERLAY:I

    .line 49
    sget v7, Lcom/android/settings/R$drawable;->preview_sample_shape_vessel:I

    sput v7, Lcom/android/settings/display/StyleIconShapeRecyclerViewAdapter;->PREVIEW_DRAWABLE_VESSEL_OVERLAY:I

    .line 51
    sget v8, Lcom/android/settings/R$drawable;->asus_ic_preview_bt_circle:I

    sput v8, Lcom/android/settings/display/StyleIconShapeRecyclerViewAdapter;->PREVIEW_BUTTON_DRAWABLE_DEFAULT:I

    .line 52
    sget v9, Lcom/android/settings/R$drawable;->asus_ic_preview_bt_drop:I

    sput v9, Lcom/android/settings/display/StyleIconShapeRecyclerViewAdapter;->PREVIEW_BUTTON_DRAWABLE_TEARDROP_OVERLAY:I

    .line 53
    sget v10, Lcom/android/settings/R$drawable;->asus_ic_preview_bt_oval:I

    sput v10, Lcom/android/settings/display/StyleIconShapeRecyclerViewAdapter;->PREVIEW_BUTTON_DRAWABLE_SQUIRCLE_OVERLAY:I

    .line 54
    sget v11, Lcom/android/settings/R$drawable;->asus_ic_preview_bt_round_square:I

    sput v11, Lcom/android/settings/display/StyleIconShapeRecyclerViewAdapter;->PREVIEW_BUTTON_DRAWABLE_ROUNDEDRECT_OVERLAY:I

    .line 55
    sget v12, Lcom/android/settings/R$drawable;->asus_ic_preview_bt_square:I

    sput v12, Lcom/android/settings/display/StyleIconShapeRecyclerViewAdapter;->PREVIEW_BUTTON_DRAWABLE_SQUARE_OVERLAY:I

    .line 56
    sget v13, Lcom/android/settings/R$drawable;->asus_ic_preview_bt_pebble:I

    sput v13, Lcom/android/settings/display/StyleIconShapeRecyclerViewAdapter;->PREVIEW_BUTTON_DRAWABLE_PEBBLE_OVERLAY:I

    .line 57
    sget v14, Lcom/android/settings/R$drawable;->asus_ic_preview_bt_taperedrect:I

    sput v14, Lcom/android/settings/display/StyleIconShapeRecyclerViewAdapter;->PREVIEW_BUTTON_DRAWABLE_TAPEREDRECT_OVERLAY:I

    .line 58
    sget v15, Lcom/android/settings/R$drawable;->asus_ic_preview_bt_vessel:I

    sput v15, Lcom/android/settings/display/StyleIconShapeRecyclerViewAdapter;->PREVIEW_BUTTON_DRAWABLE_VESSEL_OVERLAY:I

    const-string v16, "package_device_default"

    const-string v17, "com.android.theme.icon.teardrop"

    const-string v18, "com.android.theme.icon.squircle"

    const-string v19, "com.android.theme.icon.roundedrect"

    const-string v20, "com.android.theme.icon.square"

    const-string v21, "com.android.theme.icon.pebble"

    const-string v22, "com.android.theme.icon.taperedrect"

    const-string v23, "com.android.theme.icon.vessel"

    .line 61
    filled-new-array/range {v16 .. v23}, [Ljava/lang/String;

    move-result-object v16

    sput-object v16, Lcom/android/settings/display/StyleIconShapeRecyclerViewAdapter;->SHAPE_PACKAGE_NAME:[Ljava/lang/String;

    move/from16 v16, v15

    const/16 v15, 0x8

    move/from16 v17, v14

    new-array v14, v15, [I

    const/16 v18, 0x0

    aput v0, v14, v18

    const/4 v0, 0x1

    aput v1, v14, v0

    const/4 v1, 0x2

    aput v2, v14, v1

    const/4 v2, 0x3

    aput v3, v14, v2

    const/4 v3, 0x4

    aput v4, v14, v3

    const/4 v4, 0x5

    aput v5, v14, v4

    const/4 v5, 0x6

    aput v6, v14, v5

    const/4 v6, 0x7

    aput v7, v14, v6

    .line 72
    sput-object v14, Lcom/android/settings/display/StyleIconShapeRecyclerViewAdapter;->SHAPE_PREVIEW_DRAWABLE_ID:[I

    new-array v7, v15, [I

    aput v8, v7, v18

    aput v9, v7, v0

    aput v10, v7, v1

    aput v11, v7, v2

    aput v12, v7, v3

    aput v13, v7, v4

    aput v17, v7, v5

    aput v16, v7, v6

    .line 83
    sput-object v7, Lcom/android/settings/display/StyleIconShapeRecyclerViewAdapter;->SHAPE_PREVIEW_BUTTON_DRAWABLE_ID:[I

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 113
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x1

    .line 94
    iput-boolean v0, p0, Lcom/android/settings/display/StyleIconShapeRecyclerViewAdapter;->isShowAllShape:Z

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/display/StyleIconShapeRecyclerViewAdapter;->allItem:Ljava/util/List;

    .line 114
    iget-boolean v0, p0, Lcom/android/settings/display/StyleIconShapeRecyclerViewAdapter;->isShowAllShape:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 115
    iput-object p1, p0, Lcom/android/settings/display/StyleIconShapeRecyclerViewAdapter;->list:Ljava/util/List;

    goto :goto_1

    .line 117
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move v2, v1

    .line 118
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 119
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 120
    sget-object v4, Lcom/android/settings/display/StyleIconShapeRecyclerViewAdapter;->SHAPE_PACKAGE_NAME:[Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 121
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 124
    :cond_2
    iput-object v0, p0, Lcom/android/settings/display/StyleIconShapeRecyclerViewAdapter;->list:Ljava/util/List;

    .line 127
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/display/StyleIconShapeRecyclerViewAdapter;->getItemCount()I

    move-result p1

    if-ge v1, p1, :cond_3

    .line 128
    iget-object p1, p0, Lcom/android/settings/display/StyleIconShapeRecyclerViewAdapter;->allItem:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private getPreviewButtonIcon(Ljava/lang/String;)I
    .locals 0

    .line 199
    sget-object p0, Lcom/android/settings/display/StyleIconShapeRecyclerViewAdapter;->SHAPE_PACKAGE_NAME:[Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/internal/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    const/4 p1, -0x1

    if-ne p1, p0, :cond_0

    .line 201
    sget p0, Lcom/android/settings/display/StyleIconShapeRecyclerViewAdapter;->PREVIEW_BUTTON_DRAWABLE_DEFAULT:I

    return p0

    .line 203
    :cond_0
    sget-object p1, Lcom/android/settings/display/StyleIconShapeRecyclerViewAdapter;->SHAPE_PREVIEW_BUTTON_DRAWABLE_ID:[I

    aget p0, p1, p0

    return p0
.end method

.method private getPreviewDrawable(Ljava/lang/String;)I
    .locals 0

    .line 208
    sget-object p0, Lcom/android/settings/display/StyleIconShapeRecyclerViewAdapter;->SHAPE_PACKAGE_NAME:[Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/internal/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    const/4 p1, -0x1

    if-ne p1, p0, :cond_0

    .line 210
    sget p0, Lcom/android/settings/display/StyleIconShapeRecyclerViewAdapter;->PREVIEW_DRAWABLE_DEFAULT:I

    return p0

    .line 212
    :cond_0
    sget-object p1, Lcom/android/settings/display/StyleIconShapeRecyclerViewAdapter;->SHAPE_PREVIEW_DRAWABLE_ID:[I

    aget p0, p1, p0

    return p0
.end method

.method private synthetic lambda$onBindViewHolder$0(ILjava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 149
    iput p1, p0, Lcom/android/settings/display/StyleIconShapeRecyclerViewAdapter;->mChoosedItem:I

    .line 150
    iput-object p2, p0, Lcom/android/settings/display/StyleIconShapeRecyclerViewAdapter;->mChoosedItemPkg:Ljava/lang/String;

    .line 151
    invoke-direct {p0}, Lcom/android/settings/display/StyleIconShapeRecyclerViewAdapter;->updateState()V

    .line 153
    iget-object p1, p0, Lcom/android/settings/display/StyleIconShapeRecyclerViewAdapter;->mSampleContent:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/android/settings/display/StyleIconShapeRecyclerViewAdapter;->mChoosedItemPkg:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/android/settings/display/StyleIconShapeRecyclerViewAdapter;->getPreviewDrawable(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private setMask(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 0

    .line 217
    invoke-direct {p0, p2}, Lcom/android/settings/display/StyleIconShapeRecyclerViewAdapter;->getPreviewButtonIcon(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private updateState()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 190
    :goto_0
    iget-object v2, p0, Lcom/android/settings/display/StyleIconShapeRecyclerViewAdapter;->allItem:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 191
    iget-object v2, p0, Lcom/android/settings/display/StyleIconShapeRecyclerViewAdapter;->allItem:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_1

    .line 193
    iget v3, p0, Lcom/android/settings/display/StyleIconShapeRecyclerViewAdapter;->mChoosedItem:I

    if-ne v1, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    move v3, v0

    :goto_1
    invoke-virtual {p0, v2, v3}, Lcom/android/settings/display/StyleIconShapeRecyclerViewAdapter;->setItemChecked(Landroid/widget/FrameLayout;Z)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public getChoosedItemPkg()Ljava/lang/String;
    .locals 0

    .line 170
    iget-object p0, p0, Lcom/android/settings/display/StyleIconShapeRecyclerViewAdapter;->mChoosedItemPkg:Ljava/lang/String;

    return-object p0
.end method

.method public getItemCount()I
    .locals 0

    .line 166
    iget-object p0, p0, Lcom/android/settings/display/StyleIconShapeRecyclerViewAdapter;->list:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 35
    check-cast p1, Lcom/android/settings/display/StyleIconShapeRecyclerViewAdapter$ShapeItem;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/display/StyleIconShapeRecyclerViewAdapter;->onBindViewHolder(Lcom/android/settings/display/StyleIconShapeRecyclerViewAdapter$ShapeItem;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/settings/display/StyleIconShapeRecyclerViewAdapter$ShapeItem;I)V
    .locals 3

    .line 142
    iget-object v0, p0, Lcom/android/settings/display/StyleIconShapeRecyclerViewAdapter;->allItem:Ljava/util/List;

    iget-object v1, p1, Lcom/android/settings/display/StyleIconShapeRecyclerViewAdapter$ShapeItem;->itemview:Landroid/widget/FrameLayout;

    invoke-interface {v0, p2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget-object v0, p0, Lcom/android/settings/display/StyleIconShapeRecyclerViewAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 145
    iget-object v1, p1, Lcom/android/settings/display/StyleIconShapeRecyclerViewAdapter$ShapeItem;->icon:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v0}, Lcom/android/settings/display/StyleIconShapeRecyclerViewAdapter;->setMask(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 146
    iget-object v1, p0, Lcom/android/settings/display/StyleIconShapeRecyclerViewAdapter;->mSampleContent:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings/display/StyleIconShapeRecyclerViewAdapter;->mChoosedItemPkg:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/settings/display/StyleIconShapeRecyclerViewAdapter;->getPreviewDrawable(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 148
    iget-object v1, p1, Lcom/android/settings/display/StyleIconShapeRecyclerViewAdapter$ShapeItem;->itemview:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/android/settings/display/StyleIconShapeRecyclerViewAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p2, v0}, Lcom/android/settings/display/StyleIconShapeRecyclerViewAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/display/StyleIconShapeRecyclerViewAdapter;ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    iget-object p2, p0, Lcom/android/settings/display/StyleIconShapeRecyclerViewAdapter;->mChoosedItemPkg:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 157
    iget-object p1, p1, Lcom/android/settings/display/StyleIconShapeRecyclerViewAdapter$ShapeItem;->itemview:Landroid/widget/FrameLayout;

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/display/StyleIconShapeRecyclerViewAdapter;->setItemChecked(Landroid/widget/FrameLayout;Z)V

    .line 158
    iget-object p1, p0, Lcom/android/settings/display/StyleIconShapeRecyclerViewAdapter;->mSampleContent:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/android/settings/display/StyleIconShapeRecyclerViewAdapter;->mChoosedItemPkg:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/android/settings/display/StyleIconShapeRecyclerViewAdapter;->getPreviewDrawable(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 160
    :cond_0
    iget-object p1, p1, Lcom/android/settings/display/StyleIconShapeRecyclerViewAdapter$ShapeItem;->itemview:Landroid/widget/FrameLayout;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/display/StyleIconShapeRecyclerViewAdapter;->setItemChecked(Landroid/widget/FrameLayout;Z)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/display/StyleIconShapeRecyclerViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/settings/display/StyleIconShapeRecyclerViewAdapter$ShapeItem;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/settings/display/StyleIconShapeRecyclerViewAdapter$ShapeItem;
    .locals 2

    .line 134
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/android/settings/R$layout;->asus_shape_horizontal_item:I

    const/4 v1, 0x0

    .line 135
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 137
    new-instance p2, Lcom/android/settings/display/StyleIconShapeRecyclerViewAdapter$ShapeItem;

    invoke-direct {p2, p0, p1}, Lcom/android/settings/display/StyleIconShapeRecyclerViewAdapter$ShapeItem;-><init>(Lcom/android/settings/display/StyleIconShapeRecyclerViewAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setChoosedItemPkg(Ljava/lang/String;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/android/settings/display/StyleIconShapeRecyclerViewAdapter;->mChoosedItemPkg:Ljava/lang/String;

    return-void
.end method

.method public setContentView(Landroid/widget/ImageView;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/android/settings/display/StyleIconShapeRecyclerViewAdapter;->mSampleContent:Landroid/widget/ImageView;

    return-void
.end method

.method public setItemChecked(Landroid/widget/FrameLayout;Z)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 182
    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setSelected(Z)V

    return-void
.end method

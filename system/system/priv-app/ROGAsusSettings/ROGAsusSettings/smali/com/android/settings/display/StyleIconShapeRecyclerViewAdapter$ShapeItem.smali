.class public Lcom/android/settings/display/StyleIconShapeRecyclerViewAdapter$ShapeItem;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "StyleIconShapeRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/display/StyleIconShapeRecyclerViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShapeItem"
.end annotation


# instance fields
.field public icon:Landroid/widget/ImageView;

.field public itemview:Landroid/widget/FrameLayout;

.field final synthetic this$0:Lcom/android/settings/display/StyleIconShapeRecyclerViewAdapter;


# direct methods
.method public constructor <init>(Lcom/android/settings/display/StyleIconShapeRecyclerViewAdapter;Landroid/view/View;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/android/settings/display/StyleIconShapeRecyclerViewAdapter$ShapeItem;->this$0:Lcom/android/settings/display/StyleIconShapeRecyclerViewAdapter;

    .line 107
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 108
    sget p1, Lcom/android/settings/R$id;->shape_item_layout:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/android/settings/display/StyleIconShapeRecyclerViewAdapter$ShapeItem;->itemview:Landroid/widget/FrameLayout;

    .line 109
    sget p1, Lcom/android/settings/R$id;->shape_icon:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/settings/display/StyleIconShapeRecyclerViewAdapter$ShapeItem;->icon:Landroid/widget/ImageView;

    return-void
.end method

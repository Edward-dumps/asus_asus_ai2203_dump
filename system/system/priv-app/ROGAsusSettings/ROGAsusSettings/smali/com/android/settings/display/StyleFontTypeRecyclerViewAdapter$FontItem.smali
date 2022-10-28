.class public Lcom/android/settings/display/StyleFontTypeRecyclerViewAdapter$FontItem;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "StyleFontTypeRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/display/StyleFontTypeRecyclerViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FontItem"
.end annotation


# instance fields
.field public itemview:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/settings/display/StyleFontTypeRecyclerViewAdapter;


# direct methods
.method public constructor <init>(Lcom/android/settings/display/StyleFontTypeRecyclerViewAdapter;Landroid/view/View;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/android/settings/display/StyleFontTypeRecyclerViewAdapter$FontItem;->this$0:Lcom/android/settings/display/StyleFontTypeRecyclerViewAdapter;

    .line 65
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 66
    sget p1, Lcom/android/settings/R$id;->font_item:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/display/StyleFontTypeRecyclerViewAdapter$FontItem;->itemview:Landroid/widget/TextView;

    return-void
.end method

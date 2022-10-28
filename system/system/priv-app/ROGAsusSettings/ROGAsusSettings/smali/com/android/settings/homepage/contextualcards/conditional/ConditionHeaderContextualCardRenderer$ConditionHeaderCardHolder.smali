.class public Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCardRenderer$ConditionHeaderCardHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ConditionHeaderContextualCardRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCardRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConditionHeaderCardHolder"
.end annotation


# instance fields
.field public final cardView:Lcom/google/android/material/card/MaterialCardView;

.field public final expandIndicator:Landroid/widget/ImageView;

.field public final icons:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 104
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 105
    sget v0, Lcom/android/settings/R$id;->header_icons_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCardRenderer$ConditionHeaderCardHolder;->icons:Landroid/widget/LinearLayout;

    .line 106
    sget v0, Lcom/android/settings/R$id;->expand_indicator:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCardRenderer$ConditionHeaderCardHolder;->expandIndicator:Landroid/widget/ImageView;

    .line 107
    sget v0, Lcom/android/settings/R$id;->condition_card:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/card/MaterialCardView;

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCardRenderer$ConditionHeaderCardHolder;->cardView:Lcom/google/android/material/card/MaterialCardView;

    return-void
.end method

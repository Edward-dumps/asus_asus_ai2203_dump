.class public Lcom/android/settings/homepage/contextualcards/conditional/ConditionFooterContextualCardRenderer$ConditionFooterCardHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ConditionFooterContextualCardRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/homepage/contextualcards/conditional/ConditionFooterContextualCardRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConditionFooterCardHolder"
.end annotation


# instance fields
.field public final collapseButton:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 82
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 83
    sget v0, Lcom/android/settings/R$id;->collapse_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionFooterContextualCardRenderer$ConditionFooterCardHolder;->collapseButton:Landroid/widget/ImageView;

    return-void
.end method

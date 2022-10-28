.class public Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCardRenderer;
.super Ljava/lang/Object;
.source "ConditionHeaderContextualCardRenderer.java"

# interfaces
.implements Lcom/android/settings/homepage/contextualcards/ContextualCardRenderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCardRenderer$ConditionHeaderCardHolder;
    }
.end annotation


# static fields
.field public static final VIEW_TYPE:I


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mControllerRendererPool:Lcom/android/settings/homepage/contextualcards/ControllerRendererPool;


# direct methods
.method public static synthetic $r8$lambda$Bdce5YjVvMxf_J_Cy3v1fJ0KcaY(Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCardRenderer;Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCardRenderer$ConditionHeaderCardHolder;Lcom/android/settings/homepage/contextualcards/ContextualCard;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCardRenderer;->lambda$bindView$0(Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCardRenderer$ConditionHeaderCardHolder;Lcom/android/settings/homepage/contextualcards/ContextualCard;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QIJ26K0OqtYKF41LqIR9RphFKWA(Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCardRenderer;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCardRenderer;->lambda$bindView$1(Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 39
    sget v0, Lcom/android/settings/R$layout;->conditional_card_header:I

    sput v0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCardRenderer;->VIEW_TYPE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/homepage/contextualcards/ControllerRendererPool;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCardRenderer;->mContext:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCardRenderer;->mControllerRendererPool:Lcom/android/settings/homepage/contextualcards/ControllerRendererPool;

    return-void
.end method

.method private synthetic lambda$bindView$0(Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCardRenderer$ConditionHeaderCardHolder;Lcom/android/settings/homepage/contextualcards/ContextualCard;)V
    .locals 4

    .line 74
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCardRenderer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/settings/R$layout;->conditional_card_header_icon:I

    iget-object v2, p1, Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCardRenderer$ConditionHeaderCardHolder;->icons:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 76
    invoke-virtual {p2}, Lcom/android/settings/homepage/contextualcards/ContextualCard;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 77
    iget-object p1, p1, Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCardRenderer$ConditionHeaderCardHolder;->icons:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 78
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCardRenderer;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settingslib/widget/ThemeUtils;->getThemeColorCode(Landroid/content/Context;)I

    move-result p0

    invoke-static {v0, p0}, Lcom/android/settingslib/widget/ThemeUtils;->tintImageView(Landroid/widget/ImageView;I)V

    return-void
.end method

.method private synthetic lambda$bindView$1(Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;Landroid/view/View;)V
    .locals 6

    const/4 v1, 0x0

    const/16 v2, 0x175

    const/16 v3, 0x5de

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p1

    .line 81
    invoke-virtual/range {v0 .. v5}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(IIILjava/lang/String;I)V

    .line 86
    iget-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCardRenderer;->mControllerRendererPool:Lcom/android/settings/homepage/contextualcards/ControllerRendererPool;

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCardRenderer;->mContext:Landroid/content/Context;

    const/4 p2, 0x4

    .line 87
    invoke-virtual {p1, p0, p2}, Lcom/android/settings/homepage/contextualcards/ControllerRendererPool;->getController(Landroid/content/Context;I)Lcom/android/settings/homepage/contextualcards/ContextualCardController;

    move-result-object p0

    check-cast p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardController;

    const/4 p1, 0x1

    .line 89
    invoke-virtual {p0, p1}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardController;->setIsExpanded(Z)V

    .line 90
    invoke-virtual {p0}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardController;->onConditionsChanged()V

    return-void
.end method


# virtual methods
.method public bindView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/android/settings/homepage/contextualcards/ContextualCard;)V
    .locals 4

    .line 58
    check-cast p2, Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCard;

    .line 60
    check-cast p1, Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCardRenderer$ConditionHeaderCardHolder;

    .line 61
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCardRenderer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    .line 63
    iget-object v1, p1, Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCardRenderer$ConditionHeaderCardHolder;->icons:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 65
    invoke-static {}, Lcom/android/settingslib/widget/ThemeUtils;->isDownloadTheme()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    iget-object v1, p1, Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCardRenderer$ConditionHeaderCardHolder;->cardView:Lcom/google/android/material/card/MaterialCardView;

    .line 67
    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCardRenderer;->mContext:Landroid/content/Context;

    .line 68
    invoke-static {v2}, Lcom/android/settingslib/widget/ThemeUtils;->getBgColorCode(Landroid/content/Context;)I

    move-result v2

    const/high16 v3, 0x41c80000    # 25.0f

    invoke-static {v2, v3}, Lcom/android/settingslib/widget/ThemeUtils;->getColorOffset(IF)I

    move-result v2

    .line 67
    invoke-virtual {v1, v2}, Lcom/google/android/material/card/MaterialCardView;->setStrokeColor(I)V

    .line 69
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->content:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCardRenderer;->mContext:Landroid/content/Context;

    .line 70
    invoke-static {v2}, Lcom/android/settingslib/widget/ThemeUtils;->getBgColorCode(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2, v3}, Lcom/android/settingslib/widget/ThemeUtils;->getColorOffset(IF)I

    move-result v2

    .line 69
    invoke-static {v1, v2}, Lcom/android/settingslib/widget/ThemeUtils;->setViewBackgroundColor(Landroid/view/View;I)V

    .line 73
    :cond_0
    invoke-virtual {p2}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCard;->getConditionalCards()Ljava/util/List;

    move-result-object p2

    new-instance v1, Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCardRenderer$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCardRenderer$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCardRenderer;Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCardRenderer$ConditionHeaderCardHolder;)V

    invoke-interface {p2, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 80
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCardRenderer$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCardRenderer$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCardRenderer;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    invoke-static {}, Lcom/android/settingslib/widget/ThemeUtils;->isDownloadTheme()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 94
    iget-object p1, p1, Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCardRenderer$ConditionHeaderCardHolder;->expandIndicator:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCardRenderer;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settingslib/widget/ThemeUtils;->getTextColorCode(Landroid/content/Context;)I

    move-result p0

    invoke-static {p1, p0}, Lcom/android/settingslib/widget/ThemeUtils;->tintImageView(Landroid/widget/ImageView;I)V

    :cond_1
    return-void
.end method

.method public createViewHolder(Landroid/view/View;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 53
    new-instance p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCardRenderer$ConditionHeaderCardHolder;

    invoke-direct {p0, p1}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionHeaderContextualCardRenderer$ConditionHeaderCardHolder;-><init>(Landroid/view/View;)V

    return-object p0
.end method

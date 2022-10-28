.class public Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer;
.super Ljava/lang/Object;
.source "ConditionContextualCardRenderer.java"

# interfaces
.implements Lcom/android/settings/homepage/contextualcards/ContextualCardRenderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer$ConditionalCardHolder;
    }
.end annotation


# static fields
.field public static final VIEW_TYPE_FULL_WIDTH:I

.field public static final VIEW_TYPE_HALF_WIDTH:I


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mControllerRendererPool:Lcom/android/settings/homepage/contextualcards/ControllerRendererPool;


# direct methods
.method public static synthetic $r8$lambda$NiHwgv9nA0UGYkVu5qkgxlM_0aM(Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer;->lambda$initializeActionButton$1(Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ys3qQrg-8p3WSyCU0Yj9YGz7FF8(Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer;->lambda$initializePrimaryClick$0(Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 44
    sget v0, Lcom/android/settings/R$layout;->conditional_card_half_tile:I

    sput v0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer;->VIEW_TYPE_HALF_WIDTH:I

    .line 46
    sget v0, Lcom/android/settings/R$layout;->conditional_card_full_tile:I

    sput v0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer;->VIEW_TYPE_FULL_WIDTH:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/homepage/contextualcards/ControllerRendererPool;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer;->mContext:Landroid/content/Context;

    .line 54
    iput-object p2, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer;->mControllerRendererPool:Lcom/android/settings/homepage/contextualcards/ControllerRendererPool;

    return-void
.end method

.method private initializeActionButton(Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer$ConditionalCardHolder;Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;)V
    .locals 2

    .line 108
    invoke-virtual {p2}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard;->getActionText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 109
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 111
    iget-object p1, p1, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer$ConditionalCardHolder;->firstAction:Landroid/widget/Button;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 113
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 114
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/widget/ThemeUtils;->getThemeColorCode(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 116
    new-instance v0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p3, p2}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    .line 125
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private initializePrimaryClick(Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer$ConditionalCardHolder;Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;)V
    .locals 1

    .line 86
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->content:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p3, p2}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initializeView(Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer$ConditionalCardHolder;Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard;)V
    .locals 2

    .line 97
    iget-object v0, p1, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer$ConditionalCardHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/android/settings/homepage/contextualcards/ContextualCard;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 98
    iget-object v0, p1, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer$ConditionalCardHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/android/settings/homepage/contextualcards/ContextualCard;->getTitleText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v0, p1, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer$ConditionalCardHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/android/settings/homepage/contextualcards/ContextualCard;->getSummaryText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object p2, p1, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer$ConditionalCardHolder;->icon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/widget/ThemeUtils;->getThemeColorCode(Landroid/content/Context;)I

    move-result v0

    invoke-static {p2, v0}, Lcom/android/settingslib/widget/ThemeUtils;->tintImageView(Landroid/widget/ImageView;I)V

    .line 101
    iget-object p2, p1, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer$ConditionalCardHolder;->title:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/widget/ThemeUtils;->getTextColorCode(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 102
    iget-object p2, p1, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer$ConditionalCardHolder;->summary:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settingslib/widget/ThemeUtils;->getTextColorCode(Landroid/content/Context;)I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 103
    iget-object p0, p1, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer$ConditionalCardHolder;->summary:Landroid/widget/TextView;

    const p1, 0x3f19999a    # 0.6f

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    return-void
.end method

.method private synthetic lambda$initializeActionButton$1(Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard;Landroid/view/View;)V
    .locals 2

    .line 117
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    .line 120
    invoke-virtual {p2}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard;->getMetricsConstant()I

    move-result v0

    const/16 v1, 0x178

    .line 118
    invoke-virtual {p1, p3, v1, v0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;II)V

    .line 121
    iget-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer;->mControllerRendererPool:Lcom/android/settings/homepage/contextualcards/ControllerRendererPool;

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard;->getCardType()I

    move-result p3

    invoke-virtual {p1, p0, p3}, Lcom/android/settings/homepage/contextualcards/ControllerRendererPool;->getController(Landroid/content/Context;I)Lcom/android/settings/homepage/contextualcards/ContextualCardController;

    move-result-object p0

    .line 122
    invoke-interface {p0, p2}, Lcom/android/settings/homepage/contextualcards/ContextualCardController;->onActionClick(Lcom/android/settings/homepage/contextualcards/ContextualCard;)V

    return-void
.end method

.method private synthetic lambda$initializePrimaryClick$0(Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard;Landroid/view/View;)V
    .locals 2

    .line 88
    iget-object p3, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer;->mContext:Landroid/content/Context;

    .line 90
    invoke-virtual {p2}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard;->getMetricsConstant()I

    move-result v0

    const/16 v1, 0x177

    .line 88
    invoke-virtual {p1, p3, v1, v0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;II)V

    .line 91
    iget-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer;->mControllerRendererPool:Lcom/android/settings/homepage/contextualcards/ControllerRendererPool;

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer;->mContext:Landroid/content/Context;

    .line 92
    invoke-virtual {p2}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard;->getCardType()I

    move-result p3

    .line 91
    invoke-virtual {p1, p0, p3}, Lcom/android/settings/homepage/contextualcards/ControllerRendererPool;->getController(Landroid/content/Context;I)Lcom/android/settings/homepage/contextualcards/ContextualCardController;

    move-result-object p0

    .line 92
    invoke-interface {p0, p2}, Lcom/android/settings/homepage/contextualcards/ContextualCardController;->onPrimaryClick(Lcom/android/settings/homepage/contextualcards/ContextualCard;)V

    return-void
.end method


# virtual methods
.method public bindView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/android/settings/homepage/contextualcards/ContextualCard;)V
    .locals 6

    .line 64
    move-object v0, p1

    check-cast v0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer$ConditionalCardHolder;

    .line 65
    check-cast p2, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard;

    .line 66
    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    .line 67
    invoke-virtual {v1}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v1

    .line 69
    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer;->mContext:Landroid/content/Context;

    .line 70
    invoke-virtual {p2}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard;->getMetricsConstant()I

    move-result v3

    const/16 v4, 0x5de

    const/4 v5, 0x0

    .line 69
    invoke-virtual {v1, v2, v4, v3, v5}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->visible(Landroid/content/Context;III)V

    .line 71
    invoke-static {}, Lcom/android/settingslib/widget/ThemeUtils;->isDownloadTheme()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 72
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->condition_card:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/card/MaterialCardView;

    .line 73
    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer;->mContext:Landroid/content/Context;

    .line 74
    invoke-static {v2}, Lcom/android/settingslib/widget/ThemeUtils;->getBgColorCode(Landroid/content/Context;)I

    move-result v2

    const/high16 v3, 0x41c80000    # 25.0f

    invoke-static {v2, v3}, Lcom/android/settingslib/widget/ThemeUtils;->getColorOffset(IF)I

    move-result v2

    .line 73
    invoke-virtual {p1, v2}, Lcom/google/android/material/card/MaterialCardView;->setStrokeColor(I)V

    .line 75
    iget-object p1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->content:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer;->mContext:Landroid/content/Context;

    .line 76
    invoke-static {v2}, Lcom/android/settingslib/widget/ThemeUtils;->getBgColorCode(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2, v3}, Lcom/android/settingslib/widget/ThemeUtils;->getColorOffset(IF)I

    move-result v2

    .line 75
    invoke-static {p1, v2}, Lcom/android/settingslib/widget/ThemeUtils;->setViewBackgroundColor(Landroid/view/View;I)V

    .line 78
    :cond_0
    invoke-direct {p0, v0, p2, v1}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer;->initializePrimaryClick(Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer$ConditionalCardHolder;Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;)V

    .line 79
    invoke-direct {p0, v0, p2}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer;->initializeView(Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer$ConditionalCardHolder;Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard;)V

    .line 80
    invoke-direct {p0, v0, p2, v1}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer;->initializeActionButton(Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer$ConditionalCardHolder;Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;)V

    return-void
.end method

.method public createViewHolder(Landroid/view/View;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 59
    new-instance p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer$ConditionalCardHolder;

    invoke-direct {p0, p1}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer$ConditionalCardHolder;-><init>(Landroid/view/View;)V

    return-object p0
.end method

.class public Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardRenderer;
.super Ljava/lang/Object;
.source "LegacySuggestionContextualCardRenderer.java"

# interfaces
.implements Lcom/android/settings/homepage/contextualcards/ContextualCardRenderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardRenderer$LegacySuggestionViewHolder;
    }
.end annotation


# static fields
.field public static final VIEW_TYPE_FULL_WIDTH:I

.field public static final VIEW_TYPE_HALF_WIDTH:I


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mControllerRendererPool:Lcom/android/settings/homepage/contextualcards/ControllerRendererPool;


# direct methods
.method public static synthetic $r8$lambda$2auEa1VIqXISPrXEZEoIWRwqKNY(Lcom/android/settings/homepage/contextualcards/ContextualCardController;Lcom/android/settings/homepage/contextualcards/ContextualCard;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardRenderer;->lambda$bindView$0(Lcom/android/settings/homepage/contextualcards/ContextualCardController;Lcom/android/settings/homepage/contextualcards/ContextualCard;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gCab3MDRSl_54twU5NsR8sPTEIk(Lcom/android/settings/homepage/contextualcards/ContextualCardController;Lcom/android/settings/homepage/contextualcards/ContextualCard;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardRenderer;->lambda$bindView$1(Lcom/android/settings/homepage/contextualcards/ContextualCardController;Lcom/android/settings/homepage/contextualcards/ContextualCard;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 37
    sget v0, Lcom/android/settings/R$layout;->legacy_suggestion_tile:I

    sput v0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardRenderer;->VIEW_TYPE_FULL_WIDTH:I

    .line 38
    sget v0, Lcom/android/settings/R$layout;->legacy_suggestion_half_tile:I

    sput v0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardRenderer;->VIEW_TYPE_HALF_WIDTH:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/homepage/contextualcards/ControllerRendererPool;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardRenderer;->mContext:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardRenderer;->mControllerRendererPool:Lcom/android/settings/homepage/contextualcards/ControllerRendererPool;

    return-void
.end method

.method private static synthetic lambda$bindView$0(Lcom/android/settings/homepage/contextualcards/ContextualCardController;Lcom/android/settings/homepage/contextualcards/ContextualCard;Landroid/view/View;)V
    .locals 0

    .line 74
    invoke-interface {p0, p1}, Lcom/android/settings/homepage/contextualcards/ContextualCardController;->onPrimaryClick(Lcom/android/settings/homepage/contextualcards/ContextualCard;)V

    return-void
.end method

.method private static synthetic lambda$bindView$1(Lcom/android/settings/homepage/contextualcards/ContextualCardController;Lcom/android/settings/homepage/contextualcards/ContextualCard;Landroid/view/View;)V
    .locals 0

    .line 75
    invoke-interface {p0, p1}, Lcom/android/settings/homepage/contextualcards/ContextualCardController;->onDismissed(Lcom/android/settings/homepage/contextualcards/ContextualCard;)V

    return-void
.end method


# virtual methods
.method public bindView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/android/settings/homepage/contextualcards/ContextualCard;)V
    .locals 3

    .line 57
    move-object v0, p1

    check-cast v0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardRenderer$LegacySuggestionViewHolder;

    .line 59
    invoke-static {}, Lcom/android/settingslib/widget/ThemeUtils;->isDownloadTheme()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->suggestion_card_content:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardRenderer;->mContext:Landroid/content/Context;

    .line 61
    invoke-static {v1}, Lcom/android/settingslib/widget/ThemeUtils;->getBgColorCode(Landroid/content/Context;)I

    move-result v1

    const/high16 v2, 0x41c80000    # 25.0f

    invoke-static {v1, v2}, Lcom/android/settingslib/widget/ThemeUtils;->getColorOffset(IF)I

    move-result v1

    .line 60
    invoke-static {p1, v1}, Lcom/android/settingslib/widget/ThemeUtils;->setViewBackgroundColor(Landroid/view/View;I)V

    .line 64
    :cond_0
    iget-object p1, p0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardRenderer;->mControllerRendererPool:Lcom/android/settings/homepage/contextualcards/ControllerRendererPool;

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardRenderer;->mContext:Landroid/content/Context;

    .line 65
    invoke-virtual {p2}, Lcom/android/settings/homepage/contextualcards/ContextualCard;->getCardType()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/android/settings/homepage/contextualcards/ControllerRendererPool;->getController(Landroid/content/Context;I)Lcom/android/settings/homepage/contextualcards/ContextualCardController;

    move-result-object p1

    .line 66
    iget-object v1, v0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardRenderer$LegacySuggestionViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/android/settings/homepage/contextualcards/ContextualCard;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 67
    iget-object v1, v0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardRenderer$LegacySuggestionViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/android/settings/homepage/contextualcards/ContextualCard;->getTitleText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v1, v0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardRenderer$LegacySuggestionViewHolder;->title:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardRenderer;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settingslib/widget/ThemeUtils;->getTextColorCode(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 69
    iget-object v1, v0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardRenderer$LegacySuggestionViewHolder;->summary:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 70
    invoke-virtual {p2}, Lcom/android/settings/homepage/contextualcards/ContextualCard;->getSummaryText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v1, v0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardRenderer$LegacySuggestionViewHolder;->summary:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardRenderer;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settingslib/widget/ThemeUtils;->getTextColorCode(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 72
    iget-object v1, v0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardRenderer$LegacySuggestionViewHolder;->summary:Landroid/widget/TextView;

    const v2, 0x3f19999a    # 0.6f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 74
    :cond_1
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardRenderer$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, p2}, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardRenderer$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/homepage/contextualcards/ContextualCardController;Lcom/android/settings/homepage/contextualcards/ContextualCard;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v1, v0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardRenderer$LegacySuggestionViewHolder;->closeButton:Landroid/view/View;

    new-instance v2, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardRenderer$$ExternalSyntheticLambda1;

    invoke-direct {v2, p1, p2}, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardRenderer$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/homepage/contextualcards/ContextualCardController;Lcom/android/settings/homepage/contextualcards/ContextualCard;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object p1, v0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardRenderer$LegacySuggestionViewHolder;->icon:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardRenderer;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/settingslib/widget/ThemeUtils;->getThemeColorCode(Landroid/content/Context;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/settingslib/widget/ThemeUtils;->tintImageView(Landroid/widget/ImageView;I)V

    .line 78
    iget-object p1, v0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardRenderer$LegacySuggestionViewHolder;->closeButtonImg:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardRenderer;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settingslib/widget/ThemeUtils;->getTextColorCode(Landroid/content/Context;)I

    move-result p0

    invoke-static {p1, p0}, Lcom/android/settingslib/widget/ThemeUtils;->tintImageView(Landroid/widget/ImageView;I)V

    return-void
.end method

.method public createViewHolder(Landroid/view/View;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 52
    new-instance p0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardRenderer$LegacySuggestionViewHolder;

    invoke-direct {p0, p1}, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardRenderer$LegacySuggestionViewHolder;-><init>(Landroid/view/View;)V

    return-object p0
.end method

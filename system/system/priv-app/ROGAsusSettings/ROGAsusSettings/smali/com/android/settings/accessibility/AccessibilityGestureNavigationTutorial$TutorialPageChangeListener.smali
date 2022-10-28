.class Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial$TutorialPageChangeListener;
.super Ljava/lang/Object;
.source "AccessibilityGestureNavigationTutorial.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TutorialPageChangeListener"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mInstruction:Landroid/widget/TextSwitcher;

.field private mLastTutorialPagePosition:I

.field private final mTitle:Landroid/widget/TextSwitcher;

.field private final mTutorialPages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial$TutorialPage;",
            ">;"
        }
    .end annotation
.end field

.field private final mViewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroidx/viewpager/widget/ViewPager;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/viewpager/widget/ViewPager;",
            "Landroid/view/ViewGroup;",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial$TutorialPage;",
            ">;)V"
        }
    .end annotation

    .line 462
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 454
    iput v0, p0, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial$TutorialPageChangeListener;->mLastTutorialPagePosition:I

    .line 463
    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial$TutorialPageChangeListener;->mContext:Landroid/content/Context;

    .line 464
    iput-object p2, p0, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial$TutorialPageChangeListener;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 465
    check-cast p3, Landroid/widget/TextSwitcher;

    iput-object p3, p0, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial$TutorialPageChangeListener;->mTitle:Landroid/widget/TextSwitcher;

    .line 466
    check-cast p4, Landroid/widget/TextSwitcher;

    iput-object p4, p0, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial$TutorialPageChangeListener;->mInstruction:Landroid/widget/TextSwitcher;

    .line 467
    iput-object p5, p0, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial$TutorialPageChangeListener;->mTutorialPages:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 7

    .line 478
    iget v0, p0, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial$TutorialPageChangeListener;->mLastTutorialPagePosition:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, p1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v3, "android"

    const-string v4, "anim"

    if-eqz v0, :cond_1

    const v5, 0x10a0002

    goto :goto_1

    .line 484
    :cond_1
    iget-object v5, p0, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial$TutorialPageChangeListener;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "slide_in_right"

    invoke-virtual {v5, v6, v4, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    :goto_1
    if-eqz v0, :cond_2

    const v0, 0x10a0003

    goto :goto_2

    .line 490
    :cond_2
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial$TutorialPageChangeListener;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v6, "slide_out_left"

    invoke-virtual {v0, v6, v4, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 492
    :goto_2
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial$TutorialPageChangeListener;->mTitle:Landroid/widget/TextSwitcher;

    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial$TutorialPageChangeListener;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextSwitcher;->setInAnimation(Landroid/content/Context;I)V

    .line 493
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial$TutorialPageChangeListener;->mTitle:Landroid/widget/TextSwitcher;

    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial$TutorialPageChangeListener;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v0}, Landroid/widget/TextSwitcher;->setOutAnimation(Landroid/content/Context;I)V

    .line 494
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial$TutorialPageChangeListener;->mTitle:Landroid/widget/TextSwitcher;

    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial$TutorialPageChangeListener;->mTutorialPages:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial$TutorialPage;

    invoke-virtual {v4}, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial$TutorialPage;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 496
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial$TutorialPageChangeListener;->mInstruction:Landroid/widget/TextSwitcher;

    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial$TutorialPageChangeListener;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextSwitcher;->setInAnimation(Landroid/content/Context;I)V

    .line 497
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial$TutorialPageChangeListener;->mInstruction:Landroid/widget/TextSwitcher;

    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial$TutorialPageChangeListener;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v0}, Landroid/widget/TextSwitcher;->setOutAnimation(Landroid/content/Context;I)V

    .line 498
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial$TutorialPageChangeListener;->mInstruction:Landroid/widget/TextSwitcher;

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial$TutorialPageChangeListener;->mTutorialPages:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial$TutorialPage;

    invoke-virtual {v3}, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial$TutorialPage;->getInstruction()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 500
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial$TutorialPageChangeListener;->mTutorialPages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial$TutorialPage;

    .line 501
    invoke-virtual {v3}, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial$TutorialPage;->getIndicatorIcon()Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_3

    .line 503
    :cond_3
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial$TutorialPageChangeListener;->mTutorialPages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial$TutorialPage;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial$TutorialPage;->getIndicatorIcon()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 504
    iput p1, p0, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial$TutorialPageChangeListener;->mLastTutorialPagePosition:I

    add-int/2addr p1, v2

    .line 507
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial$TutorialPageChangeListener;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial$TutorialPageChangeListener;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settings/R$string;->accessibility_tutorial_pager:I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 509
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v1

    iget-object p0, p0, Lcom/android/settings/accessibility/AccessibilityGestureNavigationTutorial$TutorialPageChangeListener;->mTutorialPages:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v5, v2

    .line 508
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 507
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

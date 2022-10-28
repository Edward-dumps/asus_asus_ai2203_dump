.class Lcom/android/settings/display/AllInOnePreviewPagerAdapter$PreviewFrameAnimatorListener;
.super Ljava/lang/Object;
.source "AllInOnePreviewPagerAdapter.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/display/AllInOnePreviewPagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreviewFrameAnimatorListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/display/AllInOnePreviewPagerAdapter;


# direct methods
.method private constructor <init>(Lcom/android/settings/display/AllInOnePreviewPagerAdapter;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/android/settings/display/AllInOnePreviewPagerAdapter$PreviewFrameAnimatorListener;->this$0:Lcom/android/settings/display/AllInOnePreviewPagerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/display/AllInOnePreviewPagerAdapter;Lcom/android/settings/display/AllInOnePreviewPagerAdapter$1;)V
    .locals 0

    .line 212
    invoke-direct {p0, p1}, Lcom/android/settings/display/AllInOnePreviewPagerAdapter$PreviewFrameAnimatorListener;-><init>(Lcom/android/settings/display/AllInOnePreviewPagerAdapter;)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 220
    iget-object p1, p0, Lcom/android/settings/display/AllInOnePreviewPagerAdapter$PreviewFrameAnimatorListener;->this$0:Lcom/android/settings/display/AllInOnePreviewPagerAdapter;

    invoke-static {p1}, Lcom/android/settings/display/AllInOnePreviewPagerAdapter;->access$110(Lcom/android/settings/display/AllInOnePreviewPagerAdapter;)I

    .line 221
    iget-object p0, p0, Lcom/android/settings/display/AllInOnePreviewPagerAdapter$PreviewFrameAnimatorListener;->this$0:Lcom/android/settings/display/AllInOnePreviewPagerAdapter;

    invoke-static {p0}, Lcom/android/settings/display/AllInOnePreviewPagerAdapter;->access$200(Lcom/android/settings/display/AllInOnePreviewPagerAdapter;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 215
    iget-object p0, p0, Lcom/android/settings/display/AllInOnePreviewPagerAdapter$PreviewFrameAnimatorListener;->this$0:Lcom/android/settings/display/AllInOnePreviewPagerAdapter;

    invoke-static {p0}, Lcom/android/settings/display/AllInOnePreviewPagerAdapter;->access$108(Lcom/android/settings/display/AllInOnePreviewPagerAdapter;)I

    return-void
.end method

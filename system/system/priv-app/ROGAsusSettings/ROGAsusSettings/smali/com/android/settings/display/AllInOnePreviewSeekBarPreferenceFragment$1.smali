.class Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment$1;
.super Ljava/lang/Object;
.source "AllInOnePreviewSeekBarPreferenceFragment.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;)V
    .locals 0

    .line 351
    iput-object p1, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment$1;->this$0:Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    .locals 0

    .line 365
    iget-object p0, p0, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment$1;->this$0:Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;

    invoke-static {p0}, Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;->access$700(Lcom/android/settings/display/AllInOnePreviewSeekBarPreferenceFragment;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p0

    const/16 p1, 0x4000

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    return-void
.end method

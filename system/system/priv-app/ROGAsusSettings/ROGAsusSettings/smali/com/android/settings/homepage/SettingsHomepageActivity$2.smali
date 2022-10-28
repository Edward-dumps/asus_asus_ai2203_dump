.class Lcom/android/settings/homepage/SettingsHomepageActivity$2;
.super Ljava/lang/Object;
.source "SettingsHomepageActivity.java"

# interfaces
.implements Landroidx/core/widget/NestedScrollView$OnScrollChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/homepage/SettingsHomepageActivity;->setNestedScrollViewListener(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/homepage/SettingsHomepageActivity;

.field final synthetic val$scroller:Landroidx/core/widget/NestedScrollView;


# direct methods
.method constructor <init>(Lcom/android/settings/homepage/SettingsHomepageActivity;Landroidx/core/widget/NestedScrollView;)V
    .locals 0

    .line 257
    iput-object p1, p0, Lcom/android/settings/homepage/SettingsHomepageActivity$2;->this$0:Lcom/android/settings/homepage/SettingsHomepageActivity;

    iput-object p2, p0, Lcom/android/settings/homepage/SettingsHomepageActivity$2;->val$scroller:Landroidx/core/widget/NestedScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChange(Landroidx/core/widget/NestedScrollView;IIII)V
    .locals 0

    if-eqz p3, :cond_1

    const/4 p2, 0x1

    .line 262
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->canScrollVertically(I)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, -0x1

    .line 263
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->canScrollVertically(I)Z

    move-result p1

    if-nez p1, :cond_1

    .line 264
    :cond_0
    iget-object p1, p0, Lcom/android/settings/homepage/SettingsHomepageActivity$2;->this$0:Lcom/android/settings/homepage/SettingsHomepageActivity;

    iget-boolean p1, p1, Lcom/android/settings/homepage/SettingsHomepageActivity;->isConfigChange:Z

    if-nez p1, :cond_1

    .line 265
    iget-object p1, p0, Lcom/android/settings/homepage/SettingsHomepageActivity$2;->val$scroller:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/asus/commonresx/AsusResxUtils;->setListVibrationEffect(Landroid/content/Context;)V

    :cond_1
    if-nez p3, :cond_3

    .line 272
    iget-object p1, p0, Lcom/android/settings/homepage/SettingsHomepageActivity$2;->this$0:Lcom/android/settings/homepage/SettingsHomepageActivity;

    iget-boolean p2, p1, Lcom/android/settings/homepage/SettingsHomepageActivity;->isConfigChange:Z

    if-eqz p2, :cond_2

    const/4 p0, 0x0

    .line 273
    iput-boolean p0, p1, Lcom/android/settings/homepage/SettingsHomepageActivity;->isConfigChange:Z

    goto :goto_0

    .line 275
    :cond_2
    iget-object p0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity$2;->val$scroller:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/asus/commonresx/AsusResxUtils;->setListVibrationEffect(Landroid/content/Context;)V

    :cond_3
    :goto_0
    return-void
.end method

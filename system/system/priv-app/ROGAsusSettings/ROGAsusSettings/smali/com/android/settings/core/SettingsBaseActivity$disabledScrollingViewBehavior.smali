.class Lcom/android/settings/core/SettingsBaseActivity$disabledScrollingViewBehavior;
.super Lcom/asus/commonresx/widget/AsusResxScrollingViewBehavior;
.source "SettingsBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/core/SettingsBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "disabledScrollingViewBehavior"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/core/SettingsBaseActivity;


# direct methods
.method public constructor <init>(Lcom/android/settings/core/SettingsBaseActivity;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 338
    iput-object p1, p0, Lcom/android/settings/core/SettingsBaseActivity$disabledScrollingViewBehavior;->this$0:Lcom/android/settings/core/SettingsBaseActivity;

    .line 339
    invoke-direct {p0, p2, p3}, Lcom/asus/commonresx/widget/AsusResxScrollingViewBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z
    .locals 1

    const/4 v0, 0x0

    .line 345
    invoke-virtual {p4, v0}, Landroid/view/View;->setNestedScrollingEnabled(Z)V

    .line 346
    invoke-super/range {p0 .. p6}, Lcom/asus/commonresx/widget/AsusResxScrollingViewBehavior;->onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z

    move-result p0

    return p0
.end method

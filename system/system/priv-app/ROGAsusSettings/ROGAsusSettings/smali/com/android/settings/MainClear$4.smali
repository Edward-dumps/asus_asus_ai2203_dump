.class Lcom/android/settings/MainClear$4;
.super Ljava/lang/Object;
.source "MainClear.java"

# interfaces
.implements Landroid/view/View$OnScrollChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MainClear;->establishInitialState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MainClear;


# direct methods
.method constructor <init>(Lcom/android/settings/MainClear;)V
    .locals 0

    .line 388
    iput-object p1, p0, Lcom/android/settings/MainClear$4;->this$0:Lcom/android/settings/MainClear;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChange(Landroid/view/View;IIII)V
    .locals 0

    .line 392
    instance-of p2, p1, Landroid/widget/ScrollView;

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/android/settings/MainClear$4;->this$0:Lcom/android/settings/MainClear;

    check-cast p1, Landroid/widget/ScrollView;

    invoke-virtual {p2, p1}, Lcom/android/settings/MainClear;->hasReachedBottom(Landroid/widget/ScrollView;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 393
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/android/settings/LiveDemoUnit;->isDemoAppActivated()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 396
    :cond_0
    iget-object p1, p0, Lcom/android/settings/MainClear$4;->this$0:Lcom/android/settings/MainClear;

    iget-object p1, p1, Lcom/android/settings/MainClear;->mInitiateButton:Landroid/widget/Button;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    .line 394
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/settings/MainClear$4;->this$0:Lcom/android/settings/MainClear;

    iget-object p1, p1, Lcom/android/settings/MainClear;->mInitiateButton:Landroid/widget/Button;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 398
    :goto_1
    iget-object p0, p0, Lcom/android/settings/MainClear$4;->this$0:Lcom/android/settings/MainClear;

    iget-object p0, p0, Lcom/android/settings/MainClear;->mScrollView:Landroid/widget/ScrollView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    :cond_2
    return-void
.end method

.class Lcom/android/settings/accessibility/BalanceSeekBar$1;
.super Lcom/android/settings/theme/AsusOnSeekBarChangeListener;
.source "BalanceSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/BalanceSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/BalanceSeekBar;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/BalanceSeekBar;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/android/settings/accessibility/BalanceSeekBar$1;->this$0:Lcom/android/settings/accessibility/BalanceSeekBar;

    invoke-direct {p0}, Lcom/android/settings/theme/AsusOnSeekBarChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4

    .line 75
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/theme/AsusOnSeekBarChangeListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    if-eqz p3, :cond_4

    .line 78
    iget-object v0, p0, Lcom/android/settings/accessibility/BalanceSeekBar$1;->this$0:Lcom/android/settings/accessibility/BalanceSeekBar;

    invoke-static {v0}, Lcom/android/settings/accessibility/BalanceSeekBar;->access$200(Lcom/android/settings/accessibility/BalanceSeekBar;)I

    move-result v0

    if-eq p2, v0, :cond_0

    int-to-float v0, p2

    iget-object v1, p0, Lcom/android/settings/accessibility/BalanceSeekBar$1;->this$0:Lcom/android/settings/accessibility/BalanceSeekBar;

    .line 79
    invoke-static {v1}, Lcom/android/settings/accessibility/BalanceSeekBar;->access$200(Lcom/android/settings/accessibility/BalanceSeekBar;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/settings/accessibility/BalanceSeekBar$1;->this$0:Lcom/android/settings/accessibility/BalanceSeekBar;

    invoke-static {v2}, Lcom/android/settings/accessibility/BalanceSeekBar;->access$300(Lcom/android/settings/accessibility/BalanceSeekBar;)F

    move-result v2

    sub-float/2addr v1, v2

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/accessibility/BalanceSeekBar$1;->this$0:Lcom/android/settings/accessibility/BalanceSeekBar;

    .line 80
    invoke-static {v1}, Lcom/android/settings/accessibility/BalanceSeekBar;->access$200(Lcom/android/settings/accessibility/BalanceSeekBar;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/settings/accessibility/BalanceSeekBar$1;->this$0:Lcom/android/settings/accessibility/BalanceSeekBar;

    invoke-static {v2}, Lcom/android/settings/accessibility/BalanceSeekBar;->access$300(Lcom/android/settings/accessibility/BalanceSeekBar;)F

    move-result v2

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 81
    iget-object p2, p0, Lcom/android/settings/accessibility/BalanceSeekBar$1;->this$0:Lcom/android/settings/accessibility/BalanceSeekBar;

    invoke-static {p2}, Lcom/android/settings/accessibility/BalanceSeekBar;->access$200(Lcom/android/settings/accessibility/BalanceSeekBar;)I

    move-result p2

    .line 82
    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/BalanceSeekBar$1;->this$0:Lcom/android/settings/accessibility/BalanceSeekBar;

    invoke-static {v0}, Lcom/android/settings/accessibility/BalanceSeekBar;->access$400(Lcom/android/settings/accessibility/BalanceSeekBar;)I

    move-result v0

    if-eq p2, v0, :cond_3

    .line 85
    iget-object v0, p0, Lcom/android/settings/accessibility/BalanceSeekBar$1;->this$0:Lcom/android/settings/accessibility/BalanceSeekBar;

    invoke-static {v0}, Lcom/android/settings/accessibility/BalanceSeekBar;->access$200(Lcom/android/settings/accessibility/BalanceSeekBar;)I

    move-result v0

    if-eq p2, v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/accessibility/BalanceSeekBar$1;->this$0:Lcom/android/settings/accessibility/BalanceSeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getMin()I

    move-result v0

    if-eq p2, v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/accessibility/BalanceSeekBar$1;->this$0:Lcom/android/settings/accessibility/BalanceSeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    if-ne p2, v0, :cond_2

    :cond_1
    const/4 v0, 0x4

    .line 86
    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->performHapticFeedback(I)Z

    .line 88
    :cond_2
    iget-object v0, p0, Lcom/android/settings/accessibility/BalanceSeekBar$1;->this$0:Lcom/android/settings/accessibility/BalanceSeekBar;

    invoke-static {v0, p2}, Lcom/android/settings/accessibility/BalanceSeekBar;->access$402(Lcom/android/settings/accessibility/BalanceSeekBar;I)I

    .line 90
    :cond_3
    iget-object v0, p0, Lcom/android/settings/accessibility/BalanceSeekBar$1;->this$0:Lcom/android/settings/accessibility/BalanceSeekBar;

    invoke-static {v0}, Lcom/android/settings/accessibility/BalanceSeekBar;->access$200(Lcom/android/settings/accessibility/BalanceSeekBar;)I

    move-result v0

    sub-int v0, p2, v0

    int-to-float v0, v0

    const v1, 0x3c23d70a    # 0.01f

    mul-float/2addr v0, v1

    .line 91
    iget-object v1, p0, Lcom/android/settings/accessibility/BalanceSeekBar$1;->this$0:Lcom/android/settings/accessibility/BalanceSeekBar;

    invoke-static {v1}, Lcom/android/settings/accessibility/BalanceSeekBar;->access$500(Lcom/android/settings/accessibility/BalanceSeekBar;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "master_balance"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    .line 99
    :cond_4
    iget-object v0, p0, Lcom/android/settings/accessibility/BalanceSeekBar$1;->this$0:Lcom/android/settings/accessibility/BalanceSeekBar;

    invoke-static {v0}, Lcom/android/settings/accessibility/BalanceSeekBar;->access$000(Lcom/android/settings/accessibility/BalanceSeekBar;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 100
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/accessibility/BalanceSeekBar$1;->this$0:Lcom/android/settings/accessibility/BalanceSeekBar;

    invoke-static {v1}, Lcom/android/settings/accessibility/BalanceSeekBar;->access$100(Lcom/android/settings/accessibility/BalanceSeekBar;)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 101
    iget-object p0, p0, Lcom/android/settings/accessibility/BalanceSeekBar$1;->this$0:Lcom/android/settings/accessibility/BalanceSeekBar;

    invoke-static {p0}, Lcom/android/settings/accessibility/BalanceSeekBar;->access$100(Lcom/android/settings/accessibility/BalanceSeekBar;)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 103
    :cond_5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    .line 65
    invoke-super {p0, p1}, Lcom/android/settings/theme/AsusOnSeekBarChangeListener;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    .line 66
    iget-object v0, p0, Lcom/android/settings/accessibility/BalanceSeekBar$1;->this$0:Lcom/android/settings/accessibility/BalanceSeekBar;

    invoke-static {v0}, Lcom/android/settings/accessibility/BalanceSeekBar;->access$000(Lcom/android/settings/accessibility/BalanceSeekBar;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 67
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/accessibility/BalanceSeekBar$1;->this$0:Lcom/android/settings/accessibility/BalanceSeekBar;

    invoke-static {v1}, Lcom/android/settings/accessibility/BalanceSeekBar;->access$100(Lcom/android/settings/accessibility/BalanceSeekBar;)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 68
    iget-object p0, p0, Lcom/android/settings/accessibility/BalanceSeekBar$1;->this$0:Lcom/android/settings/accessibility/BalanceSeekBar;

    invoke-static {p0}, Lcom/android/settings/accessibility/BalanceSeekBar;->access$100(Lcom/android/settings/accessibility/BalanceSeekBar;)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    .line 70
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/android/settings/accessibility/BalanceSeekBar$1;->this$0:Lcom/android/settings/accessibility/BalanceSeekBar;

    invoke-static {v0}, Lcom/android/settings/accessibility/BalanceSeekBar;->access$000(Lcom/android/settings/accessibility/BalanceSeekBar;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 56
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/accessibility/BalanceSeekBar$1;->this$0:Lcom/android/settings/accessibility/BalanceSeekBar;

    invoke-static {v1}, Lcom/android/settings/accessibility/BalanceSeekBar;->access$100(Lcom/android/settings/accessibility/BalanceSeekBar;)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 57
    iget-object v1, p0, Lcom/android/settings/accessibility/BalanceSeekBar$1;->this$0:Lcom/android/settings/accessibility/BalanceSeekBar;

    invoke-static {v1}, Lcom/android/settings/accessibility/BalanceSeekBar;->access$100(Lcom/android/settings/accessibility/BalanceSeekBar;)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    .line 59
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    invoke-super {p0, p1}, Lcom/android/settings/theme/AsusOnSeekBarChangeListener;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    return-void

    :catchall_0
    move-exception p0

    .line 59
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

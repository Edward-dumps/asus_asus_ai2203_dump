.class Lcom/android/settings/accessibility/ToggleAutoclickCustomSeekbarController$1;
.super Lcom/android/settings/theme/AsusOnSeekBarChangeListener;
.source "ToggleAutoclickCustomSeekbarController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/ToggleAutoclickCustomSeekbarController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/ToggleAutoclickCustomSeekbarController;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/ToggleAutoclickCustomSeekbarController;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/android/settings/accessibility/ToggleAutoclickCustomSeekbarController$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickCustomSeekbarController;

    invoke-direct {p0}, Lcom/android/settings/theme/AsusOnSeekBarChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 81
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/theme/AsusOnSeekBarChangeListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 82
    iget-object p0, p0, Lcom/android/settings/accessibility/ToggleAutoclickCustomSeekbarController$1;->this$0:Lcom/android/settings/accessibility/ToggleAutoclickCustomSeekbarController;

    invoke-static {p0, p2}, Lcom/android/settings/accessibility/ToggleAutoclickCustomSeekbarController;->access$000(Lcom/android/settings/accessibility/ToggleAutoclickCustomSeekbarController;I)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/settings/accessibility/ToggleAutoclickCustomSeekbarController;->access$100(Lcom/android/settings/accessibility/ToggleAutoclickCustomSeekbarController;I)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 88
    invoke-super {p0, p1}, Lcom/android/settings/theme/AsusOnSeekBarChangeListener;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 94
    invoke-super {p0, p1}, Lcom/android/settings/theme/AsusOnSeekBarChangeListener;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    return-void
.end method

.class Lcom/android/settings/PointerSpeedPreference$onPointerSpeedSeekBarChangeListener;
.super Lcom/android/settings/theme/AsusOnSeekBarChangeListener;
.source "PointerSpeedPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/PointerSpeedPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "onPointerSpeedSeekBarChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/PointerSpeedPreference;


# direct methods
.method private constructor <init>(Lcom/android/settings/PointerSpeedPreference;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/android/settings/PointerSpeedPreference$onPointerSpeedSeekBarChangeListener;->this$0:Lcom/android/settings/PointerSpeedPreference;

    invoke-direct {p0}, Lcom/android/settings/theme/AsusOnSeekBarChangeListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/PointerSpeedPreference;Lcom/android/settings/PointerSpeedPreference$1;)V
    .locals 0

    .line 106
    invoke-direct {p0, p1}, Lcom/android/settings/PointerSpeedPreference$onPointerSpeedSeekBarChangeListener;-><init>(Lcom/android/settings/PointerSpeedPreference;)V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    .line 111
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/theme/AsusOnSeekBarChangeListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 113
    iget-object p3, p0, Lcom/android/settings/PointerSpeedPreference$onPointerSpeedSeekBarChangeListener;->this$0:Lcom/android/settings/PointerSpeedPreference;

    invoke-static {p3}, Lcom/android/settings/PointerSpeedPreference;->access$200(Lcom/android/settings/PointerSpeedPreference;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 114
    iget-object p3, p0, Lcom/android/settings/PointerSpeedPreference$onPointerSpeedSeekBarChangeListener;->this$0:Lcom/android/settings/PointerSpeedPreference;

    invoke-static {p3}, Lcom/android/settings/PointerSpeedPreference;->access$300(Lcom/android/settings/PointerSpeedPreference;)Landroid/hardware/input/InputManager;

    move-result-object p3

    add-int/lit8 v0, p2, -0x7

    invoke-virtual {p3, v0}, Landroid/hardware/input/InputManager;->tryPointerSpeed(I)V

    .line 117
    :cond_0
    iget-object p3, p0, Lcom/android/settings/PointerSpeedPreference$onPointerSpeedSeekBarChangeListener;->this$0:Lcom/android/settings/PointerSpeedPreference;

    invoke-static {p3}, Lcom/android/settings/PointerSpeedPreference;->access$400(Lcom/android/settings/PointerSpeedPreference;)I

    move-result p3

    if-eq p2, p3, :cond_1

    const/4 p3, 0x4

    .line 118
    invoke-virtual {p1, p3}, Landroid/widget/SeekBar;->performHapticFeedback(I)Z

    .line 119
    iget-object p0, p0, Lcom/android/settings/PointerSpeedPreference$onPointerSpeedSeekBarChangeListener;->this$0:Lcom/android/settings/PointerSpeedPreference;

    invoke-static {p0, p2}, Lcom/android/settings/PointerSpeedPreference;->access$402(Lcom/android/settings/PointerSpeedPreference;I)I

    :cond_1
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 125
    invoke-super {p0, p1}, Lcom/android/settings/theme/AsusOnSeekBarChangeListener;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    .line 126
    iget-object p0, p0, Lcom/android/settings/PointerSpeedPreference$onPointerSpeedSeekBarChangeListener;->this$0:Lcom/android/settings/PointerSpeedPreference;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/settings/PointerSpeedPreference;->access$202(Lcom/android/settings/PointerSpeedPreference;Z)Z

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/android/settings/PointerSpeedPreference$onPointerSpeedSeekBarChangeListener;->this$0:Lcom/android/settings/PointerSpeedPreference;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/PointerSpeedPreference;->access$202(Lcom/android/settings/PointerSpeedPreference;Z)Z

    .line 132
    iget-object v0, p0, Lcom/android/settings/PointerSpeedPreference$onPointerSpeedSeekBarChangeListener;->this$0:Lcom/android/settings/PointerSpeedPreference;

    invoke-static {v0}, Lcom/android/settings/PointerSpeedPreference;->access$300(Lcom/android/settings/PointerSpeedPreference;)Landroid/hardware/input/InputManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    add-int/lit8 v1, v1, -0x7

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->tryPointerSpeed(I)V

    .line 133
    invoke-super {p0, p1}, Lcom/android/settings/theme/AsusOnSeekBarChangeListener;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    return-void
.end method

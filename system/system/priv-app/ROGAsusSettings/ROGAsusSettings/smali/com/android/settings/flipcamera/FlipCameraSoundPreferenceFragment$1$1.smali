.class Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment$1$1;
.super Ljava/lang/Object;
.source "FlipCameraSoundPreferenceFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment$1;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment$1;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment$1;I)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment$1$1;->this$1:Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment$1;

    iput p2, p0, Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment$1$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment$1$1;->this$1:Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment$1;

    iget-object v0, v0, Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment$1;->this$0:Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;

    invoke-static {v0}, Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;->access$200(Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment$1$1;->this$1:Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment$1;

    iget-object v0, v0, Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment$1;->this$0:Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;

    invoke-static {v0}, Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;->access$100(Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;)Lcom/asus/motorservice/IMotorService;

    move-result-object v0

    iget v2, p0, Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment$1$1;->val$position:I

    invoke-interface {v0, v2, v1}, Lcom/asus/motorservice/IMotorService;->playMotorSound(II)V

    .line 93
    :cond_0
    iget-object p0, p0, Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment$1$1;->this$1:Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment$1;

    iget-object p0, p0, Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment$1;->this$0:Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;

    invoke-static {p0}, Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;->access$210(Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 96
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

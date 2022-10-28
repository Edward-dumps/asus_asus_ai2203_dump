.class Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment$4;
.super Ljava/lang/Object;
.source "FlipCameraSoundPreferenceFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment$4;->this$0:Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 209
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment$4;->this$0:Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;

    invoke-static {v0}, Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;->access$210(Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;)I

    .line 210
    iget-object v0, p0, Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment$4;->this$0:Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;

    invoke-static {v0}, Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;->access$400(Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 211
    iget-object v0, p0, Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment$4;->this$0:Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;

    invoke-static {v0}, Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;->access$400(Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;)Landroid/widget/Button;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment$4;->this$0:Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$string;->asus_flip_camera_sound_preview:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 213
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlipCameraSoundPreference"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.class Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment$3;
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

    .line 193
    iput-object p1, p0, Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment$3;->this$0:Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 197
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment$3;->this$0:Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;

    invoke-static {v0}, Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;->access$100(Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;)Lcom/asus/motorservice/IMotorService;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment$3;->this$0:Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;

    invoke-static {p0}, Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;->access$000(Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;)Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lcom/asus/motorservice/IMotorService;->rotateMotorWithMode(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 200
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlipCameraSoundPreference"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

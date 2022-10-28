.class Lcom/android/settings/flipcamera/DoubleTapRetractPreferenceFragment$1;
.super Ljava/lang/Object;
.source "DoubleTapRetractPreferenceFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/flipcamera/DoubleTapRetractPreferenceFragment;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/flipcamera/DoubleTapRetractPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/flipcamera/DoubleTapRetractPreferenceFragment;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/android/settings/flipcamera/DoubleTapRetractPreferenceFragment$1;->this$0:Lcom/android/settings/flipcamera/DoubleTapRetractPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 118
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/flipcamera/DoubleTapRetractPreferenceFragment$1;->this$0:Lcom/android/settings/flipcamera/DoubleTapRetractPreferenceFragment;

    invoke-static {p0}, Lcom/android/settings/flipcamera/DoubleTapRetractPreferenceFragment;->access$000(Lcom/android/settings/flipcamera/DoubleTapRetractPreferenceFragment;)Landroid/widget/Button;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 121
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DoubleTapRetractPreferenceFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

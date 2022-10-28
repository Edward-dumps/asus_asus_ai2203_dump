.class Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment$2;
.super Ljava/lang/Object;
.source "FlipCameraSoundPreferenceFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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

    .line 120
    iput-object p1, p0, Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment$2;->this$0:Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment$2;->this$0:Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;

    invoke-static {v0}, Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;->access$300(Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;)Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment$2;->this$0:Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;

    invoke-static {p0}, Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;->access$300(Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;)Landroid/widget/ListView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 132
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

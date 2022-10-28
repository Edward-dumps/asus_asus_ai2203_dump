.class Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment$1;
.super Ljava/lang/Object;
.source "FlipCameraSoundPreferenceFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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

    .line 81
    iput-object p1, p0, Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment$1;->this$0:Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 85
    :try_start_0
    iget-object p1, p0, Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment$1;->this$0:Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;

    invoke-static {p1}, Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;->access$000(Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;)Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1, p3}, Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;->setProviderValue(Landroid/content/Context;I)V

    .line 86
    iget-object p1, p0, Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment$1;->this$0:Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;

    invoke-static {p1}, Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;->access$100(Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;)Lcom/asus/motorservice/IMotorService;

    move-result-object p1

    const/4 p4, 0x0

    invoke-interface {p1, p3, p4}, Lcom/asus/motorservice/IMotorService;->playMotorSound(II)V

    .line 87
    iget-object p1, p0, Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment$1;->this$0:Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;

    invoke-static {p1}, Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;->access$208(Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;)I

    .line 88
    new-instance p1, Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment$1$1;

    invoke-direct {p1, p0, p3}, Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment$1$1;-><init>(Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment$1;I)V

    const-wide/16 p3, 0x514

    invoke-virtual {p2, p1, p3, p4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 101
    iget-object p0, p0, Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment$1;->this$0:Lcom/android/settings/flipcamera/FlipCameraSoundPreferenceFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

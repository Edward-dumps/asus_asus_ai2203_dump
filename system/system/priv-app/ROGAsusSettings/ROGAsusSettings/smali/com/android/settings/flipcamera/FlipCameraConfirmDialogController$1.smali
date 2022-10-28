.class Lcom/android/settings/flipcamera/FlipCameraConfirmDialogController$1;
.super Ljava/lang/Object;
.source "FlipCameraConfirmDialogController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/flipcamera/FlipCameraConfirmDialogController;->prepareWarnDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/flipcamera/FlipCameraConfirmDialogController;


# direct methods
.method constructor <init>(Lcom/android/settings/flipcamera/FlipCameraConfirmDialogController;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/android/settings/flipcamera/FlipCameraConfirmDialogController$1;->this$0:Lcom/android/settings/flipcamera/FlipCameraConfirmDialogController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/android/settings/flipcamera/FlipCameraConfirmDialogController$1;->this$0:Lcom/android/settings/flipcamera/FlipCameraConfirmDialogController;

    invoke-static {p0}, Lcom/android/settings/flipcamera/FlipCameraConfirmDialogController;->access$000(Lcom/android/settings/flipcamera/FlipCameraConfirmDialogController;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "front_camera_confirm_check"

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

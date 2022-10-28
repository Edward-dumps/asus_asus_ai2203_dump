.class Lcom/android/settings/flipcamera/FlipCameraConfirmDialogController$3;
.super Ljava/lang/Object;
.source "FlipCameraConfirmDialogController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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

    .line 66
    iput-object p1, p0, Lcom/android/settings/flipcamera/FlipCameraConfirmDialogController$3;->this$0:Lcom/android/settings/flipcamera/FlipCameraConfirmDialogController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/settings/flipcamera/FlipCameraConfirmDialogController$3;->this$0:Lcom/android/settings/flipcamera/FlipCameraConfirmDialogController;

    invoke-static {p0}, Lcom/android/settings/flipcamera/FlipCameraConfirmDialogController;->access$100(Lcom/android/settings/flipcamera/FlipCameraConfirmDialogController;)V

    return-void
.end method

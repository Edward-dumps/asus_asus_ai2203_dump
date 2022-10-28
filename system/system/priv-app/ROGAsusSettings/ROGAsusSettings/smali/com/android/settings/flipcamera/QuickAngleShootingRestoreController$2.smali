.class Lcom/android/settings/flipcamera/QuickAngleShootingRestoreController$2;
.super Ljava/lang/Object;
.source "QuickAngleShootingRestoreController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/flipcamera/QuickAngleShootingRestoreController;->prepareWarnDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/flipcamera/QuickAngleShootingRestoreController;


# direct methods
.method constructor <init>(Lcom/android/settings/flipcamera/QuickAngleShootingRestoreController;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/android/settings/flipcamera/QuickAngleShootingRestoreController$2;->this$0:Lcom/android/settings/flipcamera/QuickAngleShootingRestoreController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 76
    iget-object p1, p0, Lcom/android/settings/flipcamera/QuickAngleShootingRestoreController$2;->this$0:Lcom/android/settings/flipcamera/QuickAngleShootingRestoreController;

    invoke-static {p1}, Lcom/android/settings/flipcamera/QuickAngleShootingRestoreController;->access$100(Lcom/android/settings/flipcamera/QuickAngleShootingRestoreController;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "asus_free_angle_quick_angle_shooting_1"

    const/16 v0, 0x87

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 77
    iget-object p1, p0, Lcom/android/settings/flipcamera/QuickAngleShootingRestoreController$2;->this$0:Lcom/android/settings/flipcamera/QuickAngleShootingRestoreController;

    invoke-static {p1}, Lcom/android/settings/flipcamera/QuickAngleShootingRestoreController;->access$100(Lcom/android/settings/flipcamera/QuickAngleShootingRestoreController;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "asus_free_angle_quick_angle_shooting_2"

    const/16 v0, 0x5a

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 78
    iget-object p0, p0, Lcom/android/settings/flipcamera/QuickAngleShootingRestoreController$2;->this$0:Lcom/android/settings/flipcamera/QuickAngleShootingRestoreController;

    invoke-static {p0}, Lcom/android/settings/flipcamera/QuickAngleShootingRestoreController;->access$100(Lcom/android/settings/flipcamera/QuickAngleShootingRestoreController;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "asus_free_angle_quick_angle_shooting_3"

    const/16 p2, 0x2d

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

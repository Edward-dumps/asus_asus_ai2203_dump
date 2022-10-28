.class Lcom/android/settings/flipcamera/QuickAngleShootingRestoreController$1;
.super Ljava/lang/Object;
.source "QuickAngleShootingRestoreController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/flipcamera/QuickAngleShootingRestoreController;
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

    .line 62
    iput-object p1, p0, Lcom/android/settings/flipcamera/QuickAngleShootingRestoreController$1;->this$0:Lcom/android/settings/flipcamera/QuickAngleShootingRestoreController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/android/settings/flipcamera/QuickAngleShootingRestoreController$1;->this$0:Lcom/android/settings/flipcamera/QuickAngleShootingRestoreController;

    invoke-static {p0}, Lcom/android/settings/flipcamera/QuickAngleShootingRestoreController;->access$000(Lcom/android/settings/flipcamera/QuickAngleShootingRestoreController;)Landroid/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    const/4 p0, 0x1

    return p0
.end method

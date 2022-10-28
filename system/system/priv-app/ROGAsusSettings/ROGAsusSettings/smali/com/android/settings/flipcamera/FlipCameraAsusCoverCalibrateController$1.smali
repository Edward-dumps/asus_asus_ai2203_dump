.class Lcom/android/settings/flipcamera/FlipCameraAsusCoverCalibrateController$1;
.super Ljava/lang/Object;
.source "FlipCameraAsusCoverCalibrateController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/flipcamera/FlipCameraAsusCoverCalibrateController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/flipcamera/FlipCameraAsusCoverCalibrateController;


# direct methods
.method constructor <init>(Lcom/android/settings/flipcamera/FlipCameraAsusCoverCalibrateController;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/android/settings/flipcamera/FlipCameraAsusCoverCalibrateController$1;->this$0:Lcom/android/settings/flipcamera/FlipCameraAsusCoverCalibrateController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/settings/flipcamera/FlipCameraAsusCoverCalibrateController$1;->this$0:Lcom/android/settings/flipcamera/FlipCameraAsusCoverCalibrateController;

    invoke-static {p0}, Lcom/android/settings/flipcamera/FlipCameraAsusCoverCalibrateController;->access$000(Lcom/android/settings/flipcamera/FlipCameraAsusCoverCalibrateController;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/flipcamera/FlipCameraAsusCoverCalibrateController;->startCalibrateSettings(Landroid/content/Context;)V

    const/4 p0, 0x1

    return p0
.end method

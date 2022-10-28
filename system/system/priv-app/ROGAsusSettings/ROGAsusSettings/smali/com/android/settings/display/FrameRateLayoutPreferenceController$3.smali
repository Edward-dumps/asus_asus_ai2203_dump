.class Lcom/android/settings/display/FrameRateLayoutPreferenceController$3;
.super Landroid/database/ContentObserver;
.source "FrameRateLayoutPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/display/FrameRateLayoutPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/display/FrameRateLayoutPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/display/FrameRateLayoutPreferenceController;Landroid/os/Handler;)V
    .locals 0

    .line 242
    iput-object p1, p0, Lcom/android/settings/display/FrameRateLayoutPreferenceController$3;->this$0:Lcom/android/settings/display/FrameRateLayoutPreferenceController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    const-string p1, "FrameRatePreference"

    const-string v0, "OnChange"

    .line 245
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object p1, p0, Lcom/android/settings/display/FrameRateLayoutPreferenceController$3;->this$0:Lcom/android/settings/display/FrameRateLayoutPreferenceController;

    invoke-static {p1}, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->access$400(Lcom/android/settings/display/FrameRateLayoutPreferenceController;)Lcom/asus/hardwarestub/centralcontrol/IFPSCentralControl;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/settings/display/FrameRateLayoutPreferenceController$3;->this$0:Lcom/android/settings/display/FrameRateLayoutPreferenceController;

    invoke-static {p0}, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->access$500(Lcom/android/settings/display/FrameRateLayoutPreferenceController;)V

    :cond_0
    return-void
.end method

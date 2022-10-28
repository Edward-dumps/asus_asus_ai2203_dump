.class Lcom/android/settings/display/ThreeFingerScreenshotGamingPreferenceController$1;
.super Landroid/database/ContentObserver;
.source "ThreeFingerScreenshotGamingPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/display/ThreeFingerScreenshotGamingPreferenceController;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/display/ThreeFingerScreenshotGamingPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/display/ThreeFingerScreenshotGamingPreferenceController;Landroid/os/Handler;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/android/settings/display/ThreeFingerScreenshotGamingPreferenceController$1;->this$0:Lcom/android/settings/display/ThreeFingerScreenshotGamingPreferenceController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 110
    iget-object p1, p0, Lcom/android/settings/display/ThreeFingerScreenshotGamingPreferenceController$1;->this$0:Lcom/android/settings/display/ThreeFingerScreenshotGamingPreferenceController;

    invoke-static {p1}, Lcom/android/settings/display/ThreeFingerScreenshotGamingPreferenceController;->access$000(Lcom/android/settings/display/ThreeFingerScreenshotGamingPreferenceController;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 111
    iget-object p0, p0, Lcom/android/settings/display/ThreeFingerScreenshotGamingPreferenceController$1;->this$0:Lcom/android/settings/display/ThreeFingerScreenshotGamingPreferenceController;

    invoke-static {p0}, Lcom/android/settings/display/ThreeFingerScreenshotGamingPreferenceController;->access$000(Lcom/android/settings/display/ThreeFingerScreenshotGamingPreferenceController;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/display/ThreeFingerScreenshotGamingPreferenceController;->updateState(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method

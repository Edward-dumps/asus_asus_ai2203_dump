.class Lcom/android/settings/display/FrameRatePreferenceController$4;
.super Landroid/content/BroadcastReceiver;
.source "FrameRatePreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/display/FrameRatePreferenceController;->onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/display/FrameRatePreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/display/FrameRatePreferenceController;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/android/settings/display/FrameRatePreferenceController$4;->this$0:Lcom/android/settings/display/FrameRatePreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 225
    iget-object p1, p0, Lcom/android/settings/display/FrameRatePreferenceController$4;->this$0:Lcom/android/settings/display/FrameRatePreferenceController;

    invoke-static {p1}, Lcom/android/settings/display/FrameRatePreferenceController;->access$200(Lcom/android/settings/display/FrameRatePreferenceController;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 226
    iget-object p0, p0, Lcom/android/settings/display/FrameRatePreferenceController$4;->this$0:Lcom/android/settings/display/FrameRatePreferenceController;

    invoke-static {p0}, Lcom/android/settings/display/FrameRatePreferenceController;->access$100(Lcom/android/settings/display/FrameRatePreferenceController;)V

    :cond_0
    return-void
.end method

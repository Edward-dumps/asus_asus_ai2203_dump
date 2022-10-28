.class Lcom/android/settings/display/FrameRatePreferenceController$1$1;
.super Ljava/lang/Object;
.source "FrameRatePreferenceController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/display/FrameRatePreferenceController$1;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/display/FrameRatePreferenceController$1;


# direct methods
.method constructor <init>(Lcom/android/settings/display/FrameRatePreferenceController$1;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/android/settings/display/FrameRatePreferenceController$1$1;->this$1:Lcom/android/settings/display/FrameRatePreferenceController$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/android/settings/display/FrameRatePreferenceController$1$1;->this$1:Lcom/android/settings/display/FrameRatePreferenceController$1;

    iget-object p0, p0, Lcom/android/settings/display/FrameRatePreferenceController$1;->this$0:Lcom/android/settings/display/FrameRatePreferenceController;

    invoke-static {p0}, Lcom/android/settings/display/FrameRatePreferenceController;->access$100(Lcom/android/settings/display/FrameRatePreferenceController;)V

    return-void
.end method

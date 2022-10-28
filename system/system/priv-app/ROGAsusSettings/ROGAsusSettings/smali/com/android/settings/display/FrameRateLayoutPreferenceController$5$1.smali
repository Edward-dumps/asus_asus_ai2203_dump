.class Lcom/android/settings/display/FrameRateLayoutPreferenceController$5$1;
.super Ljava/lang/Object;
.source "FrameRateLayoutPreferenceController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/display/FrameRateLayoutPreferenceController$5;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/display/FrameRateLayoutPreferenceController$5;


# direct methods
.method constructor <init>(Lcom/android/settings/display/FrameRateLayoutPreferenceController$5;)V
    .locals 0

    .line 329
    iput-object p1, p0, Lcom/android/settings/display/FrameRateLayoutPreferenceController$5$1;->this$1:Lcom/android/settings/display/FrameRateLayoutPreferenceController$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 332
    iget-object p0, p0, Lcom/android/settings/display/FrameRateLayoutPreferenceController$5$1;->this$1:Lcom/android/settings/display/FrameRateLayoutPreferenceController$5;

    iget-object p0, p0, Lcom/android/settings/display/FrameRateLayoutPreferenceController$5;->this$0:Lcom/android/settings/display/FrameRateLayoutPreferenceController;

    invoke-static {p0}, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->access$500(Lcom/android/settings/display/FrameRateLayoutPreferenceController;)V

    return-void
.end method

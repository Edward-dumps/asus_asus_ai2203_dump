.class Lcom/android/settings/display/FrameRatePreferenceController$2;
.super Landroid/database/ContentObserver;
.source "FrameRatePreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/display/FrameRatePreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/display/FrameRatePreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/display/FrameRatePreferenceController;Landroid/os/Handler;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/android/settings/display/FrameRatePreferenceController$2;->this$0:Lcom/android/settings/display/FrameRatePreferenceController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 180
    iget-object p0, p0, Lcom/android/settings/display/FrameRatePreferenceController$2;->this$0:Lcom/android/settings/display/FrameRatePreferenceController;

    invoke-static {p0}, Lcom/android/settings/display/FrameRatePreferenceController;->access$100(Lcom/android/settings/display/FrameRatePreferenceController;)V

    return-void
.end method

.class Lcom/android/settings/display/AsusDCDimmingPreferenceController$2$1;
.super Ljava/lang/Object;
.source "AsusDCDimmingPreferenceController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/display/AsusDCDimmingPreferenceController$2;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/display/AsusDCDimmingPreferenceController$2;


# direct methods
.method constructor <init>(Lcom/android/settings/display/AsusDCDimmingPreferenceController$2;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/android/settings/display/AsusDCDimmingPreferenceController$2$1;->this$1:Lcom/android/settings/display/AsusDCDimmingPreferenceController$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/android/settings/display/AsusDCDimmingPreferenceController$2$1;->this$1:Lcom/android/settings/display/AsusDCDimmingPreferenceController$2;

    iget-object p0, p0, Lcom/android/settings/display/AsusDCDimmingPreferenceController$2;->this$0:Lcom/android/settings/display/AsusDCDimmingPreferenceController;

    invoke-static {p0}, Lcom/android/settings/display/AsusDCDimmingPreferenceController;->access$000(Lcom/android/settings/display/AsusDCDimmingPreferenceController;)V

    return-void
.end method
